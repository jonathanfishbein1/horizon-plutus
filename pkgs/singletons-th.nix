{ mkDerivation
, base
, containers
, ghc-boot-th
, lib
, mtl
, singletons
, syb
, template-haskell
, th-desugar
, th-orphans
, transformers
}:
mkDerivation {
  pname = "singletons-th";
  version = "3.1.1";
  sha256 = "466b91be35ee07bc06f5bf01d15f4bd9dc99a1151deb09ee114d99b9e052e9ae";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    containers
    ghc-boot-th
    mtl
    singletons
    syb
    template-haskell
    th-desugar
    th-orphans
    transformers
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://www.github.com/goldfirere/singletons";
  description = "A framework for generating singleton types";
  license = lib.licenses.bsd3;
  broken = false;
}
