{ mkDerivation, QuickCheck, base, checkers, containers, deepseq
, doctest, lib, tasty, tasty-quickcheck
}:
mkDerivation {
  pname = "multiset";
  version = "0.3.4.3";
  sha256 = "79fcae15a5d3ce28f0b973ad90290f7451396e81cc92007456ce2bb49b9415c4";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base containers deepseq ];
  testHaskellDepends = [
    base checkers doctest QuickCheck tasty tasty-quickcheck
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "The Data.MultiSet container type";
  license = lib.licenses.bsd3;
  broken = false;
}