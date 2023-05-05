{ mkDerivation, aeson, base, base16-bytestring, bytestring
, cardano-binary, cardano-mempool, cardano-strict-containers
, cryptonite, deepseq, fetchgit, heapwords, io-classes, lib
, libblst, libsodium, memory, mtl, nothunks, primitive, secp256k1
, serialise, template-haskell, text, th-compat, transformers
, vector
}:
mkDerivation {
  pname = "cardano-crypto-class";
  version = "2.2.0.0";
  src = fetchgit {
    url = "https://github.com/locallycompact/cardano-base";
    sha256 = "1kch4q7qxvnnb0c8mhvap6xia9mqz8l01i94cfz78z6yj2ybjqf1";
    rev = "e64551f135e6e968609be2e32e87cf7e962a0288";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/cardano-crypto-class/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson base base16-bytestring bytestring cardano-binary
    cardano-mempool cardano-strict-containers cryptonite deepseq
    heapwords io-classes memory mtl nothunks primitive serialise
    template-haskell text th-compat transformers vector
  ];
  libraryPkgconfigDepends = [ libblst libsodium secp256k1 ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Type classes abstracting over cryptography primitives for Cardano";
  license = lib.licenses.asl20;
  broken = false;
}