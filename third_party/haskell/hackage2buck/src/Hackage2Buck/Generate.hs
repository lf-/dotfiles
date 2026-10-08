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
import Data.List (intercalate, isSuffixOf, nub, partition, sort, sortOn, stripPrefix)
import Data.Ord (Down (..))
import Data.Map.Strict (Map)
import Data.Map.Strict qualified as Map
import Data.Maybe (fromMaybe, mapMaybe)
import Data.Set (Set)
import Data.Set qualified as Set
import Distribution.Compiler (AbiTag (NoAbiTag), CompilerFlavor (GHC), CompilerId (..), unknownCompilerInfo)
import Distribution.Hackage.DB.Parsed (HackageDB, VersionData (..), readTarball)
import Distribution.Hackage.DB.Path (hackageTarball, hackageTarballDir)
import Distribution.ModuleName (ModuleName, fromString, toFilePath)
import Distribution.Package (packageName)
import Distribution.PackageDescription
import Distribution.PackageDescription.Configuration (finalizePD)
import Distribution.Pretty (prettyShow)
import Distribution.Types.ComponentRequestedSpec (ComponentRequestedSpec (..))
import Distribution.Types.Version (Version)
import Distribution.Utils.Path (getSymbolicPath)
import Data.Foldable (toList)
import Data.Traversable (for)
import Distribution.Types.DependencySatisfaction (DependencySatisfaction (..))
import Distribution.Types.MissingDependency (MissingDependency (..))
import Distribution.Types.MissingDependencyReason (MissingDependencyReason (..))
import Hackage2Buck.Boot
import Hackage2Buck.Config
import Hackage2Buck.Fixups
import Hackage2Buck.Freeze
import Hackage2Buck.Platforms
import Hackage2Buck.Starlark
import Hackage2Buck.Target
import Language.Haskell.Extension (Language (Haskell98))
import System.Directory (doesFileExist)
import System.Exit (exitFailure)
import System.FilePath (dropTrailingPathSeparator, isAbsolute, normalise, splitDirectories, (<.>), (</>))
import System.IO (hPutStrLn, stderr)

