{ mkDerivation, base, bytestring, cardano-binary
, cardano-crypto-class, deepseq, fetchzip, lib, libsodium, nothunks
}:
mkDerivation {
  pname = "cardano-crypto-praos";
  version = "2.1.2.0";
  src = fetchzip {
    url = "https://input-output-hk.github.io/cardano-haskell-packages/package/cardano-crypto-praos-2.1.2.0.tar.gz";
    sha256 = "195krv2vyx7zngdgiv3csv6m0b8vg6xhfrf0vqwc0dp3yavhdwiz";
  };
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