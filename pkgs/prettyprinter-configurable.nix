{ mkDerivation
, Cabal
, QuickCheck
, base
, cabal-doctest
, doctest
, fetchgit
, lib
, megaparsec
, microlens
, mtl
, parser-combinators
, prettyprinter
, quickcheck-text
, tasty
, tasty-hunit
, tasty-quickcheck
, text
}:
mkDerivation {
  pname = "prettyprinter-configurable";
  version = "1.1.0.0";
  src = fetchgit {
    url = "https://github.com/input-output-hk/plutus";
    sha256 = "0wxydqj949hi1zzybblfwmbj5j05sy51kn3byhpnizspqjjcjb07";
    rev = "b94d0e001c8f7350b5120b20cbc9d9021d377a8a";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/prettyprinter-configurable/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  setupHaskellDepends = [ base Cabal cabal-doctest doctest ];
  libraryHaskellDepends = [ base microlens mtl prettyprinter text ];
  testHaskellDepends = [
    base
    megaparsec
    parser-combinators
    QuickCheck
    quickcheck-text
    tasty
    tasty-hunit
    tasty-quickcheck
    text
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
