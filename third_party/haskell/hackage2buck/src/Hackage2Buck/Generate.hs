-- | The generate half: freeze + Hackage index + cabal's sdist cache -> BUCK.
-- Touches no network; a missing sdist means @solve@ has not run.
module Hackage2Buck.Generate
  ( generate
  ) where

import Codec.Archive.Tar qualified as Tar
import Codec.Compression.GZip qualified as GZip
import Control.Monad (unless)
import Data.ByteString.Lazy qualified as BL
import Data.Either (partitionEithers)
import Data.List (intercalate, nub, sort, stripPrefix)
import Data.Map.Strict qualified as Map
import Data.Maybe (fromMaybe, mapMaybe)
import Data.Set (Set)
import Data.Set qualified as Set
import Distribution.Compiler (AbiTag (NoAbiTag), CompilerFlavor (GHC), CompilerId (..), unknownCompilerInfo)
import Distribution.Hackage.DB.Parsed (HackageDB, VersionData (..), readTarball)
import Distribution.Hackage.DB.Path (hackageTarball, hackageTarballDir)
import Distribution.ModuleName (ModuleName, toFilePath)
import Distribution.Package (packageName)
import Distribution.PackageDescription
import Distribution.PackageDescription.Configuration (finalizePD)
import Distribution.Pretty (prettyShow)
import Distribution.Types.ComponentRequestedSpec (ComponentRequestedSpec (..))
import Distribution.Types.Version (Version)
import Distribution.Utils.Path (getSymbolicPath)
import Distribution.Version (withinRange)
import Hackage2Buck.Boot
import Hackage2Buck.Freeze
import Hackage2Buck.Platforms
import Hackage2Buck.Starlark
import System.Directory (doesFileExist)
import System.Exit (exitFailure)
import System.FilePath (normalise, (<.>), (</>))
import System.IO (hPutStrLn, stderr)

-- | What one platform's finalized library component builds; equal across
-- platforms for every package we support so far.
data PlatBuild = PlatBuild
  { pbHsSourceDirs :: [FilePath]
  , pbSrcs :: [FilePath]
  , pbDeps :: [PackageName]
  , pbCompilerFlags :: [String]
  }
  deriving (Eq, Show)

data Target = Target
  { tName :: PackageName
  , tVersion :: Version
  , tSha256 :: String
  , tBuild :: PlatBuild
  }

-- | Writes the BUCK file at @out@, or reports every package it cannot yet
-- express and fails.
generate :: Boot -> Freeze -> Set PackageName -> FilePath -> IO ()
generate boot freeze public out = do
  let boots = bootNames boot
      hackage = Map.withoutKeys (freezeVersions freeze) boots
  db <- readTarball Nothing =<< hackageTarball
  sdists <- hackageTarballDir
  results <- traverse (uncurry (target boot freeze db sdists)) (Map.toList hackage)
  case partitionEithers results of
    ([], targets) -> writeFile out (render boots public targets)
    (errs, _) -> do
      mapM_ (hPutStrLn stderr) errs
      exitFailure

target :: Boot -> Freeze -> HackageDB -> FilePath -> PackageName -> Version -> IO (Either String Target)
target boot freeze db sdists name version = case Map.lookup name db >>= Map.lookup version of
  Nothing -> pure (failed ["not in the Hackage index; run `cabal update` and re-solve"])
  Just vd -> case Map.lookup "sha256" (tarballHashes vd) of
    Nothing -> pure (failed ["the index has no sha256 for its sdist"])
    Just sha256 -> do
      let sdist = sdists </> pkg </> prettyShow version </> pkgId <.> "tar.gz"
      present <- doesFileExist sdist
      if not present
        then pure (failed ["missing " <> sdist <> "; run `hackage2buck solve`"])
        else do
          files <- sdistFiles pkgId sdist
          pure $ either failed (Right . Target name version sha256) $ do
            builds <- traverse (platBuild boot freeze files (cabalFile vd)) allPlats
            case nub builds of
              [b] -> Right b
              _ -> Left ["platforms disagree, which is not supported yet: " <> show (zip allPlats builds)]
  where
    pkg = unPackageName name
    pkgId = pkg <> "-" <> prettyShow version
    failed problems = Left (unlines (("error: " <> pkgId <> ":") : map ("  " <>) problems))

-- | Archive members relative to the sdist root (without its @<pkg>-<ver>/@).
sdistFiles :: String -> FilePath -> IO (Set FilePath)
sdistFiles pkgId path = do
  entries <- Tar.read . GZip.decompress <$> BL.readFile path
  pure . Set.fromList . mapMaybe (stripPrefix (pkgId <> "/")) $
    Tar.foldEntries ((:) . Tar.entryPath) [] (error . ((path <> ": ") <>) . show) entries

