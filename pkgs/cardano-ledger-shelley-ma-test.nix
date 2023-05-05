{ mkDerivation, QuickCheck, base, bytestring, cardano-crypto-class
, cardano-data, cardano-ledger-allegra, cardano-ledger-binary
, cardano-ledger-core, cardano-ledger-mary, cardano-ledger-pretty
, cardano-ledger-shelley, cardano-ledger-shelley-test
, cardano-protocol-tpraos, cardano-slotting
, cardano-strict-containers, cborg, containers, data-default-class
, deepseq, fetchgit, groups, hashable, lib, microlens, mtl
, small-steps, small-steps-test, tasty, tasty-hunit
, tasty-quickcheck, text
}:
mkDerivation {
  pname = "cardano-ledger-shelley-ma-test";
  version = "1.1.0.0";
  src = fetchgit {
    url = "https://github.com/input-output-hk/cardano-ledger";
    sha256 = "0lfd6l3pzlwipvvv1i4v47ha25qmx0vxc1k23g71f17lzakjs4gm";
    rev = "81548171f2cd336714bb0425640a6553c46aa09e";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/eras/shelley-ma/test-suite/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = true;
  libraryHaskellDepends = [
    base bytestring cardano-ledger-allegra cardano-ledger-binary
    cardano-ledger-core cardano-ledger-mary cardano-ledger-pretty
    cardano-ledger-shelley cardano-ledger-shelley-test cardano-slotting
    cardano-strict-containers containers hashable microlens mtl
    QuickCheck small-steps tasty tasty-hunit tasty-quickcheck text
  ];
  testHaskellDepends = [
    base bytestring cardano-crypto-class cardano-data
    cardano-ledger-allegra cardano-ledger-binary cardano-ledger-core
    cardano-ledger-mary cardano-ledger-shelley
    cardano-ledger-shelley-test cardano-protocol-tpraos
    cardano-slotting cardano-strict-containers cborg containers
    data-default-class deepseq groups microlens mtl QuickCheck
    small-steps small-steps-test tasty tasty-hunit tasty-quickcheck
  ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Shelley ledger with multiasset and time lock support";
  license = lib.licenses.asl20;
  broken = false;
}