{ mkDerivation, QuickCheck, aeson, base, base16-bytestring, binary
, bytestring, cardano-crypto, cardano-crypto-class
, cardano-crypto-praos, cardano-crypto-test, cardano-crypto-wrapper
, cardano-data, cardano-ledger-binary, cardano-ledger-byron
, cardano-ledger-byron-test, cardano-ledger-core
, cardano-ledger-pretty, cardano-ledger-shelley
, cardano-protocol-tpraos, cardano-slotting
, cardano-strict-containers, cborg, containers, criterion
, data-default-class, deepseq, fetchgit, groups, hashable, hedgehog
, hedgehog-quickcheck, iproute, lib, microlens, mtl, nothunks
, plutus-ledger-api, prettyprinter, process-extras, scientific
, serialise, set-algebra, small-steps, small-steps-test, tasty
, tasty-hunit, tasty-quickcheck, text, time, transformers, unliftio
, vector, vector-map
}:
mkDerivation {
  pname = "cardano-ledger-shelley-test";
  version = "1.1.0.0";
  src = fetchgit {
    url = "https://github.com/input-output-hk/cardano-ledger";
    sha256 = "0lfd6l3pzlwipvvv1i4v47ha25qmx0vxc1k23g71f17lzakjs4gm";
    rev = "81548171f2cd336714bb0425640a6553c46aa09e";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/eras/shelley/test-suite/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = true;
  libraryHaskellDepends = [
    base base16-bytestring bytestring cardano-crypto
    cardano-crypto-class cardano-crypto-test cardano-crypto-wrapper
    cardano-data cardano-ledger-binary cardano-ledger-byron
    cardano-ledger-byron-test cardano-ledger-core cardano-ledger-pretty
    cardano-ledger-shelley cardano-protocol-tpraos cardano-slotting
    cardano-strict-containers cborg containers data-default-class
    deepseq hashable hedgehog hedgehog-quickcheck microlens mtl
    nothunks plutus-ledger-api process-extras QuickCheck serialise
    set-algebra small-steps small-steps-test tasty tasty-hunit
    tasty-quickcheck text time transformers unliftio vector vector-map
  ];
  testHaskellDepends = [
    aeson base base16-bytestring binary bytestring cardano-crypto-class
    cardano-data cardano-ledger-binary cardano-ledger-byron
    cardano-ledger-core cardano-ledger-pretty cardano-ledger-shelley
    cardano-protocol-tpraos cardano-slotting cardano-strict-containers
    cborg containers data-default-class deepseq groups iproute
    microlens prettyprinter QuickCheck scientific small-steps
    small-steps-test tasty tasty-hunit tasty-quickcheck time
  ];
  benchmarkHaskellDepends = [
    base cardano-crypto-class cardano-crypto-praos cardano-data
    cardano-ledger-binary cardano-ledger-core cardano-ledger-shelley
    cardano-protocol-tpraos cardano-slotting cardano-strict-containers
    containers criterion deepseq mtl QuickCheck set-algebra small-steps
    small-steps-test
  ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Test helpers from cardano-ledger-shelley exposed to other packages";
  license = lib.licenses.asl20;
  broken = false;
}