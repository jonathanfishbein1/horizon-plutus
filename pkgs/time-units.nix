{ mkDerivation, base, lib }:
mkDerivation {
  pname = "time-units";
  version = "1.0.0";
  sha256 = "e181997dd05321f09b21c5e0bf38524ccab51ecc588a6017253cc96db289e099";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://github.com/acw/time-units";
  description = "A basic library for defining units of time as types";
  license = lib.licenses.bsd3;
  broken = false;
}
