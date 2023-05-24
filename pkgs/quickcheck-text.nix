{ mkDerivation, QuickCheck, base, binary, bytestring, lib, text }:
mkDerivation {
  pname = "quickcheck-text";
  version = "0.1.2.1";
  sha256 = "4442fdb8ae6cd469c04957d34fee46039c9dc0ddce23ce6050babe6826d0ab09";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base binary bytestring QuickCheck text ];
  testHaskellDepends = [ base bytestring QuickCheck text ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/olorin/quickcheck-text";
  description = "Alternative arbitrary instance for Text";
  license = lib.licenses.mit;
  broken = false;
}