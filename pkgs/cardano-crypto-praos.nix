{ mkDerivation
, base
, bytestring
, cardano-binary
, cardano-crypto-class
, deepseq
, fetchgit
, lib
, libsodium
, nothunks
}:
mkDerivation {
  pname = "cardano-crypto-praos";
  version = "2.0.0.1";
  src = fetchgit {
    url = "https://github.com/input-output-hk/cardano-base";
    sha256 = "0qn56ahqmy79riwyaq5m0d4vpamdjkkk04b0x8zwlyd5y3pg58xd";
    rev = "46cd4c97cff9f1f0a0da976aa9e32bd2899c85ee";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/cardano-crypto-praos/; echo source root reset to $sourceRoot";
  libraryHaskellDepends = [
    base
    bytestring
    cardano-binary
    cardano-crypto-class
    deepseq
    nothunks
  ];
  libraryPkgconfigDepends = [ libsodium ];
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  hyperlinkSource = false;
  description = "Crypto primitives from libsodium";
  license = lib.licenses.asl20;
}
