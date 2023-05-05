{ mkDerivation, base, bytestring, cardano-binary
, cardano-crypto-class, deepseq, fetchgit, lib, libsodium, nothunks
}:
mkDerivation {
  pname = "cardano-crypto-praos";
  version = "2.1.1.1";
  src = fetchgit {
    url = "https://github.com/locallycompact/cardano-base";
    sha256 = "0n3w1k30ivdppyidyws9riy1qyx4881gxw8v1v34sixbraj0ng5k";
    rev = "f954aec4fbe11ba96729ddcc5e22c13ab6320b5d";
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
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Crypto primitives from libsodium";
  license = lib.licenses.asl20;
  broken = false;
}