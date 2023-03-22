{ mkDerivation, base, bech32, bytestring, cardano-crypto-class
, cardano-ledger-alonzo, cardano-ledger-babbage
, cardano-ledger-byron, cardano-ledger-core, cardano-ledger-shelley
, cardano-ledger-shelley-ma, cardano-protocol-tpraos
, cardano-slotting, cardano-strict-containers, containers, fetchgit
, hashable, iproute, lib, microlens, plutus-ledger-api
, prettyprinter, small-steps, text, vector-map
}:
mkDerivation {
  pname = "cardano-ledger-pretty";
  version = "0.1.0.0";
  src = fetchgit {
    url = "https://github.com/milloni/cardano-ledger";
    sha256 = "08nj6hcqj5apvb17n1irc8j7rzf10bcdh5gh1mkmhwbyw6h2d4ab";
    rev = "3aa1fd8469424778454644f0d371988fb4490b4a";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/libs/cardano-ledger-pretty/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base bech32 bytestring cardano-crypto-class cardano-ledger-alonzo
    cardano-ledger-babbage cardano-ledger-byron cardano-ledger-core
    cardano-ledger-shelley cardano-ledger-shelley-ma
    cardano-protocol-tpraos cardano-slotting cardano-strict-containers
    containers hashable iproute microlens plutus-ledger-api
    prettyprinter small-steps text vector-map
  ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Pretty-printers for Cardano ledger datatypes";
  license = lib.licenses.asl20;
  broken = false;
}