platBuild :: Boot -> Freeze -> Set FilePath -> GenericPackageDescription -> Plat -> Either [String] PlatBuild
platBuild boot freeze files gpd plat = do
  (pd, _flags) <-
    either (\missing -> Left ["on " <> platKey plat <> " needs " <> intercalate ", " (map prettyShow missing) <> ", which the solve did not pick; add it to `extra` in packages.json"]) Right $
      finalizePD manualFlags (ComponentRequestedSpec False False) satisfiable (platCabal plat) compiler [] gpd
  lib <- maybe (Left ["has no library component"]) Right (library pd)
  let bi = libBuildInfo lib
      dirs = case map getSymbolicPath (hsSourceDirs bi) of
        [] -> ["."]
        ds -> ds
      deps = filter (/= self) (nub (sort (map depPkgName (targetBuildDepends bi))))
  unsupported pd lib
  srcs <- resolveModules files dirs (exposedModules lib <> otherModules bi)
  pure
    PlatBuild
      { pbHsSourceDirs = dirs
      , pbSrcs = srcs
      , pbDeps = deps
      , pbCompilerFlags =
          maybe [] (\l -> ["-X" <> prettyShow l]) (defaultLanguage bi)
            <> map (("-X" <>) . prettyShow) (defaultExtensions bi)
            <> map ("-optP" <>) (cppOptions bi)
            <> hcOptions GHC bi
      }
  where
    self = packageName gpd
    pinned = Map.union (freezeVersions freeze) (Map.findWithDefault mempty plat (bootPackages boot))
    satisfiable :: Dependency -> Bool
    satisfiable d = maybe False (`withinRange` depVerRange d) (Map.lookup (depPkgName d) pinned)
    compiler = unknownCompilerInfo (CompilerId GHC (bootGhcVersion boot)) NoAbiTag
    -- Automatic flags are re-resolved per platform; manual ones are choices.
    manualFlags =
      let manual = Set.fromList [flagName f | f <- genPackageFlags gpd, flagManual f]
          frozen = fromMaybe mempty (Map.lookup self (freezeFlags freeze))
       in mkFlagAssignment [kv | kv@(f, _) <- unFlagAssignment frozen, f `Set.member` manual]

-- | Everything a Hackage package can ask of its build that the macro cannot
-- yet do. Erroring beats emitting a target that silently builds wrong.
unsupported :: PackageDescription -> Library -> Either [String] ()
unsupported pd lib = unless (null problems) (Left problems)
  where
    bi = libBuildInfo lib
    problems =
      [ "build-type " <> prettyShow (buildType pd) <> " is unsupported"
      | buildType pd /= Simple
      ]
        <> [ field <> " is unsupported" | (field, True) <- checks ]
        <> [ "internal sub-libraries are unsupported" | packageName pd `elem` map depPkgName (targetBuildDepends bi) ]
    checks =
      [ ("autogen-modules (Paths_ etc.)", not (null (autogenModules bi)))
      , ("c-sources", not (null (cSources bi)))
      , ("cxx-sources", not (null (cxxSources bi)))
      , ("asm-sources", not (null (asmSources bi)))
      , ("cmm-sources", not (null (cmmSources bi)))
      , ("include-dirs", not (null (includeDirs bi)))
      , ("includes/install-includes", not (null (includes bi) && null (installIncludes bi)))
      , ("extra-libraries", not (null (extraLibs bi)))
      , ("pkgconfig-depends", not (null (pkgconfigDepends bi)))
      , ("build-tool-depends", not (null (buildToolDepends bi) && null (buildTools bi)))
      , ("signatures (backpack)", not (null (signatures lib)))
      ]

-- | Cabal's search: the first hs-source-dir holding the module wins. A
-- @.hs-boot@ sibling comes along with it.
resolveModules :: Set FilePath -> [FilePath] -> [ModuleName] -> Either [String] [FilePath]
resolveModules files dirs modules = case partitionEithers (map resolve modules) of
  ([], found) -> Right (sort (concat found))
  (missing, _) -> Left missing
  where
    resolve m =
      case [p | d <- dirs, ext <- ["hs", "lhs", "hsc"], let p = normalise (d </> toFilePath m <.> ext), p `Set.member` files] of
        p : _
          | ext' p == "hsc" -> Left ("module " <> prettyShow m <> " is .hsc, which is unsupported")
          | otherwise -> Right (p : [b | let b = p <> "-boot", b `Set.member` files])
        [] -> Left ("module " <> prettyShow m <> " not found under " <> show dirs <> " (generated by a build tool?)")
    ext' = reverse . takeWhile (/= '.') . reverse

render :: Set PackageName -> Set PackageName -> [Target] -> String
render boots public targets =
  unlines
    [ "# @generated by //third_party/haskell/hackage2buck; do not edit."
    , "load(\"//third_party/haskell:defs.bzl\", \"boot_package\", \"third_party_haskell_library\")"
    ]
    <> concatMap (("\n" <>) . renderCall) (bootCalls <> map libCall targets)
  where
    used = Set.unions [Set.fromList (pbDeps (tBuild t)) | t <- targets]
    bootCalls = [Call "boot_package" [("name", Str (unPackageName b))] | b <- Set.toList (Set.intersection boots used)]
    libCall t =
      let b = tBuild t
       in Call "third_party_haskell_library" $
            [ ("name", Str (unPackageName (tName t)))
            , ("version", Str (prettyShow (tVersion t)))
            , ("sha256", Str (tSha256 t))
            ]
              <> [("hs_source_dirs", strs (pbHsSourceDirs b)) | pbHsSourceDirs b /= ["."]]
              <> [ ("srcs", strs (pbSrcs b))
                 , ("deps", strs [":" <> unPackageName d | d <- pbDeps b])
                 ]
              <> [("compiler_flags", strs (pbCompilerFlags b)) | not (null (pbCompilerFlags b))]
              <> [("public", Bool True) | tName t `Set.member` public]
    strs = List . map Str

