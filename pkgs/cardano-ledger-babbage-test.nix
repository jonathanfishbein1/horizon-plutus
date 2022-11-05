{ mkDerivation
, base
, base16-bytestring
, bytestring
, cardano-binary
, cardano-data
, cardano-ledger-alonzo
, cardano-ledger-alonzo-test
, cardano-ledger-babbage
, cardano-ledger-core
, cardano-ledger-shelley
, cardano-ledger-shelley-ma
, cardano-ledger-shelley-ma-test
, cardano-ledger-shelley-test
, cardano-protocol-tpraos
, cardano-slotting
, cardano-strict-containers
, cborg
, containers
, data-default-class
, fetchgit
, lib
, plutus-ledger-api
, plutus-tx
, pretty-show
, QuickCheck
, small-steps
, tasty
, tasty-hunit
, tasty-quickcheck
, time
}:
mkDerivation {
  pname = "cardano-ledger-babbage-test";
  version = "0.1.0.0";
  src = fetchgit {
    url = "https://github.com/milloni/cardano-ledger";
    sha256 = "0x6xx0rx85ygnl0wclr9w4li3pmc9zf7xi5wqb7h0ibzbqyrhbzf";
    rev = "f24ec5ad840458588e6e3ec2440add911f066aeb";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/eras/babbage/test-suite/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = true;
  libraryHaskellDepends = [
    base
    cardano-binary
    cardano-ledger-alonzo
    cardano-ledger-alonzo-test
    cardano-ledger-babbage
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
    small-steps
  ];
  testHaskellDepends = [
    base
    base16-bytestring
    bytestring
    cardano-binary
    cardano-data
    cardano-ledger-alonzo
    cardano-ledger-alonzo-test
    cardano-ledger-babbage
    cardano-ledger-core
    cardano-ledger-shelley
    cardano-ledger-shelley-ma
    cardano-ledger-shelley-ma-test
    cardano-ledger-shelley-test
    cardano-protocol-tpraos
    cardano-slotting
    cardano-strict-containers
    cborg
    containers
    data-default-class
    plutus-ledger-api
    pretty-show
    tasty
    tasty-hunit
    tasty-quickcheck
    time
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
