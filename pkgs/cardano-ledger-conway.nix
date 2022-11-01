{ mkDerivation
, aeson
, base
, bytestring
, cardano-binary
, cardano-ledger-alonzo
, cardano-ledger-babbage
, cardano-ledger-core
, cardano-ledger-shelley
, cardano-ledger-shelley-ma
, cardano-strict-containers
, containers
, fetchgit
, lib
, microlens
, nothunks
}:
mkDerivation {
  pname = "cardano-ledger-conway";
  version = "0.1.0.0";
  src = fetchgit {
    url = "https://github.com/milloni/cardano-ledger";
    sha256 = "1gjfjbsj9zglxy2aas06nmr22629j1pd1nl3q584v5is6k8nxlsj";
    rev = "0d12cfa23aed9c355f66f69d7a1fcc6e82b68ea9";
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
    cardano-binary
    cardano-ledger-alonzo
    cardano-ledger-babbage
    cardano-ledger-core
    cardano-ledger-shelley
    cardano-ledger-shelley-ma
    cardano-strict-containers
    containers
    microlens
    nothunks
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
