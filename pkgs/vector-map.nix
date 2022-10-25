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
    sha256 = "109piw0q5nlypsywkmkwng4ixalbfmzf379b4n931ghih54xzwja";
    rev = "bc859395040abf075f4ca44b4ce8c221d2c4bb66";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/libs/vector-map/; echo source root reset to $sourceRoot";
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
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  hyperlinkSource = false;
  homepage = "https://github.com/input-output-hk/cardano-ledger";
  description = "An efficient VMap that is backed by two vectors: one for keys and another for values";
  license = lib.licenses.asl20;
}
