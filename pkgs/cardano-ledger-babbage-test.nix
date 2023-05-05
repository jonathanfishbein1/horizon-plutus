{ mkDerivation, QuickCheck, base, bytestring
, cardano-ledger-allegra, cardano-ledger-alonzo
, cardano-ledger-alonzo-test, cardano-ledger-babbage
, cardano-ledger-binary, cardano-ledger-core, cardano-ledger-mary
, cardano-ledger-shelley, cardano-ledger-shelley-ma-test
, cardano-ledger-shelley-test, cardano-protocol-tpraos
, cardano-slotting, cardano-strict-containers, containers
, data-default-class, fetchgit, lib, microlens, plutus-ledger-api
, plutus-tx, tasty, tasty-hunit, tasty-quickcheck, time
}:
mkDerivation {
  pname = "cardano-ledger-babbage-test";
  version = "1.1.0.0";
  src = fetchgit {
    url = "https://github.com/input-output-hk/cardano-ledger";
    sha256 = "0lfd6l3pzlwipvvv1i4v47ha25qmx0vxc1k23g71f17lzakjs4gm";
    rev = "81548171f2cd336714bb0425640a6553c46aa09e";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/eras/babbage/test-suite/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = true;
  libraryHaskellDepends = [
    base cardano-ledger-allegra cardano-ledger-alonzo
    cardano-ledger-alonzo-test cardano-ledger-babbage
    cardano-ledger-binary cardano-ledger-core cardano-ledger-mary
    cardano-ledger-shelley cardano-ledger-shelley-ma-test
    cardano-ledger-shelley-test cardano-slotting
    cardano-strict-containers containers data-default-class microlens
    plutus-tx QuickCheck
  ];
  testHaskellDepends = [
    base bytestring cardano-ledger-allegra cardano-ledger-alonzo
    cardano-ledger-babbage cardano-ledger-binary cardano-ledger-core
    cardano-ledger-shelley cardano-ledger-shelley-ma-test
    cardano-ledger-shelley-test cardano-protocol-tpraos
    cardano-slotting cardano-strict-containers containers
    data-default-class plutus-ledger-api tasty tasty-hunit
    tasty-quickcheck time
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