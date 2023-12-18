{ mkDerivation, aeson, base, base16-bytestring, bytestring
, cardano-binary, cardano-strict-containers, cryptonite, deepseq
, fetchzip, heapwords, lib, libblst, libsodium, memory, nothunks
, primitive, secp256k1, serialise, template-haskell, text
, th-compat, transformers, vector
}:
mkDerivation {
  pname = "cardano-crypto-class";
  version = "2.1.2.0";
  src = fetchzip {
    url = "https://chap.intersectmbo.org/package/cardano-crypto-class-2.1.2.0.tar.gz";
    sha256 = "0248v82hs35976q5czkqvz9k2pdjrjghydgrdly9fzfhw5xlw1sr";
  };
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson base base16-bytestring bytestring cardano-binary
    cardano-strict-containers cryptonite deepseq heapwords memory
    nothunks primitive serialise template-haskell text th-compat
    transformers vector
  ];
  libraryPkgconfigDepends = [ libblst libsodium secp256k1 ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Type classes abstracting over cryptography primitives for Cardano";
  license = lib.licenses.asl20;
  broken = false;
}