{ mkDerivation, base, lib }:
mkDerivation {
  pname = "Boolean";
  version = "0.2.4";
  sha256 = "67216013b02b8ac5b534a1ef25f409f930eea1a85eae801933a01ad43145eef8";
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
  description = "Generalized booleans and numbers";
  license = lib.licenses.bsd3;
  broken = false;
}
