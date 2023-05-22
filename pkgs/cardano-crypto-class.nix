{ mkDerivation, aeson, base, base16-bytestring, bytestring
, cardano-binary, cardano-strict-containers, cryptonite, deepseq
, fetchzip, heapwords, lib, libsodium, memory, nothunks, primitive
, secp256k1, serialise, template-haskell, text, th-compat
, transformers, vector
}:
mkDerivation {
  pname = "cardano-crypto-class";
  version = "2.1.1.0";
  src = fetchzip {
    url = "https://input-output-hk.github.io/cardano-haskell-packages/package/cardano-crypto-class-2.1.1.0.tar.gz";
    sha256 = "1w73hsycpr100209y7jpk9kb78r6hyq1607b4q1lvgzpb0wgrfl6";
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
  libraryPkgconfigDepends = [ libsodium secp256k1 ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Type classes abstracting over cryptography primitives for Cardano";
  license = lib.licenses.asl20;
  broken = false;
}