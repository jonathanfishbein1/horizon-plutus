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
    sha256 = "0lfd6l3pzlwipvvv1i4v47ha25qmx0vxc1k23g71f17lzakjs4gm";
    rev = "81548171f2cd336714bb0425640a6553c46aa09e";
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