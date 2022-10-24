{ mkDerivation
, aeson
, base
, cardano-binary
, cborg
, containers
, data-default-class
, deepseq
, fetchgit
, fingertree
, lib
, nothunks
, serialise
}:
mkDerivation {
  pname = "cardano-strict-containers";
  version = "0.1.0.1";
  src = fetchgit {
    url = "https://github.com/input-output-hk/cardano-base";
    sha256 = "0qn56ahqmy79riwyaq5m0d4vpamdjkkk04b0x8zwlyd5y3pg58xd";
    rev = "46cd4c97cff9f1f0a0da976aa9e32bd2899c85ee";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/cardano-strict-containers/; echo source root reset to $sourceRoot";
  libraryHaskellDepends = [
    aeson
    base
    cardano-binary
    cborg
    containers
    data-default-class
    deepseq
    fingertree
    nothunks
    serialise
  ];
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  hyperlinkSource = false;
  description = "Various strict container types";
  license = lib.licenses.asl20;
}
