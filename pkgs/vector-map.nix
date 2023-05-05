{ mkDerivation, QuickCheck, aeson, base, containers, criterion
, deepseq, fetchgit, lib, nothunks, primitive
, quickcheck-classes-base, random, tasty, tasty-quickcheck
, tree-diff, vector, vector-algorithms
}:
mkDerivation {
  pname = "vector-map";
  version = "1.0.1.0";
  src = fetchgit {
    url = "https://github.com/input-output-hk/cardano-ledger";
    sha256 = "0lfd6l3pzlwipvvv1i4v47ha25qmx0vxc1k23g71f17lzakjs4gm";
    rev = "81548171f2cd336714bb0425640a6553c46aa09e";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/libs/vector-map/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson base containers deepseq nothunks primitive tree-diff vector
    vector-algorithms
  ];
  testHaskellDepends = [
    base containers QuickCheck quickcheck-classes-base tasty
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