{ mkDerivation
, QuickCheck
, base
, cardano-ledger-alonzo
, cardano-ledger-alonzo-test
, cardano-ledger-babbage
, cardano-ledger-babbage-test
, cardano-ledger-conway
, cardano-ledger-core
, cardano-ledger-shelley
, cardano-ledger-shelley-ma
, cardano-ledger-shelley-ma-test
, cardano-ledger-shelley-test
, cardano-slotting
, cardano-strict-containers
, containers
, data-default-class
, fetchgit
, lib
, plutus-tx
, tasty
, tasty-quickcheck
}:
mkDerivation {
  pname = "cardano-ledger-conway-test";
  version = "0.1.0.0";
  src = fetchgit {
    url = "https://github.com/milloni/cardano-ledger";
    sha256 = "08nj6hcqj5apvb17n1irc8j7rzf10bcdh5gh1mkmhwbyw6h2d4ab";
    rev = "3aa1fd8469424778454644f0d371988fb4490b4a";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/eras/conway/test-suite/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    cardano-ledger-alonzo
    cardano-ledger-alonzo-test
    cardano-ledger-babbage
    cardano-ledger-babbage-test
    cardano-ledger-conway
    cardano-ledger-core
    cardano-ledger-shelley
    cardano-ledger-shelley-ma
    cardano-ledger-shelley-ma-test
    cardano-ledger-shelley-test
    cardano-slotting
    cardano-strict-containers
    containers
    data-default-class
    plutus-tx
    QuickCheck
    tasty
    tasty-quickcheck
  ];
  testHaskellDepends = [
    base
    cardano-ledger-conway
    cardano-ledger-shelley-test
    tasty
  ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Tests for Cardano ledger Conway era";
  license = lib.licenses.asl20;
  broken = false;
}
