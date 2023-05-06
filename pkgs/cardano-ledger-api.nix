{ mkDerivation, array, base, bytestring, cardano-ledger-allegra
, cardano-ledger-alonzo, cardano-ledger-babbage
, cardano-ledger-binary, cardano-ledger-conway, cardano-ledger-core
, cardano-ledger-mary, cardano-ledger-shelley, cardano-slotting
, cardano-strict-containers, containers, fetchgit, lib, microlens
, plutus-ledger-api, text
}:
mkDerivation {
  pname = "cardano-ledger-api";
  version = "1.1.0.0";
  src = fetchgit {
    url = "https://github.com/input-output-hk/cardano-ledger";
    sha256 = "015b386n97xlp6d26s9njs5w75wv3i82jh1iywksifqyz2539wg6";
    rev = "62846d6de6464095ab7aae6d7f466c5173460937";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/libs/cardano-ledger-api/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    array base bytestring cardano-ledger-allegra cardano-ledger-alonzo
    cardano-ledger-babbage cardano-ledger-binary cardano-ledger-conway
    cardano-ledger-core cardano-ledger-mary cardano-ledger-shelley
    cardano-slotting containers microlens plutus-ledger-api text
  ];
  testHaskellDepends = [
    base bytestring cardano-ledger-babbage cardano-ledger-binary
    cardano-ledger-conway cardano-ledger-core cardano-ledger-shelley
    cardano-strict-containers containers microlens
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