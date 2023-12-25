{ mkDerivation, QuickCheck, base, deepseq, lib, primitive, tasty
, tasty-quickcheck, vector
}:
mkDerivation {
  pname = "nonempty-vector";
  version = "0.2.3";
  sha256 = "0a3702141421076416928f73d3ee6c66a920533ad02a9a771bc0bfc404d7aca3";
  revision = "1";
  editedCabalFile = "0kn1s5ssan9m4xwf10y2ymba4zw2j18j6dvbpr6iral3rrlgngdw";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base deepseq primitive vector ];
  testHaskellDepends = [
    base QuickCheck tasty tasty-quickcheck vector
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/emilypi/nonempty-vector";
  description = "Non-empty vectors";
  license = lib.licenses.bsd3;
  broken = false;
}