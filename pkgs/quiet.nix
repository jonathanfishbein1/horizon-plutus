{ mkDerivation, base, lib }:
mkDerivation {
  pname = "quiet";
  version = "0.2";
  sha256 = "118bf67379dce4737619998380e399acba306dc8a086a069d4a01d5694325e4c";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base ];
  testHaskellDepends = [ base ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/jacobstanley/quiet#readme";
  description = "Generic deriving of Read/Show with no record labels";
  license = lib.licenses.bsd3;
  broken = false;
}
