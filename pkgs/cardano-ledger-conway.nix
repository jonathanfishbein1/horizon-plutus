{ mkDerivation
, aeson
, base
, bytestring
, cardano-crypto-class
, cardano-ledger-allegra
, cardano-ledger-alonzo
, cardano-ledger-babbage
, cardano-ledger-binary
, cardano-ledger-core
, cardano-ledger-mary
, cardano-ledger-shelley
, cardano-slotting
, cardano-strict-containers
, containers
, data-default-class
, deepseq
, fetchgit
, lib
, microlens
, nothunks
, plutus-ledger-api
, set-algebra
, small-steps
, text
, transformers
, validation-selective
}:
mkDerivation {
  pname = "cardano-ledger-conway";
  version = "1.2.0.0";
  src = fetchgit {
    url = "https://github.com/input-output-hk/cardano-ledger";
    sha256 = "120995ssz1nf21pp52xwhmcs4cdfndzv4459l8cjvwbaygs7nvvl";
    rev = "180271602640bcac1214084b6de61d0468332f00";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/eras/conway/impl/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson
    base
    bytestring
    cardano-crypto-class
    cardano-ledger-allegra
    cardano-ledger-alonzo
    cardano-ledger-babbage
    cardano-ledger-binary
    cardano-ledger-core
    cardano-ledger-mary
    cardano-ledger-shelley
    cardano-slotting
    cardano-strict-containers
    containers
    data-default-class
    deepseq
    microlens
    nothunks
    plutus-ledger-api
    set-algebra
    small-steps
    text
    transformers
    validation-selective
  ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Cardano ledger with an updated on-chain governance system";
  license = lib.licenses.asl20;
  broken = false;
}
