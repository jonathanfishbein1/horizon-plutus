{ mkDerivation
, QuickCheck
, Unique
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
  version = "0.1.0.0";
  src = fetchgit {
    url = "https://github.com/milloni/cardano-ledger";
    sha256 = "08nj6hcqj5apvb17n1irc8j7rzf10bcdh5gh1mkmhwbyw6h2d4ab";
    rev = "3aa1fd8469424778454644f0d371988fb4490b4a";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/libs/small-steps-test/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
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
