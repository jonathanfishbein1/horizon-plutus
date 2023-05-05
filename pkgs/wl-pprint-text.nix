{ mkDerivation, base, base-compat, lib, text }:
mkDerivation {
  pname = "wl-pprint-text";
  version = "1.2.0.2";
  sha256 = "9215778d58ab9f71a4b8b5fb75c06438ff6ea7319a31eb6e97b4f67520dfb12b";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base base-compat text ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "A Wadler/Leijen Pretty Printer for Text values";
  license = lib.licenses.bsd3;
  broken = false;
}