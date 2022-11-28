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
    sha256 = "08nj6hcqj5apvb17n1irc8j7rzf10bcdh5gh1mkmhwbyw6h2d4ab";
    rev = "3aa1fd8469424778454644f0d371988fb4490b4a";
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
