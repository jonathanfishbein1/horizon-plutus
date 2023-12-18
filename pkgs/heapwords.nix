{ mkDerivation, array, base, bytestring, containers, fetchzip
, ghc-prim, lib, text, time, vector
}:
mkDerivation {
  pname = "heapwords";
  version = "0.1.0.2";
  src = fetchzip {
    url = "https://chap.intersectmbo.org/package/heapwords-0.1.0.2.tar.gz";
    sha256 = "0h5vmz957a4nzwjl5m7s82zms2f1g4imbggxph30l0lwgxhcy9m8";
  };
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    array base bytestring containers ghc-prim text time vector
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Heapwords";
  license = lib.licenses.asl20;
  broken = false;
}