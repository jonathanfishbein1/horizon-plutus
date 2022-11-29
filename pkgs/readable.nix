{ mkDerivation, base, bytestring, lib, text }:
mkDerivation {
  pname = "readable";
  version = "0.3.1";
  sha256 = "703037ad2cca4d6d42ba23e2758d1911cd82e3e922c4078076c273231e4b43c9";
  revision = "1";
  editedCabalFile = "0dywlvxjszqa1dj5r1cva0viv2l1hm8mw75zddnf96pfpd00fmga";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base bytestring text ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/mightybyte/readable";
  description = "Reading from Text and ByteString";
  license = lib.licenses.bsd3;
  broken = false;
}
