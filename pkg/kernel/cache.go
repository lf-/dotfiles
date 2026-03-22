package kernel

import (
	"os"
	"path/filepath"
	"sort"
	"time"

	"github.com/jingkaihe/matchlock/internal/errx"
)

type CacheKind string

const (
	CacheKindVersion CacheKind = "version"
	CacheKindRef     CacheKind = "ref"
)

type CachedKernel struct {
	Kind         CacheKind    `json:"kind"`
	Version      string       `json:"version,omitempty"`
	SourceRef    string       `json:"source_ref,omitempty"`
	SourceDigest string       `json:"source_digest,omitempty"`
	Arch         Architecture `json:"arch"`
	Path         string       `json:"path"`
	Size         int64        `json:"size"`
	CreatedAt    time.Time    `json:"created_at"`
	UpdatedAt    time.Time    `json:"updated_at"`
}

type cacheRecord struct {
	Kind         CacheKind
	Version      string
	SourceRef    string
	SourceDigest string
	Arch         Architecture
	Path         string
	Size         int64
}

func (m *Manager) metadataErr() error {
	if m.initErr != nil {
		return errx.Wrap(ErrKernelMetadataInit, m.initErr)
	}
	if m.db == nil {
		return ErrKernelMetadataInit
	}
	return nil
}

func (m *Manager) List() ([]CachedKernel, error) {
	if err := m.metadataErr(); err != nil {
		return nil, err
	}

	rows, err := m.db.Query(`
SELECT kind, version, source_ref, source_digest, arch, path, size, created_at, updated_at
  FROM cached_kernels
 ORDER BY updated_at DESC, version ASC, source_ref ASC, arch ASC`)
	if err != nil {
		return nil, errx.Wrap(ErrListKernelCache, err)
	}
	defer rows.Close()

	var kernels []CachedKernel
	for rows.Next() {
		entry, err := scanCachedKernel(rows)
		if err != nil {
			return nil, errx.Wrap(ErrReadKernelMetadata, err)
		}
		if _, err := os.Stat(entry.Path); err != nil {
			if os.IsNotExist(err) {
				if err := m.deleteRecord(cacheRecord{Kind: entry.Kind, Version: entry.Version, SourceRef: entry.SourceRef, Arch: entry.Arch}); err != nil {
					return nil, err
				}
				continue
			}
			return nil, errx.Wrap(ErrListKernelCache, err)
		}
		kernels = append(kernels, entry)
	}
	if err := rows.Err(); err != nil {
		return nil, errx.Wrap(ErrListKernelCache, err)
	}

	sort.SliceStable(kernels, func(i, j int) bool {
		if kernels[i].UpdatedAt.Equal(kernels[j].UpdatedAt) {
			if kernels[i].SourceRef == kernels[j].SourceRef {
				if kernels[i].Version == kernels[j].Version {
					return kernels[i].Arch < kernels[j].Arch
				}
				return kernels[i].Version < kernels[j].Version
			}
			return kernels[i].SourceRef < kernels[j].SourceRef
		}
		return kernels[i].UpdatedAt.After(kernels[j].UpdatedAt)
	})

	return kernels, nil
}

func (m *Manager) RemoveVersion(version string) error {
	if version == "" || filepath.Base(version) != version {
		return errx.With(ErrRemoveKernel, ": invalid kernel version %q", version)
	}

	versionDir := filepath.Join(m.cacheDir, "kernels", version)
	if _, err := os.Stat(versionDir); err != nil {
		if os.IsNotExist(err) {
			return errx.With(ErrKernelCacheNotFound, ": %s", version)
		}
		return errx.Wrap(ErrRemoveKernel, err)
	}

	if err := os.RemoveAll(versionDir); err != nil {
		return errx.Wrap(ErrRemoveKernel, err)
	}

	if m.db != nil {
		if _, err := m.db.Exec(`DELETE FROM cached_kernels WHERE kind = ? AND version = ?`, string(CacheKindVersion), version); err != nil {
			return errx.Wrap(ErrRemoveKernel, err)
		}
	}

	return nil
}

func (m *Manager) RemoveRef(ref string) error {
	if err := m.metadataErr(); err != nil {
		return err
	}

	rows, err := m.db.Query(`SELECT path FROM cached_kernels WHERE kind = ? AND source_ref = ?`, string(CacheKindRef), ref)
	if err != nil {
		return errx.Wrap(ErrRemoveKernel, err)
	}
	defer rows.Close()

	seenDirs := map[string]struct{}{}
	for rows.Next() {
		var path string
		if err := rows.Scan(&path); err != nil {
			return errx.Wrap(ErrReadKernelMetadata, err)
		}
		seenDirs[filepath.Dir(path)] = struct{}{}
	}
	if err := rows.Err(); err != nil {
		return errx.Wrap(ErrRemoveKernel, err)
	}
	if len(seenDirs) == 0 {
		return errx.With(ErrKernelCacheNotFound, ": %s", ref)
	}

	for dir := range seenDirs {
		if err := os.RemoveAll(dir); err != nil {
			return errx.Wrap(ErrRemoveKernel, err)
		}
	}

	if _, err := m.db.Exec(`DELETE FROM cached_kernels WHERE kind = ? AND source_ref = ?`, string(CacheKindRef), ref); err != nil {
		return errx.Wrap(ErrRemoveKernel, err)
	}

	return nil
}

