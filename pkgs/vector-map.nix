{ mkDerivation
, base
, cardano-binary
, containers
, criterion
, deepseq
, fetchgit
, lib
, nothunks
, primitive
, QuickCheck
, quickcheck-classes-base
, random
, tasty
, tasty-quickcheck
, vector
, vector-algorithms
}:
mkDerivation {
  pname = "vector-map";
  version = "0.1.0.0";
  src = fetchgit {
    url = "https://github.com/milloni/cardano-ledger";
    sha256 = "0qwq9ddsdq2kps5j1mpznxbh8lvq3qf54587kch1m0bya086bmxx";
    rev = "e95d4aa2d7e39c856e8b0aaae3610ffb2391ac19";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/libs/vector-map/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    cardano-binary
    containers
    deepseq
    nothunks
    primitive
    vector
    vector-algorithms
  ];
  testHaskellDepends = [
    base
    containers
    QuickCheck
    quickcheck-classes-base
    tasty
    tasty-quickcheck
  ];
  benchmarkHaskellDepends = [ base containers criterion random ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/input-output-hk/cardano-ledger";
  description = "An efficient VMap that is backed by two vectors: one for keys and another for values";
  license = lib.licenses.asl20;
  broken = false;
}
