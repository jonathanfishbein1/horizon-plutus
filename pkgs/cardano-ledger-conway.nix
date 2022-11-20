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
    sha256 = "08nj6hcqj5apvb17n1irc8j7rzf10bcdh5gh1mkmhwbyw6h2d4ab";
    rev = "3aa1fd8469424778454644f0d371988fb4490b4a";
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
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "TODO";
  license = lib.licenses.asl20;
  broken = false;
}
