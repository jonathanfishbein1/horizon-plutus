{ mkDerivation, aeson, base, base16-bytestring, bytestring
, cardano-binary, cardano-strict-containers, cryptonite, deepseq
, fetchgit, heapwords, lib, libsodium, memory, nothunks, primitive
, secp256k1, serialise, template-haskell, text, th-compat
, transformers, unix, vector
}:
mkDerivation {
  pname = "cardano-crypto-class";
  version = "2.0.0.1";
  src = fetchgit {
    url = "https://github.com/input-output-hk/cardano-base";
    sha256 = "0qn56ahqmy79riwyaq5m0d4vpamdjkkk04b0x8zwlyd5y3pg58xd";
    rev = "46cd4c97cff9f1f0a0da976aa9e32bd2899c85ee";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/cardano-crypto-class/; echo source root reset to $sourceRoot";
  libraryHaskellDepends = [
    aeson base base16-bytestring bytestring cardano-binary
    cardano-strict-containers cryptonite deepseq heapwords memory
    nothunks primitive serialise template-haskell text th-compat
    transformers vector
  ];
  libraryPkgconfigDepends = [ libsodium secp256k1 ];
  testHaskellDepends = [ base bytestring unix ];
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  hyperlinkSource = false;
  description = "Type classes abstracting over cryptography primitives for Cardano";
  license = lib.licenses.asl20;
}