-- | Writes the BUCK file at @out@, or reports every package it cannot yet
-- express and fails.
generate :: Boot -> Freeze -> Set PackageName -> FilePath -> IO ()
generate boot freeze public out = do
  db <- readTarball Nothing =<< hackageTarball
  sdists <- hackageTarballDir
  let boots = bootNames boot
      -- The library closure of what packages.json asks for. The freeze holds
      -- more than that (build tools, optional stanzas' deps), none of which a
      -- target needs.
      walk done [] = pure done
      walk done (name : rest)
        | name `Map.member` done || name `Set.member` boots = walk done rest
        | otherwise = do
            result <- case Map.lookup name (freezeVersions freeze) of
              Nothing -> pure (Left ("error: " <> unPackageName name <> ": not in the freeze; run `hackage2buck solve`\n"))
              Just version -> target boot freeze db sdists name version
            let next = either (const []) (concatMap pbDeps . libraryBuilds) result
            walk (Map.insert name result done) (next <> rest)
  results <- walk Map.empty (Set.toList public)
  mapM_
    (\p -> hPutStrLn stderr ("warning: fixup for " <> unPackageName p <> ", which nothing needs"))
    (Set.toList (fixedPackages fixups `Set.difference` Map.keysSet results))
  case partitionEithers (Map.elems results) of
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
            builds <- traverse (platBuild boot freeze db files gpd) allPlats
            let subNames = Set.unions [Map.keysSet subs | (_, subs) <- builds]
            sublibs <- fmap Map.fromList . for (Set.toList subNames) $ \sub ->
              case traverse (Map.lookup sub . snd) builds of
                Just bs -> Right (sub, Map.fromList (zip allPlats bs))
                Nothing -> Left ["sub-library " <> sub <> " is only needed on some platforms, which is unsupported"]
            checkBuildType . applyFixups fixups $
              Target
                { tName = name
                , tVersion = version
                , tSha256 = sha256
                , tBuildType = buildType (packageDescription gpd)
                , tCxxDeps = []
                , tByPlat = Map.fromList (zip allPlats (map fst builds))
                , tSublibs = sublibs
                }
  where
    pkg = unPackageName name
    pkgId = pkg <> "-" <> prettyShow version
    failed problems = Left (unlines (("error: " <> pkgId <> ":") : map ("  " <>) problems))
    checkBuildType t
      | tBuildType t == Simple = Right t
      | otherwise = Left ["build-type " <> prettyShow (tBuildType t) <> " is unsupported; a fixup can stand in for it (see Config.hs)"]

-- | Every platform's build of every library (main and sub-) in the package.
libraryBuilds :: Target -> [PlatBuild]
libraryBuilds t = Map.elems (tByPlat t) <> concatMap Map.elems (Map.elems (tSublibs t))

-- | Archive members relative to the sdist root (without its @<pkg>-<ver>/@).
sdistFiles :: String -> FilePath -> IO (Set FilePath)
sdistFiles pkgId path = do
  entries <- Tar.read . GZip.decompress <$> BL.readFile path
  pure . Set.fromList . mapMaybe (stripPrefix (pkgId <> "/")) $
    Tar.foldEntries ((:) . Tar.entryPath) [] (error . ((path <> ": ") <>) . show) entries

-- | One platform's main library, and the internal sub-libraries it needs.
platBuild :: Boot -> Freeze -> HackageDB -> Set FilePath -> GenericPackageDescription -> Plat -> Either [String] (PlatBuild, Map String PlatBuild)
platBuild boot freeze db files gpd plat = do
  (pd, _flags) <-
    either (\missing -> Left ["on " <> platKey plat <> " needs " <> intercalate ", " [prettyShow d | MissingDependency d _ <- missing] <> ", which the solve did not pick; add it to `extra` in packages.json"]) Right $
      finalizePD manualFlags (ComponentRequestedSpec False False) satisfiable (platCabal plat) compiler [] gpd
  lib <- maybe (Left ["has no library component"]) Right (library pd)
  let subs = Map.fromList [(unUnqualComponentName n, l) | l <- subLibraries pd, LSubLibName n <- [libName l]]
      build = libBuild pd subs files providers
      reach done [] = Right done
      reach done (n : rest)
        | n `Map.member` done = reach done rest
        | otherwise = case Map.lookup n subs of
            Nothing -> Left ["needs sub-library " <> n <> ", which it does not define"]
            Just l -> do
              b <- build l
              reach (Map.insert n b done) (pbSublibDeps b <> rest)
  main <- build lib
  sublibs <- reach Map.empty (pbSublibDeps main)
  pure (main, sublibs)
  where
    self = packageName gpd
    -- Only whether the solve picked the package at all: its versions are
    -- already settled, possibly past the bounds (allow-newer).
    pinned = Map.union (freezeVersions freeze) (Map.findWithDefault mempty plat (bootPackages boot))
    satisfiable d
      | depPkgName d `Map.member` pinned = Satisfied
      | otherwise = Unsatisfied MissingPackage
    compiler = unknownCompilerInfo (CompilerId GHC (bootGhcVersion boot)) NoAbiTag
    -- Automatic flags are re-resolved per platform; manual ones are choices.
    manualFlags =
      let manual = Set.fromList [flagName f | f <- genPackageFlags gpd, flagManual f]
          frozen = fromMaybe mempty (Map.lookup self (freezeFlags freeze))
       in mkFlagAssignment [kv | kv@(f, _) <- unFlagAssignment frozen, f `Set.member` manual]
    -- What a Hackage dep's library could expose, on any platform: enough to
    -- tell which dep a re-exported module comes from.
    providers dep = maybe mempty libraryModules $ do
      v <- Map.lookup dep (freezeVersions freeze)
      vd <- Map.lookup dep db >>= Map.lookup v
      condLibrary (cabalFile vd)
    libraryModules = Set.fromList . exposedModules . fst . ignoreConditions

-- | One library component (main or internal sub-library) of a finalized
-- package.
libBuild :: PackageDescription -> Map String Library -> Set FilePath -> (PackageName -> Set ModuleName) -> Library -> Either [String] PlatBuild
libBuild pd subs files providers lib = do
  let bi = libBuildInfo lib
      self = packageName pd
      dirs = case map (dir . getSymbolicPath) (hsSourceDirs bi) of
        [] -> ["."]
        ds -> ds
      (selfDeps, otherDeps) = partition ((== self) . depPkgName) (targetBuildDepends bi)
      deps = nub (sort (map depPkgName otherDeps))
      sublibDeps = nub (sort [unUnqualComponentName n | d <- selfDeps, LSubLibName n <- toList (depLibraries d)])
      includeDirs' = map (dir . getSymbolicPath) (includeDirs bi)
  unsupported pd lib
  unless (all ((== [LMainLibName]) . toList . depLibraries) otherDeps) $
    Left ["depends on another package's sub-library, which is unsupported"]
  unless (all (\d -> not (isAbsolute d) && ".." `notElem` splitDirectories d) includeDirs') $
    Left ["include-dirs " <> show includeDirs' <> " leave the package, which is unsupported"]
  let modules = exposedModules lib <> otherModules bi
      paths = pathsModule pd
  (srcs, hscSrcs) <- resolveModules files dirs (filter (/= paths) modules)
  reexports <- traverse (resolveReexport self deps sublibDeps) (reexportedModules lib)
  pure
    PlatBuild
      { pbHsSourceDirs = dirs
      , pbSrcs = srcs
      , pbHscSrcs = hscSrcs
      -- The C toolchain assembles @.S@ like it compiles @.c@.
      , pbCSrcs = sort (map (normalise . getSymbolicPath) (cSources bi <> cxxSources bi <> asmSources bi))
      , pbIncludeDirs = includeDirs'
      , pbDeps = deps
      , pbSublibDeps = sublibDeps
      , pbReexports = reexports
      , pbCompilerFlags =
          -- Cabal's default too: GHC's own (GHC2021) parses some old
          -- packages differently (NondecreasingIndentation, NamedWildCards).
          ["-X" <> prettyShow (fromMaybe Haskell98 (defaultLanguage bi))]
            <> map (("-X" <>) . prettyShow) (defaultExtensions bi)
            <> hcOptions GHC bi
      , pbCppFlags = cppOptions bi
      , pbCcFlags = ccOptions bi
      , pbLinkerFlags = ldOptions bi <> concat [["-framework", getSymbolicPath f] | f <- frameworks bi]
      , pbPathsModule = paths `elem` modules
      }
  where
    -- @src/@ and @src@ are the same directory to cabal, but not to the
    -- prefix-stripping here and in defs.bzl.
    dir = dropTrailingPathSeparator . normalise
    -- The one dep (one of the package's own sub-libraries, or a Hackage
    -- package) whose library exposes the module.
    resolveReexport self deps sublibDeps (ModuleReexport origPkg orig new)
      | orig /= new = Left ["re-exports " <> prettyShow orig <> " as " <> prettyShow new <> "; renaming is unsupported"]
      | otherwise = case candidates of
          [label] -> Right (prettyShow orig, label)
          [] -> Left ["re-exports " <> prettyShow orig <> ", which no Hackage dep or sub-library exposes (from a boot package?)"]
          labels -> Left ["re-exports " <> prettyShow orig <> ", which several deps expose: " <> intercalate ", " labels]
      where
        candidates =
          [ ":" <> unPackageName self <> "_" <> sub
          | maybe True (== self) origPkg
          , sub <- sublibDeps
          , maybe False ((orig `elem`) . exposedModules) (Map.lookup sub subs)
          ]
            <> [":" <> unPackageName d | d <- deps, maybe True (== d) origPkg, orig `Set.member` providers d]

-- | Cabal's @Paths_<pkg>@ (Distribution.Simple.BuildPaths, which is in Cabal
-- rather than Cabal-syntax).
pathsModule :: PackageDescription -> ModuleName
pathsModule pd = fromString ("Paths_" <> map (\c -> if c == '-' then '_' else c) (unPackageName (packageName pd)))

-- | Everything a Hackage package can ask of its build that the macro cannot
-- yet do. Erroring beats emitting a target that silently builds wrong.
unsupported :: PackageDescription -> Library -> Either [String] ()
unsupported pd lib = unless (null problems) (Left problems)
  where
    bi = libBuildInfo lib
    problems =
      [field <> " is unsupported" | (field, True) <- checks]
        <> ["build tool " <> t <> " is unsupported" | t <- buildTools', t /= "hsc2hs"]
    -- hsc2hs is the macro's; any other tool generates sources we never see.
    buildTools' =
      [unPackageName n | ExeDependency n _ _ <- buildToolDepends bi]
        <> [unPackageName n | LegacyExeDependency s _ <- buildTools bi, let n = mkPackageName s]
    checks =
      [ ("autogen-modules other than Paths_", any (/= pathsModule pd) (autogenModules bi))
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
    -- Every one, not just those Hackage packages use: first-party code names
    -- them through this package too.
    bootCalls = [Call "boot_package" [("name", Str (unPackageName b))] | b <- Set.toList boots]
    libCall t =
      let pkg = unPackageName (tName t)
       in Call "third_party_haskell_library" $
            [ ("name", Str pkg)
            , ("version", Str (prettyShow (tVersion t)))
            , ("sha256", Str (tSha256 t))
            ]
              <> libAttrs pkg (tByPlat t)
              <> [("sublibraries", Dict [(sub, Dict (libAttrs pkg bs)) | (sub, bs) <- Map.toList (tSublibs t)]) | not (Map.null (tSublibs t))]
              <> [("cxx_deps", List (map Str (tCxxDeps t))) | not (null (tCxxDeps t))]
              <> [("public", Bool True) | tName t `Set.member` public]

-- | One library's attrs: a field every platform agrees on is emitted plainly,
-- the rest go in the macro's @platform@ dict, whole, for every platform.
libAttrs :: String -> Map Plat PlatBuild -> [(String, Expr)]
libAttrs pkg byPlat =
  [(key, v) | (key, Common v) <- folded, emit key v]
    <> [("paths_module", Bool True) | any pbPathsModule byPlat]
    <> [("platform", Dict [(platKey p, Dict [(key, vs Map.! p) | (key, PerPlat vs) <- folded]) | p <- allPlats]) | any (isPerPlat . snd) folded]
  where
    folded = [(key, fold (Map.map f byPlat)) | (key, f) <- fields]
    -- Same order as the macro's signature.
    fields =
      [ ("hs_source_dirs", strs . pbHsSourceDirs)
      , ("srcs", strs . pbSrcs)
      , ("hsc_srcs", strs . pbHscSrcs)
      , ("c_srcs", strs . pbCSrcs)
      , ("include_dirs", strs . pbIncludeDirs)
      , ("deps", \b -> strs ([":" <> unPackageName d | d <- pbDeps b] <> [":" <> pkg <> "_" <> s | s <- pbSublibDeps b]))
      , ("reexported_modules", \b -> Dict [(m, Str l) | (m, l) <- pbReexports b])
      , ("compiler_flags", strs . pbCompilerFlags)
      , ("cpp_flags", strs . pbCppFlags)
      , ("cc_flags", strs . pbCcFlags)
      , ("linker_flags", strs . pbLinkerFlags)
      ]
    -- Defaults are left out, except the two every library spells.
    emit key v = case key of
      "srcs" -> True
      "deps" -> True
      "hs_source_dirs" -> v /= strs ["."]
      _ -> v /= List [] && v /= Dict []
    strs = List . map Str

data Folded = Common Expr | PerPlat (Map Plat Expr)

isPerPlat :: Folded -> Bool
isPerPlat = \case
  PerPlat _ -> True
  Common _ -> False

fold :: Map Plat Expr -> Folded
fold vs = case nub (Map.elems vs) of
  [v] -> Common v
  _ -> PerPlat vs
