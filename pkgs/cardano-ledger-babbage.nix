{ mkDerivation
, base
, bytestring
, cardano-binary
, cardano-crypto-class
, cardano-data
, cardano-ledger-alonzo
, cardano-ledger-core
, cardano-ledger-shelley
, cardano-ledger-shelley-ma
, cardano-slotting
, cardano-strict-containers
, containers
, data-default
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
  pname = "cardano-ledger-babbage";
  version = "0.1.0.0";
  src = fetchgit {
    url = "https://github.com/milloni/cardano-ledger";
    sha256 = "1gjfjbsj9zglxy2aas06nmr22629j1pd1nl3q584v5is6k8nxlsj";
    rev = "0d12cfa23aed9c355f66f69d7a1fcc6e82b68ea9";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/eras/babbage/impl/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    bytestring
    cardano-binary
    cardano-crypto-class
    cardano-data
    cardano-ledger-alonzo
    cardano-ledger-core
    cardano-ledger-shelley
    cardano-ledger-shelley-ma
    cardano-slotting
    cardano-strict-containers
    containers
    data-default
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
  description = "TODO";
  license = lib.licenses.asl20;
  broken = false;
}
