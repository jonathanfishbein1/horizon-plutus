{ mkDerivation
, QuickCheck
, base
, base16-bytestring
, bytestring
, cardano-binary
, cardano-data
, cardano-ledger-alonzo
, cardano-ledger-core
, cardano-ledger-pretty
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
, hashable
, lib
, microlens
, plutus-core
, plutus-ledger-api
, plutus-tx
, small-steps
, small-steps-test
, tasty
, tasty-hunit
, tasty-quickcheck
, text
, time
, transformers
}:
mkDerivation {
  pname = "cardano-ledger-alonzo-test";
  version = "0.1.0.0";
  src = fetchgit {
    url = "https://github.com/milloni/cardano-ledger";
    sha256 = "08nj6hcqj5apvb17n1irc8j7rzf10bcdh5gh1mkmhwbyw6h2d4ab";
    rev = "3aa1fd8469424778454644f0d371988fb4490b4a";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/eras/alonzo/test-suite/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = true;
  libraryHaskellDepends = [
    base
    bytestring
    cardano-binary
    cardano-data
    cardano-ledger-alonzo
    cardano-ledger-core
    cardano-ledger-pretty
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
    hashable
    microlens
    plutus-core
    plutus-ledger-api
    plutus-tx
    QuickCheck
    small-steps
    small-steps-test
    text
    transformers
  ];
  testHaskellDepends = [
    base
    base16-bytestring
    bytestring
    cardano-binary
    cardano-data
    cardano-ledger-alonzo
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
    microlens
    plutus-ledger-api
    QuickCheck
    small-steps
    small-steps-test
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
  description = "Tests for Cardano ledger introducing Plutus Core";
  license = lib.licenses.asl20;
  broken = false;
}
