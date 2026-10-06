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
import Data.List (intercalate, isSuffixOf, nub, sort, sortOn, stripPrefix)
import Data.Ord (Down (..))
import Data.Map.Strict (Map)
import Data.Map.Strict qualified as Map
import Data.Maybe (fromMaybe, isJust, mapMaybe)
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
import Hackage2Buck.Boot
import Hackage2Buck.Config
import Hackage2Buck.Fixups
import Hackage2Buck.Freeze
import Hackage2Buck.Platforms
import Hackage2Buck.Starlark
import Hackage2Buck.Target
import System.Directory (doesFileExist)
import System.Exit (exitFailure)
import System.FilePath (normalise, (<.>), (</>))
import System.IO (hPutStrLn, stderr)

-- | Writes the BUCK file at @out@, or reports every package it cannot yet
-- express and fails.
generate :: Boot -> Freeze -> Set PackageName -> FilePath -> IO ()
generate boot freeze public out = do
  db <- readTarball Nothing =<< hackageTarball
  let boots = bootNames boot
      -- Executable-only packages are in the freeze as build tools.
      hasLibrary name version = maybe True (isJust . condLibrary . cabalFile) (Map.lookup name db >>= Map.lookup version)
      hackage = Map.filterWithKey hasLibrary (Map.withoutKeys (freezeVersions freeze) boots)
  sdists <- hackageTarballDir
  mapM_
    (\p -> hPutStrLn stderr ("warning: fixup for " <> unPackageName p <> ", which the solve did not pick"))
    (Set.toList (fixedPackages fixups `Set.difference` Map.keysSet hackage))
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
          gpd = cabalFile vd
      present <- doesFileExist sdist
      if not present
        then pure (failed ["missing " <> sdist <> "; run `hackage2buck solve`"])
        else do
          files <- sdistFiles pkgId sdist
          pure $ either failed Right $ do
            builds <- traverse (platBuild boot freeze files gpd) allPlats
            checkBuildType . applyFixups fixups $
              Target
                { tName = name
                , tVersion = version
                , tSha256 = sha256
                , tBuildType = buildType (packageDescription gpd)
                , tCxxDeps = []
                , tByPlat = Map.fromList (zip allPlats builds)
                }
  where
    pkg = unPackageName name
    pkgId = pkg <> "-" <> prettyShow version
    failed problems = Left (unlines (("error: " <> pkgId <> ":") : map ("  " <>) problems))
    checkBuildType t
      | tBuildType t == Simple = Right t
      | otherwise = Left ["build-type " <> prettyShow (tBuildType t) <> " is unsupported; a fixup can stand in for it (see Config.hs)"]

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
      includeDirs' = map (normalise . getSymbolicPath) (includeDirs bi)
  unsupported pd lib
  unless (all (`notElem` [".", "/"]) (map (take 1) includeDirs' <> includeDirs')) $
    Left ["include-dirs " <> show includeDirs' <> " name the package root or an absolute path, which is unsupported"]
  (srcs, hscSrcs) <- resolveModules files dirs (exposedModules lib <> otherModules bi)
  pure
    PlatBuild
      { pbHsSourceDirs = dirs
      , pbSrcs = srcs
      , pbHscSrcs = hscSrcs
      , pbCSrcs = sort (map (normalise . getSymbolicPath) (cSources bi <> cxxSources bi))
      , pbIncludeDirs = includeDirs'
      , pbDeps = deps
      , pbCompilerFlags =
          maybe [] (\l -> ["-X" <> prettyShow l]) (defaultLanguage bi)
            <> map (("-X" <>) . prettyShow) (defaultExtensions bi)
            <> hcOptions GHC bi
      , pbCppFlags = cppOptions bi
      , pbCcFlags = ccOptions bi
      }
  where
    self = packageName gpd
    -- Only whether the solve picked the package at all: its versions are
    -- already settled, possibly past the bounds (allow-newer).
    pinned = Map.union (freezeVersions freeze) (Map.findWithDefault mempty plat (bootPackages boot))
    satisfiable d = depPkgName d `Map.member` pinned
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
      [field <> " is unsupported" | (field, True) <- checks]
        <> ["internal sub-libraries are unsupported" | packageName pd `elem` map depPkgName (targetBuildDepends bi)]
        <> ["build tool " <> t <> " is unsupported" | t <- buildTools', t /= "hsc2hs"]
    -- hsc2hs is the macro's; any other tool generates sources we never see.
    buildTools' =
      [unPackageName n | ExeDependency n _ _ <- buildToolDepends bi]
        <> [unPackageName n | LegacyExeDependency s _ <- buildTools bi, let n = mkPackageName s]
    checks =
      [ ("autogen-modules (Paths_ etc.)", not (null (autogenModules bi)))
      , ("asm-sources", not (null (asmSources bi)))
      , ("cmm-sources", not (null (cmmSources bi)))
      , ("extra-libraries", not (null (extraLibs bi)))
      , ("pkgconfig-depends", not (null (pkgconfigDepends bi)))
      , ("signatures (backpack)", not (null (signatures lib)))
      ]

-- | Cabal's search: the first hs-source-dir holding the module wins. A
-- @.hs-boot@ sibling comes along with it. Returns plain and @.hsc@ sources.
resolveModules :: Set FilePath -> [FilePath] -> [ModuleName] -> Either [String] ([FilePath], [FilePath])
resolveModules files dirs modules = case partitionEithers (map resolve modules) of
  ([], found) -> Right (sort (concat [hs | Plain hs <- found]), sort [hsc | Hsc hsc <- found])
  (missing, _) -> Left missing
  where
    resolve m =
      case [(p, rel) | d <- dirs, ext <- ["hs", "lhs", "hsc"], let rel = toFilePath m <.> ext, let p = normalise (d </> rel), p `Set.member` files] of
        (p, rel) : _
          | macroModulePath p /= rel -> Left ("module " <> prettyShow m <> " is " <> p <> ", which the macro would read as " <> macroModulePath p <> " under hs-source-dirs " <> show dirs)
          | ".hsc" `isSuffixOf` p -> Right (Hsc p)
          | otherwise -> Right (Plain (p : [b | let b = p <> "-boot", b `Set.member` files]))
        [] -> Left ("module " <> prettyShow m <> " not found under " <> show dirs <> " (generated by a build tool?)")

    -- defs.bzl's `_module_path`: strip the longest hs-source-dir the path is
    -- under.
    macroModulePath p =
      case [rest | d <- sortOn (Down . length) (map normalise dirs), Just rest <- [if d == "." then Just p else stripPrefix (d <> "/") p]] of
        rest : _ -> rest
        [] -> p

data Resolved = Plain [FilePath] | Hsc FilePath

render :: Set PackageName -> Set PackageName -> [Target] -> String
render boots public targets =
  unlines
    [ "# @generated by //third_party/haskell/hackage2buck; do not edit."
    , "load(\"//third_party/haskell:defs.bzl\", \"boot_package\", \"third_party_haskell_library\")"
    ]
    <> concatMap (("\n" <>) . renderCall) (bootCalls <> map libCall targets)
  where
    used = Set.fromList [d | t <- targets, b <- Map.elems (tByPlat t), d <- pbDeps b]
    bootCalls = [Call "boot_package" [("name", Str (unPackageName b))] | b <- Set.toList (Set.intersection boots used)]
    libCall t =
      Call "third_party_haskell_library" $
        [ ("name", Str (unPackageName (tName t)))
        , ("version", Str (prettyShow (tVersion t)))
        , ("sha256", Str (tSha256 t))
        ]
          <> [(key, strs v) | (key, Common v) <- folded, emit key v]
          <> [("cxx_deps", strs (tCxxDeps t)) | not (null (tCxxDeps t))]
          <> [("public", Bool True) | tName t `Set.member` public]
          <> [("platform", Dict [(platKey p, Dict [(key, strs (vs Map.! p)) | (key, PerPlat vs) <- folded]) | p <- allPlats]) | any (isPerPlat . snd) folded]
      where
        folded = [(key, fold (Map.map f (tByPlat t))) | (key, f) <- fields]
    -- Same order as the macro's signature.
    fields =
      [ ("hs_source_dirs", pbHsSourceDirs)
      , ("srcs", pbSrcs)
      , ("hsc_srcs", pbHscSrcs)
      , ("c_srcs", pbCSrcs)
      , ("include_dirs", pbIncludeDirs)
      , ("deps", \b -> [":" <> unPackageName d | d <- pbDeps b])
      , ("compiler_flags", pbCompilerFlags)
      , ("cpp_flags", pbCppFlags)
      , ("cc_flags", pbCcFlags)
      ]
    -- Defaults are left out, except the two every library spells.
    emit key v = case key of
      "srcs" -> True
      "deps" -> True
      "hs_source_dirs" -> v /= ["."]
      _ -> not (null v)
    strs = List . map Str

-- | A field every platform agrees on is emitted plainly; the rest go in the
-- macro's @platform@ dict, whole, for every platform.
data Folded = Common [String] | PerPlat (Map Plat [String])

isPerPlat :: Folded -> Bool
isPerPlat = \case
  PerPlat _ -> True
  Common _ -> False

fold :: Map Plat [String] -> Folded
fold vs = case nub (Map.elems vs) of
  [v] -> Common v
  _ -> PerPlat vs
