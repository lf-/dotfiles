package kernel

import (
	"database/sql"
	"path/filepath"

	"github.com/jingkaihe/matchlock/pkg/storedb"
)

const kernelModule = "kernel"

func kernelDBPath(cacheDir string) string {
	return filepath.Join(cacheDir, "kernels", "metadata.db")
}

func openKernelDB(cacheDir string) (*sql.DB, error) {
	return storedb.Open(storedb.OpenOptions{
		Path:       kernelDBPath(cacheDir),
		Module:     kernelModule,
		Migrations: kernelMigrations(),
	})
}

func kernelMigrations() []storedb.Migration {
	return []storedb.Migration{
		{
			Version: 1,
			Name:    "create_cached_kernels",
			SQL: `
CREATE TABLE IF NOT EXISTS cached_kernels (
  cache_key TEXT NOT NULL,
  kind TEXT NOT NULL,
  version TEXT NOT NULL DEFAULT '',
  source_ref TEXT NOT NULL DEFAULT '',
  source_digest TEXT NOT NULL DEFAULT '',
  arch TEXT NOT NULL,
  path TEXT NOT NULL,
  size INTEGER NOT NULL DEFAULT 0,
  created_at TEXT NOT NULL,
  updated_at TEXT NOT NULL,
  PRIMARY KEY (cache_key, arch)
);
CREATE INDEX IF NOT EXISTS idx_cached_kernels_kind_updated ON cached_kernels(kind, updated_at DESC);
CREATE INDEX IF NOT EXISTS idx_cached_kernels_version ON cached_kernels(version);
CREATE INDEX IF NOT EXISTS idx_cached_kernels_source_ref ON cached_kernels(source_ref);
`,
		},
	}
}
