{ mkDerivation
, HUnit
, base
, containers
, ghc-prim
, hspec
, lib
, mtl
, ordered-containers
, syb
, template-haskell
, th-abstraction
, th-lift
, th-orphans
, transformers-compat
}:
mkDerivation {
  pname = "th-desugar";
  version = "1.14";
  sha256 = "dfb2d3c5f3ffec189452b1db7edb743b9b7b006cc16c19a9ece083de4bd8a7ac";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    containers
    ghc-prim
    mtl
    ordered-containers
    syb
    template-haskell
    th-abstraction
    th-lift
    th-orphans
    transformers-compat
  ];
  testHaskellDepends = [
    base
    containers
    hspec
    HUnit
    mtl
    syb
    template-haskell
    th-abstraction
    th-lift
    th-orphans
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/goldfirere/th-desugar";
  description = "Functions to desugar Template Haskell";
  license = lib.licenses.bsd3;
  broken = false;
}
