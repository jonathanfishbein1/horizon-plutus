{ mkDerivation, QuickCheck, base, criterion, fetchgit, hspec, lib
}:
mkDerivation {
  pname = "OddWord";
  version = "1.0.2.0";
  src = fetchgit {
    url = "https://github.com/locallycompact/OddWord";
    sha256 = "043i8hzsfassn7zrs9f5vlpwmxaak66w40xlsvifvsdg66xn3ln8";
    rev = "ace47523b97ac2bc4dcdef5542927e5216e32afd";
    fetchSubmodules = true;
  };
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base ];
  testHaskellDepends = [ base hspec QuickCheck ];
  benchmarkHaskellDepends = [ base criterion ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://www.gekkou.co.uk/";
  description = "Provides a wrapper for deriving word types with fewer bits";
  license = lib.licenses.bsd3;
  broken = false;
}