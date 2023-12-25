{ mkDerivation, Cabal, QuickCheck, base, cabal-doctest, doctest
, fetchzip, lib, megaparsec, microlens, mtl, parser-combinators
, prettyprinter, quickcheck-text, tasty, tasty-hunit
, tasty-quickcheck, text
}:
mkDerivation {
  pname = "prettyprinter-configurable";
  version = "1.19.0.0";
  src = fetchzip {
    url = "https://chap.intersectmbo.org/package/prettyprinter-configurable-1.19.0.0.tar.gz";
    sha256 = "1ajx23qv7mscyhl6b1pqc1xkizq4ywsf5h6lvmp4yycigcl9nhn8";
  };
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  setupHaskellDepends = [ base Cabal cabal-doctest doctest ];
  libraryHaskellDepends = [ base microlens mtl prettyprinter text ];
  testHaskellDepends = [
    base megaparsec parser-combinators QuickCheck quickcheck-text tasty
    tasty-hunit tasty-quickcheck text
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  license = "unknown";
  broken = false;
}