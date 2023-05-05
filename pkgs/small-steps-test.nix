{ mkDerivation
, QuickCheck
, Unique
, base
, cardano-crypto-class
, cardano-ledger-binary
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
, small-steps
, tasty
, tasty-expected-failure
, tasty-hedgehog
, tasty-hunit
, tasty-quickcheck
, transformers
}:
mkDerivation {
  pname = "small-steps-test";
  version = "1.0.0.0";
  src = fetchgit {
    url = "https://github.com/input-output-hk/cardano-ledger";
    sha256 = "120995ssz1nf21pp52xwhmcs4cdfndzv4459l8cjvwbaygs7nvvl";
    rev = "180271602640bcac1214084b6de61d0468332f00";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/libs/small-steps-test/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    cardano-ledger-binary
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
    cardano-crypto-class
    cardano-ledger-binary
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
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/input-output-hk/cardano-ledger";
  description = "Small step semantics testing library";
  license = lib.licenses.asl20;
  broken = false;
}
