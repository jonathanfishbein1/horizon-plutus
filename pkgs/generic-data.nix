{ mkDerivation
, ap-normalize
, base
, base-orphans
, contravariant
, criterion
, deepseq
, generic-lens
, ghc-boot-th
, lib
, one-liner
, show-combinators
, tasty
, tasty-hunit
}:
mkDerivation {
  pname = "generic-data";
  version = "1.0.0.0";
  sha256 = "0fa021b8d0d879d9f1d81c792bf596ccc88ebdaf94dc0c1d1d3cadcf47eacab1";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    ap-normalize
    base
    base-orphans
    contravariant
    ghc-boot-th
    show-combinators
  ];
  testHaskellDepends = [
    base
    generic-lens
    one-liner
    show-combinators
    tasty
    tasty-hunit
  ];
  benchmarkHaskellDepends = [ base criterion deepseq ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/Lysxia/generic-data#readme";
  description = "Deriving instances with GHC.Generics and related utilities";
  license = lib.licenses.mit;
  broken = false;
}
