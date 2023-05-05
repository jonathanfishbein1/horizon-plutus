{ mkDerivation
, base
, bech32
, bytestring
, cardano-crypto-class
, cardano-ledger-allegra
, cardano-ledger-alonzo
, cardano-ledger-babbage
, cardano-ledger-byron
, cardano-ledger-conway
, cardano-ledger-core
, cardano-ledger-mary
, cardano-ledger-shelley
, cardano-protocol-tpraos
, cardano-slotting
, cardano-strict-containers
, containers
, fetchgit
, hashable
, iproute
, lib
, microlens
, plutus-ledger-api
, prettyprinter
, small-steps
, text
, vector-map
}:
mkDerivation {
  pname = "cardano-ledger-pretty";
  version = "1.1.1.0";
  src = fetchgit {
    url = "https://github.com/input-output-hk/cardano-ledger";
    sha256 = "120995ssz1nf21pp52xwhmcs4cdfndzv4459l8cjvwbaygs7nvvl";
    rev = "180271602640bcac1214084b6de61d0468332f00";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/libs/cardano-ledger-pretty/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    bech32
    bytestring
    cardano-crypto-class
    cardano-ledger-allegra
    cardano-ledger-alonzo
    cardano-ledger-babbage
    cardano-ledger-byron
    cardano-ledger-conway
    cardano-ledger-core
    cardano-ledger-mary
    cardano-ledger-shelley
    cardano-protocol-tpraos
    cardano-slotting
    cardano-strict-containers
    containers
    hashable
    iproute
    microlens
    plutus-ledger-api
    prettyprinter
    small-steps
    text
    vector-map
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
