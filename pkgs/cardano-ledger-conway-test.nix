{ mkDerivation
, base
, bytestring
, cardano-ledger-allegra
, cardano-ledger-alonzo
, cardano-ledger-babbage
, cardano-ledger-babbage-test
, cardano-ledger-binary
, cardano-ledger-conway
, cardano-ledger-core
, cardano-ledger-mary
, cardano-ledger-shelley
, cardano-ledger-shelley-ma-test
, cardano-ledger-shelley-test
, cardano-slotting
, cardano-strict-containers
, containers
, data-default-class
, fetchgit
, lib
, microlens
, plutus-tx
, small-steps
, tasty
, tasty-quickcheck
}:
mkDerivation {
  pname = "cardano-ledger-conway-test";
  version = "1.1.1.0";
  src = fetchgit {
    url = "https://github.com/input-output-hk/cardano-ledger";
    sha256 = "120995ssz1nf21pp52xwhmcs4cdfndzv4459l8cjvwbaygs7nvvl";
    rev = "180271602640bcac1214084b6de61d0468332f00";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/eras/conway/test-suite/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = true;
  libraryHaskellDepends = [
    base
    cardano-ledger-allegra
    cardano-ledger-alonzo
    cardano-ledger-babbage
    cardano-ledger-binary
    cardano-ledger-conway
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
    plutus-tx
    small-steps
    tasty
    tasty-quickcheck
  ];
  testHaskellDepends = [
    base
    bytestring
    cardano-ledger-allegra
    cardano-ledger-alonzo
    cardano-ledger-babbage
    cardano-ledger-babbage-test
    cardano-ledger-conway
    cardano-ledger-core
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
