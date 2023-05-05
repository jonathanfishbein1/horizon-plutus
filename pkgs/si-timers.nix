{ mkDerivation, QuickCheck, base, io-classes, lib, mtl, stm, tasty
, tasty-quickcheck, time
}:
mkDerivation {
  pname = "si-timers";
  version = "1.1.0.0";
  sha256 = "219751c489343374a382c9ef9664395c2ae5f89c1986ce5aa37e17390e5090f5";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base io-classes mtl stm time ];
  testHaskellDepends = [ base QuickCheck tasty tasty-quickcheck ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "timers using SI units (seconds)";
  license = lib.licenses.asl20;
  broken = false;
}