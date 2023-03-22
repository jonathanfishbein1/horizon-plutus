{ mkDerivation, QuickCheck, base, base16-bytestring, bytestring
, cardano-binary, cardano-crypto-class, cardano-data
, cardano-ledger-core, cardano-ledger-pretty
, cardano-ledger-shelley, cardano-ledger-shelley-ma
, cardano-ledger-shelley-test, cardano-protocol-tpraos
, cardano-slotting, cardano-strict-containers, cborg, containers
, data-default-class, fetchgit, generic-random, hashable, lib
, microlens, mtl, small-steps, small-steps-test, tasty, tasty-hunit
, tasty-quickcheck, text
}:
mkDerivation {
  pname = "cardano-ledger-shelley-ma-test";
  version = "0.1.0.0";
  src = fetchgit {
    url = "https://github.com/milloni/cardano-ledger";
    sha256 = "08nj6hcqj5apvb17n1irc8j7rzf10bcdh5gh1mkmhwbyw6h2d4ab";
    rev = "3aa1fd8469424778454644f0d371988fb4490b4a";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/eras/shelley-ma/test-suite/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = true;
  libraryHaskellDepends = [
    base base16-bytestring bytestring cardano-binary
    cardano-crypto-class cardano-data cardano-ledger-core
    cardano-ledger-pretty cardano-ledger-shelley
    cardano-ledger-shelley-ma cardano-ledger-shelley-test
    cardano-slotting cardano-strict-containers containers
    generic-random hashable microlens mtl QuickCheck small-steps tasty
    tasty-hunit tasty-quickcheck text
  ];
  testHaskellDepends = [
    base bytestring cardano-binary cardano-data cardano-ledger-core
    cardano-ledger-shelley cardano-ledger-shelley-ma
    cardano-ledger-shelley-test cardano-protocol-tpraos
    cardano-slotting cardano-strict-containers cborg containers
    data-default-class microlens mtl QuickCheck small-steps
    small-steps-test tasty tasty-hunit tasty-quickcheck
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