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
  version = "1.0.0.0";
  src = fetchgit {
    url = "https://github.com/input-output-hk/cardano-ledger";
    sha256 = "120995ssz1nf21pp52xwhmcs4cdfndzv4459l8cjvwbaygs7nvvl";
    rev = "180271602640bcac1214084b6de61d0468332f00";
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
