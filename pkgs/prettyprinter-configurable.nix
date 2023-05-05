{ mkDerivation, Cabal, QuickCheck, base, cabal-doctest, doctest
, fetchgit, lib, megaparsec, microlens, mtl, parser-combinators
, prettyprinter, quickcheck-text, tasty, tasty-hunit
, tasty-quickcheck, text
}:
mkDerivation {
  pname = "prettyprinter-configurable";
  version = "1.1.0.0";
  src = fetchgit {
    url = "https://github.com/input-output-hk/plutus";
    sha256 = "13r06l98ndv9l4ph7mv4pv3djgq8iylp59m8lnm5hyfg59ypayr0";
    rev = "cfccccc8596859bfaa992100b11199301eb6d2bd";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/prettyprinter-configurable/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  setupHaskellDepends = [ base Cabal cabal-doctest doctest ];
  libraryHaskellDepends = [ base microlens mtl prettyprinter text ];
  testHaskellDepends = [
    base megaparsec parser-combinators QuickCheck quickcheck-text tasty
    tasty-hunit tasty-quickcheck text
  ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  license = "unknown";
  broken = false;
}