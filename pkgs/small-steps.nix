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
    sha256 = "0qwq9ddsdq2kps5j1mpznxbh8lvq3qf54587kch1m0bya086bmxx";
    rev = "e95d4aa2d7e39c856e8b0aaae3610ffb2391ac19";
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
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
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
