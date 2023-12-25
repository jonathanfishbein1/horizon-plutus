{ mkDerivation, base, bytestring, containers, ghc-heap, ghc-prim
, hedgehog, lib, random, stm, tasty, tasty-hedgehog, text, time
, vector
}:
mkDerivation {
  pname = "nothunks";
  version = "0.1.5";
  sha256 = "9c7c0a385211c5d1427db156896a56fc05b0374d575c429a1c7a09f3ca23bde8";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base bytestring containers ghc-heap stm text time vector
  ];
  testHaskellDepends = [
    base containers ghc-prim hedgehog random stm tasty tasty-hedgehog
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Examine values for unexpected thunks";
  license = lib.licenses.asl20;
  broken = false;
}