{ mkDerivation
, FailT
, aeson
, base
, base-deriving-via
, base64-bytestring
, bytestring
, cardano-crypto-class
, cardano-data
, cardano-ledger-allegra
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
, heapwords
, lib
, measures
, microlens
, mtl
, nothunks
, plutus-core
, plutus-ledger-api
, prettyprinter
, scientific
, serialise
, set-algebra
, small-steps
, text
, time
, transformers
, tree-diff
, utf8-string
, validation-selective
}:
mkDerivation {
  pname = "cardano-ledger-alonzo";
  version = "1.2.0.0";
  src = fetchgit {
    url = "https://github.com/input-output-hk/cardano-ledger";
    sha256 = "120995ssz1nf21pp52xwhmcs4cdfndzv4459l8cjvwbaygs7nvvl";
    rev = "180271602640bcac1214084b6de61d0468332f00";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/eras/alonzo/impl/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson
    base
    base-deriving-via
    base64-bytestring
    bytestring
    cardano-crypto-class
    cardano-data
    cardano-ledger-allegra
    cardano-ledger-binary
    cardano-ledger-core
    cardano-ledger-mary
    cardano-ledger-shelley
    cardano-slotting
    cardano-strict-containers
    containers
    data-default-class
    deepseq
    FailT
    heapwords
    measures
    microlens
    mtl
    nothunks
    plutus-core
    plutus-ledger-api
    prettyprinter
    scientific
    serialise
    set-algebra
    small-steps
    text
    time
    transformers
    tree-diff
    utf8-string
    validation-selective
  ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Cardano ledger introducing Plutus Core";
  license = lib.licenses.asl20;
  broken = false;
}
