{ mkDerivation, QuickCheck, base, lib, test-framework
, test-framework-quickcheck2
}:
mkDerivation {
  pname = "int-cast";
  version = "0.2.0.0";
  sha256 = "e006956a08b751a996a92828ccb728b7237c9c435c4b35b5169eb8d44ac51969";
  revision = "6";
  editedCabalFile = "11yvshlvp4ma279h9d4s1sdhlng4abar85crwkjsbjlvhfhlc3xw";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base ];
  testHaskellDepends = [
    base QuickCheck test-framework test-framework-quickcheck2
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/haskell-hvr/int-cast";
  description = "Checked conversions between integral types";
  license = lib.licenses.bsd3;
  broken = false;
}