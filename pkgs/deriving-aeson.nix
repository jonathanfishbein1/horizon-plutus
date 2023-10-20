{ mkDerivation, aeson, base, bytestring, lib }:
mkDerivation {
  pname = "deriving-aeson";
  version = "0.2.9";
  sha256 = "c0b2975df7ed5ba668982ba442318c36adfe8be3c32dcf136c13bf9662261833";
  revision = "1";
  editedCabalFile = "14iqkk7vs0lb0sgq159z0xw95pa87r60i1f4m17gfh2gbbddcywm";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ aeson base ];
  testHaskellDepends = [ aeson base bytestring ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Type driven generic aeson instance customisation";
  license = lib.licenses.bsd3;
  broken = false;
}