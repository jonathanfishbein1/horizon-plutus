{ mkDerivation
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
, QuickCheck
, tasty
, tasty-quickcheck
}:
mkDerivation {
  pname = "cardano-ledger-conway-test";
  version = "0.1.0.0";
  src = fetchgit {
    url = "https://github.com/milloni/cardano-ledger";
    sha256 = "0x6xx0rx85ygnl0wclr9w4li3pmc9zf7xi5wqb7h0ibzbqyrhbzf";
    rev = "f24ec5ad840458588e6e3ec2440add911f066aeb";
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
