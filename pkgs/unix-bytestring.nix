{ mkDerivation, base, bytestring, lib }:
mkDerivation {
  pname = "unix-bytestring";
  version = "0.4.0";
  sha256 = "0466a30964af0e4b3874adcfed1a486b480b10a12532bfd13a7a26b39d0fef6e";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base bytestring ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://wrengr.org/software/hackage.html";
  description = "Unix/Posix-specific functions for ByteStrings";
  license = lib.licenses.bsd3;
  broken = false;
}