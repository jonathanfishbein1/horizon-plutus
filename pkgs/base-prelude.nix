{ mkDerivation, base, lib }:
mkDerivation {
  pname = "base-prelude";
  version = "1.6.1.1";
  sha256 = "8108af03f2c9d6dc4fe9e7033afc53f0472d1e520261cef0ec3e420b29521dd3";
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
  homepage = "https://github.com/nikita-volkov/base-prelude";
  description = "Featureful preludes formed solely from the \"base\" package";
  license = lib.licenses.mit;
  broken = false;
}