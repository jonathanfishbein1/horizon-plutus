{ mkDerivation, base, fetchgit, lib }:
mkDerivation {
  pname = "Win32-network";
  version = "0.1.1.0";
  src = fetchgit {
    url = "https://github.com/input-output-hk/Win32-network";
    sha256 = "0g2a962vzs099xvq9qzsfcc3avqsywkrl6gpyw6pr8429fgw90lw";
    rev = "1a6bd1f67d1463d7243ab4c34fc4f7d84ee0554a";
    fetchSubmodules = true;
  };
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base ];
  executableHaskellDepends = [ base ];
  testHaskellDepends = [ base ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Win32 network API";
  license = lib.licenses.asl20;
  broken = false;
}