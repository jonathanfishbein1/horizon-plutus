{ mkDerivation, base, lib }:
mkDerivation {
  pname = "testing-type-modifiers";
  version = "0.1.0.1";
  sha256 = "050bdade2c6f0122b1a04a3833ab7eea2399ffda8258bca6d93ba6614bb202f2";
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
  description = "Data type modifiers for property based testing";
  license = lib.licenses.publicDomain;
  broken = false;
}
