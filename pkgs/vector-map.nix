{ mkDerivation
, QuickCheck
, aeson
, base
, containers
, criterion
, deepseq
, fetchgit
, lib
, nothunks
, primitive
, quickcheck-classes-base
, random
, tasty
, tasty-quickcheck
, tree-diff
, vector
, vector-algorithms
}:
mkDerivation {
  pname = "vector-map";
  version = "1.0.1.0";
  src = fetchgit {
    url = "https://github.com/input-output-hk/cardano-ledger";
    sha256 = "120995ssz1nf21pp52xwhmcs4cdfndzv4459l8cjvwbaygs7nvvl";
    rev = "180271602640bcac1214084b6de61d0468332f00";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/libs/vector-map/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson
    base
    containers
    deepseq
    nothunks
    primitive
    tree-diff
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
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
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
