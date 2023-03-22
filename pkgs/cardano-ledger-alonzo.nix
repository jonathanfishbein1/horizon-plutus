{ mkDerivation, aeson, array, base, base-deriving-via
, base64-bytestring, bytestring, cardano-binary
, cardano-crypto-class, cardano-data, cardano-ledger-core
, cardano-ledger-shelley, cardano-ledger-shelley-ma
, cardano-slotting, cardano-strict-containers, containers
, data-default, deepseq, fetchgit, heapwords, lib, measures
, microlens, mtl, nothunks, plutus-core, plutus-ledger-api
, prettyprinter, scientific, serialise, set-algebra, small-steps
, text, time, transformers, utf8-string, validation-selective
}:
mkDerivation {
  pname = "cardano-ledger-alonzo";
  version = "0.1.0.0";
  src = fetchgit {
    url = "https://github.com/milloni/cardano-ledger";
    sha256 = "08nj6hcqj5apvb17n1irc8j7rzf10bcdh5gh1mkmhwbyw6h2d4ab";
    rev = "3aa1fd8469424778454644f0d371988fb4490b4a";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/eras/alonzo/impl/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson array base base-deriving-via base64-bytestring bytestring
    cardano-binary cardano-crypto-class cardano-data
    cardano-ledger-core cardano-ledger-shelley
    cardano-ledger-shelley-ma cardano-slotting
    cardano-strict-containers containers data-default deepseq heapwords
    measures microlens mtl nothunks plutus-core plutus-ledger-api
    prettyprinter scientific serialise set-algebra small-steps text
    time transformers utf8-string validation-selective
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