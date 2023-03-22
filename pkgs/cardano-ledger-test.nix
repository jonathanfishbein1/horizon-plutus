{ mkDerivation, QuickCheck, aeson, array, base, bytestring
, cardano-binary, cardano-crypto-class, cardano-data
, cardano-ledger-alonzo, cardano-ledger-alonzo-test
, cardano-ledger-babbage, cardano-ledger-babbage-test
, cardano-ledger-conway, cardano-ledger-conway-test
, cardano-ledger-core, cardano-ledger-pretty
, cardano-ledger-shelley, cardano-ledger-shelley-ma
, cardano-ledger-shelley-ma-test, cardano-ledger-shelley-test
, cardano-protocol-tpraos, cardano-slotting
, cardano-strict-containers, containers, criterion
, data-default-class, deepseq, fetchgit, genvalidity
, genvalidity-scientific, lib, microlens, mtl, nothunks
, plutus-core, plutus-ledger-api, prettyprinter, random, scientific
, set-algebra, small-steps, small-steps-test, tasty, tasty-hunit
, tasty-quickcheck, text, time, transformers, vector, vector-map
}:
mkDerivation {
  pname = "cardano-ledger-test";
  version = "0.1.0.0";
  src = fetchgit {
    url = "https://github.com/milloni/cardano-ledger";
    sha256 = "08nj6hcqj5apvb17n1irc8j7rzf10bcdh5gh1mkmhwbyw6h2d4ab";
    rev = "3aa1fd8469424778454644f0d371988fb4490b4a";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/libs/cardano-ledger-test/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson array base bytestring cardano-binary cardano-crypto-class
    cardano-data cardano-ledger-alonzo cardano-ledger-alonzo-test
    cardano-ledger-babbage cardano-ledger-babbage-test
    cardano-ledger-conway cardano-ledger-conway-test
    cardano-ledger-core cardano-ledger-pretty cardano-ledger-shelley
    cardano-ledger-shelley-ma cardano-ledger-shelley-ma-test
    cardano-ledger-shelley-test cardano-protocol-tpraos
    cardano-slotting cardano-strict-containers containers
    data-default-class genvalidity genvalidity-scientific microlens mtl
    nothunks plutus-core plutus-ledger-api prettyprinter QuickCheck
    scientific set-algebra small-steps small-steps-test tasty
    tasty-hunit tasty-quickcheck text time transformers vector
    vector-map
  ];
  testHaskellDepends = [
    base cardano-ledger-shelley-test data-default-class tasty
  ];
  benchmarkHaskellDepends = [
    base bytestring cardano-binary cardano-crypto-class cardano-data
    cardano-ledger-alonzo cardano-ledger-alonzo-test
    cardano-ledger-core cardano-ledger-shelley
    cardano-ledger-shelley-ma cardano-ledger-shelley-ma-test
    cardano-ledger-shelley-test containers criterion data-default-class
    deepseq microlens QuickCheck random small-steps small-steps-test
    tasty tasty-quickcheck text vector-map
  ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Testing harness, tests and benchmarks for Shelley style cardano ledgers";
  license = lib.licenses.asl20;
  broken = false;
}