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
    sha256 = "015b386n97xlp6d26s9njs5w75wv3i82jh1iywksifqyz2539wg6";
    rev = "62846d6de6464095ab7aae6d7f466c5173460937";
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