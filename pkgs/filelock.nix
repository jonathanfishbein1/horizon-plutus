{ mkDerivation, async, base, lib, process, unix }:
mkDerivation {
  pname = "filelock";
  version = "0.1.1.5";
  sha256 = "50ebea81e8443356af26f32221d4594709d94102445931673fcd94a44e244419";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base unix ];
  testHaskellDepends = [ async base process ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://github.com/takano-akio/filelock";
  description = "Portable interface to file locking (flock / LockFileEx)";
  license = lib.licenses.publicDomain;
  broken = false;
}
