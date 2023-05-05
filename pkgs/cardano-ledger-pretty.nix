{ mkDerivation, base, bech32, bytestring, cardano-crypto-class
, cardano-ledger-allegra, cardano-ledger-alonzo
, cardano-ledger-babbage, cardano-ledger-byron
, cardano-ledger-conway, cardano-ledger-core, cardano-ledger-mary
, cardano-ledger-shelley, cardano-protocol-tpraos, cardano-slotting
, cardano-strict-containers, containers, fetchgit, hashable
, iproute, lib, microlens, plutus-ledger-api, prettyprinter
, small-steps, text, vector-map
}:
mkDerivation {
  pname = "cardano-ledger-pretty";
  version = "1.1.0.0";
  src = fetchgit {
    url = "https://github.com/input-output-hk/cardano-ledger";
    sha256 = "0lfd6l3pzlwipvvv1i4v47ha25qmx0vxc1k23g71f17lzakjs4gm";
    rev = "81548171f2cd336714bb0425640a6553c46aa09e";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/libs/cardano-ledger-pretty/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base bech32 bytestring cardano-crypto-class cardano-ledger-allegra
    cardano-ledger-alonzo cardano-ledger-babbage cardano-ledger-byron
    cardano-ledger-conway cardano-ledger-core cardano-ledger-mary
    cardano-ledger-shelley cardano-protocol-tpraos cardano-slotting
    cardano-strict-containers containers hashable iproute microlens
    plutus-ledger-api prettyprinter small-steps text vector-map
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