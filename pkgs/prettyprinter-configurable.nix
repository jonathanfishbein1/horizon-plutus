{ mkDerivation, Cabal, QuickCheck, base, cabal-doctest, doctest
, fetchzip, lib, megaparsec, microlens, mtl, parser-combinators
, prettyprinter, quickcheck-text, tasty, tasty-hunit
, tasty-quickcheck, text
}:
mkDerivation {
  pname = "prettyprinter-configurable";
  version = "1.11.0.0";
  src = fetchzip {
    url = "https://input-output-hk.github.io/cardano-haskell-packages/package/prettyprinter-configurable-1.11.0.0.tar.gz";
    sha256 = "0v9vx1rfcy9akjjjnyacya0b3mlva0xa0nxsppf3dfykj3hpf3m5";
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