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
    sha256 = "015b386n97xlp6d26s9njs5w75wv3i82jh1iywksifqyz2539wg6";
    rev = "62846d6de6464095ab7aae6d7f466c5173460937";
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