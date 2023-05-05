{ mkDerivation, base, bytestring, cardano-binary
, cardano-crypto-class, deepseq, fetchgit, lib, libsodium, nothunks
}:
mkDerivation {
  pname = "cardano-crypto-praos";
  version = "2.1.1.2";
  src = fetchgit {
    url = "https://github.com/locallycompact/cardano-base";
    sha256 = "1kch4q7qxvnnb0c8mhvap6xia9mqz8l01i94cfz78z6yj2ybjqf1";
    rev = "e64551f135e6e968609be2e32e87cf7e962a0288";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/cardano-crypto-praos/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base bytestring cardano-binary cardano-crypto-class deepseq
    nothunks
  ];
  libraryPkgconfigDepends = [ libsodium ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Crypto primitives from libsodium";
  license = lib.licenses.asl20;
  broken = false;
}