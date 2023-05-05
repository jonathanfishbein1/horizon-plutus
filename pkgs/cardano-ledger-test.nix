{ mkDerivation, QuickCheck, aeson, array, base, bytestring
, cardano-crypto-class, cardano-data, cardano-ledger-allegra
, cardano-ledger-alonzo, cardano-ledger-alonzo-test
, cardano-ledger-api, cardano-ledger-babbage
, cardano-ledger-babbage-test, cardano-ledger-binary
, cardano-ledger-conway, cardano-ledger-core, cardano-ledger-mary
, cardano-ledger-pretty, cardano-ledger-shelley
, cardano-ledger-shelley-ma-test, cardano-ledger-shelley-test
, cardano-protocol-tpraos, cardano-slotting
, cardano-strict-containers, containers, criterion
, data-default-class, deepseq, fetchgit, groups, hspec, lib
, microlens, mtl, nothunks, plutus-core, plutus-ledger-api
, prettyprinter, random, set-algebra, small-steps, small-steps-test
, tasty, tasty-hunit, tasty-quickcheck, text, time, transformers
, vector, vector-map
}:
mkDerivation {
  pname = "cardano-ledger-test";
  version = "1.1.0.0";
  src = fetchgit {
    url = "https://github.com/input-output-hk/cardano-ledger";
    sha256 = "0lfd6l3pzlwipvvv1i4v47ha25qmx0vxc1k23g71f17lzakjs4gm";
    rev = "81548171f2cd336714bb0425640a6553c46aa09e";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/libs/cardano-ledger-test/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    array base bytestring cardano-crypto-class cardano-data
    cardano-ledger-allegra cardano-ledger-alonzo
    cardano-ledger-alonzo-test cardano-ledger-api
    cardano-ledger-babbage cardano-ledger-babbage-test
    cardano-ledger-binary cardano-ledger-conway cardano-ledger-core
    cardano-ledger-mary cardano-ledger-pretty cardano-ledger-shelley
    cardano-ledger-shelley-ma-test cardano-ledger-shelley-test
    cardano-protocol-tpraos cardano-slotting cardano-strict-containers
    containers data-default-class groups hspec microlens mtl nothunks
    plutus-core plutus-ledger-api prettyprinter QuickCheck set-algebra
    small-steps small-steps-test tasty tasty-hunit tasty-quickcheck
    text time transformers vector vector-map
  ];
  testHaskellDepends = [ base data-default-class tasty ];
  benchmarkHaskellDepends = [
    aeson base bytestring cardano-crypto-class cardano-ledger-allegra
    cardano-ledger-alonzo cardano-ledger-alonzo-test
    cardano-ledger-binary cardano-ledger-core cardano-ledger-mary
    cardano-ledger-shelley cardano-ledger-shelley-ma-test
    cardano-ledger-shelley-test cardano-slotting
    cardano-strict-containers containers criterion data-default-class
    deepseq microlens mtl QuickCheck random small-steps
    small-steps-test tasty text vector-map
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