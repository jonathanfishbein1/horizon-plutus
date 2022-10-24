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
    sha256 = "0vzz5a3alzl4hh62krifc0qzc03pxpm42szhxq0p88qvjjy3cwkj";
    rev = "2857b079bdab6e1545c60c614157ba8e7d19233e";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/libs/small-steps/; echo source root reset to $sourceRoot";
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
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  hyperlinkSource = false;
  homepage = "https://github.com/input-output-hk/cardano-ledger";
  description = "Small step semantics";
  license = lib.licenses.asl20;
}
