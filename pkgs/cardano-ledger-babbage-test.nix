{ mkDerivation
, QuickCheck
, base
, bytestring
, cardano-ledger-allegra
, cardano-ledger-alonzo
, cardano-ledger-alonzo-test
, cardano-ledger-babbage
, cardano-ledger-binary
, cardano-ledger-core
, cardano-ledger-mary
, cardano-ledger-shelley
, cardano-ledger-shelley-ma-test
, cardano-ledger-shelley-test
, cardano-protocol-tpraos
, cardano-slotting
, cardano-strict-containers
, containers
, data-default-class
, fetchgit
, lib
, microlens
, plutus-ledger-api
, plutus-tx
, tasty
, tasty-hunit
, tasty-quickcheck
, time
}:
mkDerivation {
  pname = "cardano-ledger-babbage-test";
  version = "1.1.1.0";
  src = fetchgit {
    url = "https://github.com/input-output-hk/cardano-ledger";
    sha256 = "120995ssz1nf21pp52xwhmcs4cdfndzv4459l8cjvwbaygs7nvvl";
    rev = "180271602640bcac1214084b6de61d0468332f00";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/eras/babbage/test-suite/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = true;
  libraryHaskellDepends = [
    base
    cardano-ledger-allegra
    cardano-ledger-alonzo
    cardano-ledger-alonzo-test
    cardano-ledger-babbage
    cardano-ledger-binary
    cardano-ledger-core
    cardano-ledger-mary
    cardano-ledger-shelley
    cardano-ledger-shelley-ma-test
    cardano-ledger-shelley-test
    cardano-slotting
    cardano-strict-containers
    containers
    data-default-class
    microlens
    plutus-ledger-api
    plutus-tx
    QuickCheck
    tasty
    tasty-hunit
    time
  ];
  testHaskellDepends = [
    base
    bytestring
    cardano-ledger-allegra
    cardano-ledger-alonzo
    cardano-ledger-babbage
    cardano-ledger-binary
    cardano-ledger-core
    cardano-ledger-shelley-ma-test
    cardano-ledger-shelley-test
    cardano-protocol-tpraos
    tasty
    tasty-quickcheck
  ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Tests for Cardano ledger babbage era";
  license = lib.licenses.asl20;
  broken = false;
}
