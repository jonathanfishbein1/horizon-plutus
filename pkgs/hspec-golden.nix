{ mkDerivation
, base
, directory
, filepath
, hspec
, hspec-core
, lib
, optparse-applicative
, silently
}:
mkDerivation {
  pname = "hspec-golden";
  version = "0.2.0.0";
  sha256 = "d322dd7d625dd3f1c5fd30e7965be127744bfa0f6b337983352f44d1c771e969";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base directory filepath hspec-core ];
  executableHaskellDepends = [ base directory optparse-applicative ];
  testHaskellDepends = [ base directory hspec hspec-core silently ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/stackbuilders/hspec-golden#readme";
  description = "Golden tests for hspec";
  license = lib.licenses.mit;
  broken = false;
}
