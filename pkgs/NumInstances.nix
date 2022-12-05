{ mkDerivation, base, lib }:
mkDerivation {
  pname = "NumInstances";
  version = "1.4";
  sha256 = "cbdb2a49346f59ceb5ab38592d7bc52e5205580d431d0ac6d852fd9880e59679";
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
  homepage = "https://github.com/conal/NumInstances";
  description = "Instances of numeric classes for functions and tuples";
  license = lib.licenses.bsd3;
  broken = false;
}