func (m *Manager) RemoveAll() error {
	if m.db != nil {
		_ = m.db.Close()
		m.db = nil
	}
	if err := os.RemoveAll(filepath.Join(m.cacheDir, "kernels")); err != nil {
		return errx.Wrap(ErrRemoveKernel, err)
	}
	if err := m.reopenDB(); err != nil {
		return err
	}
	return nil
}

func (m *Manager) reopenDB() error {
	db, err := openKernelDB(m.cacheDir)
	m.db = db
	m.initErr = err
	if err != nil {
		return errx.Wrap(ErrKernelMetadataInit, err)
	}
	return nil
}

func (m *Manager) recordVersionCache(version string, arch Architecture, path string, size int64, sourceRef, sourceDigest string) {
	_ = m.upsertRecord(cacheRecord{
		Kind:         CacheKindVersion,
		Version:      version,
		SourceRef:    sourceRef,
		SourceDigest: sourceDigest,
		Arch:         arch,
		Path:         path,
		Size:         size,
	})
}

func (m *Manager) recordRefCache(ref string, arch Architecture, path string, size int64, sourceDigest string) {
	_ = m.upsertRecord(cacheRecord{
		Kind:         CacheKindRef,
		SourceRef:    ref,
		SourceDigest: sourceDigest,
		Arch:         arch,
		Path:         path,
		Size:         size,
	})
}

func (m *Manager) upsertRecord(record cacheRecord) error {
	if m.db == nil || m.initErr != nil {
		return nil
	}

	cacheKey := record.SourceRef
	if record.Kind == CacheKindVersion {
		cacheKey = record.Version
	}
	if cacheKey == "" {
		return nil
	}

	now := time.Now().UTC().Format(time.RFC3339Nano)
	_, err := m.db.Exec(`
INSERT INTO cached_kernels(cache_key, kind, version, source_ref, source_digest, arch, path, size, created_at, updated_at)
VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
ON CONFLICT(cache_key, arch) DO UPDATE SET
  version = excluded.version,
  source_ref = CASE WHEN excluded.source_ref <> '' THEN excluded.source_ref ELSE cached_kernels.source_ref END,
  source_digest = CASE WHEN excluded.source_digest <> '' THEN excluded.source_digest ELSE cached_kernels.source_digest END,
  path = excluded.path,
  size = CASE WHEN excluded.size > 0 THEN excluded.size ELSE cached_kernels.size END,
  updated_at = excluded.updated_at`,
		cacheKey,
		string(record.Kind),
		record.Version,
		record.SourceRef,
		record.SourceDigest,
		string(record.Arch),
		record.Path,
		record.Size,
		now,
		now,
	)
	if err != nil {
		return errx.Wrap(ErrWriteKernelMetadata, err)
	}
	return nil
}

func (m *Manager) deleteRecord(record cacheRecord) error {
	if m.db == nil {
		return nil
	}

	cacheKey := record.SourceRef
	if record.Kind == CacheKindVersion {
		cacheKey = record.Version
	}
	if _, err := m.db.Exec(`DELETE FROM cached_kernels WHERE cache_key = ? AND arch = ?`, cacheKey, string(record.Arch)); err != nil {
		return errx.Wrap(ErrWriteKernelMetadata, err)
	}
	return nil
}

func scanCachedKernel(scanner interface {
	Scan(dest ...interface{}) error
}) (CachedKernel, error) {
	var entry CachedKernel
	var createdAtText string
	var updatedAtText string
	if err := scanner.Scan(&entry.Kind, &entry.Version, &entry.SourceRef, &entry.SourceDigest, &entry.Arch, &entry.Path, &entry.Size, &createdAtText, &updatedAtText); err != nil {
		return CachedKernel{}, err
	}

	var err error
	entry.CreatedAt, err = parseCachedKernelTime(createdAtText)
	if err != nil {
		return CachedKernel{}, err
	}
	entry.UpdatedAt, err = parseCachedKernelTime(updatedAtText)
	if err != nil {
		return CachedKernel{}, err
	}
	return entry, nil
}

func parseCachedKernelTime(value string) (time.Time, error) {
	if value == "" {
		return time.Time{}, nil
	}
	ts, err := time.Parse(time.RFC3339Nano, value)
	if err == nil {
		return ts, nil
	}
	return time.Parse(time.RFC3339, value)
}
