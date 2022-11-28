{ mkDerivation
, aeson
, base
, cardano-strict-containers
, containers
, data-default-class
, fetchgit
, free
, lib
, mtl
, nothunks
, text
, transformers
, validation-selective
}:
mkDerivation {
  pname = "small-steps";
  version = "0.1.0.0";
  src = fetchgit {
    url = "https://github.com/milloni/cardano-ledger";
    sha256 = "08nj6hcqj5apvb17n1irc8j7rzf10bcdh5gh1mkmhwbyw6h2d4ab";
    rev = "3aa1fd8469424778454644f0d371988fb4490b4a";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/libs/small-steps/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson
    base
    cardano-strict-containers
    containers
    data-default-class
    free
    mtl
    nothunks
    text
    transformers
    validation-selective
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/input-output-hk/cardano-ledger";
  description = "Small step semantics";
  license = lib.licenses.asl20;
  broken = false;
}
