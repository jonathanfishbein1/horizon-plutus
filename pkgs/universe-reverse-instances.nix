{ mkDerivation, base, containers, lib, universe-base }:
mkDerivation {
  pname = "universe-reverse-instances";
  version = "1.1.1";
  sha256 = "c4127e12a6af8d8e05f87e546a57fdc0bd7b7f47eaf85d4a0f1826c998cdfb73";
  revision = "2";
  editedCabalFile = "1mp9222337rdcc6x5kg6hm14npbmq2igg0h6gmyvn1jd4x5cg9dx";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base containers universe-base ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/dmwit/universe";
  description = "Instances of standard classes that are made possible by enumerations";
  license = lib.licenses.bsd3;
  broken = false;
}
