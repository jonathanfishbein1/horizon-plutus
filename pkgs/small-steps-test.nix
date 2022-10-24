{ mkDerivation
, base
, cardano-binary
, cardano-crypto-class
, cardano-strict-containers
, containers
, deepseq
, fetchgit
, hedgehog
, lib
, microlens
, microlens-th
, mtl
, nothunks
, QuickCheck
, small-steps
, tasty
, tasty-expected-failure
, tasty-hedgehog
, tasty-hunit
, tasty-quickcheck
, transformers
, Unique
}:
mkDerivation {
  pname = "small-steps-test";
  version = "0.1.0.0";
  src = fetchgit {
    url = "https://github.com/milloni/cardano-ledger";
    sha256 = "0vzz5a3alzl4hh62krifc0qzc03pxpm42szhxq0p88qvjjy3cwkj";
    rev = "2857b079bdab6e1545c60c614157ba8e7d19233e";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/libs/small-steps-test/; echo source root reset to $sourceRoot";
  libraryHaskellDepends = [
    base
    cardano-strict-containers
    deepseq
    hedgehog
    microlens
    microlens-th
    mtl
    nothunks
    QuickCheck
    small-steps
    tasty-hunit
    transformers
  ];
  testHaskellDepends = [
    base
    cardano-binary
    cardano-crypto-class
    containers
    hedgehog
    mtl
    QuickCheck
    small-steps
    tasty
    tasty-expected-failure
    tasty-hedgehog
    tasty-hunit
    tasty-quickcheck
    Unique
  ];
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  hyperlinkSource = false;
  homepage = "https://github.com/input-output-hk/cardano-ledger";
  description = "Small step semantics testing library";
  license = lib.licenses.asl20;
}
