{ mkDerivation, QuickCheck, base, bytestring, cardano-binary
, cardano-ledger-alonzo, cardano-ledger-babbage
, cardano-ledger-babbage-test, cardano-ledger-conway
, cardano-ledger-core, cardano-ledger-shelley
, cardano-ledger-shelley-ma, fetchgit, lib, microlens, tasty
, tasty-quickcheck
}:
mkDerivation {
  pname = "cardano-ledger-api";
  version = "0.1.0.0";
  src = fetchgit {
    url = "https://github.com/milloni/cardano-ledger";
    sha256 = "08nj6hcqj5apvb17n1irc8j7rzf10bcdh5gh1mkmhwbyw6h2d4ab";
    rev = "3aa1fd8469424778454644f0d371988fb4490b4a";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/libs/cardano-ledger-api/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base cardano-ledger-alonzo cardano-ledger-babbage
    cardano-ledger-conway cardano-ledger-core cardano-ledger-shelley
    cardano-ledger-shelley-ma microlens
  ];
  testHaskellDepends = [
    base bytestring cardano-binary cardano-ledger-alonzo
    cardano-ledger-babbage cardano-ledger-babbage-test
    cardano-ledger-core cardano-ledger-shelley microlens QuickCheck
    tasty tasty-quickcheck
  ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Public API for the cardano ledger codebase";
  license = lib.licenses.asl20;
  broken = false;
}