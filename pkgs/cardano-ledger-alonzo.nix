{ mkDerivation, FailT, aeson, base, base-deriving-via
, base64-bytestring, bytestring, cardano-crypto-class, cardano-data
, cardano-ledger-allegra, cardano-ledger-binary
, cardano-ledger-core, cardano-ledger-mary, cardano-ledger-shelley
, cardano-slotting, cardano-strict-containers, containers
, data-default-class, deepseq, fetchgit, heapwords, lib, measures
, microlens, mtl, nothunks, plutus-core, plutus-ledger-api
, prettyprinter, scientific, serialise, set-algebra, small-steps
, text, time, transformers, tree-diff, utf8-string
, validation-selective
}:
mkDerivation {
  pname = "cardano-ledger-alonzo";
  version = "1.1.1.0";
  src = fetchgit {
    url = "https://github.com/input-output-hk/cardano-ledger";
    sha256 = "015b386n97xlp6d26s9njs5w75wv3i82jh1iywksifqyz2539wg6";
    rev = "62846d6de6464095ab7aae6d7f466c5173460937";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/eras/alonzo/impl/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson base base-deriving-via base64-bytestring bytestring
    cardano-crypto-class cardano-data cardano-ledger-allegra
    cardano-ledger-binary cardano-ledger-core cardano-ledger-mary
    cardano-ledger-shelley cardano-slotting cardano-strict-containers
    containers data-default-class deepseq FailT heapwords measures
    microlens mtl nothunks plutus-core plutus-ledger-api prettyprinter
    scientific serialise set-algebra small-steps text time transformers
    tree-diff utf8-string validation-selective
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