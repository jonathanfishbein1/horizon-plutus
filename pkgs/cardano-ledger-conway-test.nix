{ mkDerivation, base, bytestring, cardano-ledger-allegra
, cardano-ledger-alonzo, cardano-ledger-babbage
, cardano-ledger-binary, cardano-ledger-conway, cardano-ledger-core
, cardano-ledger-mary, cardano-ledger-shelley
, cardano-ledger-shelley-ma-test, cardano-ledger-shelley-test
, cardano-slotting, cardano-strict-containers, containers
, data-default-class, fetchgit, lib, microlens, plutus-tx
, small-steps, tasty, tasty-quickcheck
}:
mkDerivation {
  pname = "cardano-ledger-conway-test";
  version = "1.1.0.0";
  src = fetchgit {
    url = "https://github.com/input-output-hk/cardano-ledger";
    sha256 = "015b386n97xlp6d26s9njs5w75wv3i82jh1iywksifqyz2539wg6";
    rev = "62846d6de6464095ab7aae6d7f466c5173460937";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/eras/conway/test-suite/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = true;
  libraryHaskellDepends = [
    base cardano-ledger-allegra cardano-ledger-alonzo
    cardano-ledger-babbage cardano-ledger-binary cardano-ledger-conway
    cardano-ledger-core cardano-ledger-mary cardano-ledger-shelley
    cardano-ledger-shelley-ma-test cardano-ledger-shelley-test
    cardano-slotting cardano-strict-containers containers
    data-default-class microlens plutus-tx small-steps tasty
    tasty-quickcheck
  ];
  testHaskellDepends = [
    base bytestring cardano-ledger-allegra cardano-ledger-alonzo
    cardano-ledger-babbage cardano-ledger-conway cardano-ledger-core
    cardano-ledger-shelley-test tasty
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