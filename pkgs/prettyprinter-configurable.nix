{ mkDerivation
, base
, Cabal
, cabal-doctest
, doctest
, fetchgit
, lib
, megaparsec
, microlens
, mtl
, parser-combinators
, prettyprinter
, QuickCheck
, quickcheck-text
, tasty
, tasty-hunit
, tasty-quickcheck
, text
}:
mkDerivation {
  pname = "prettyprinter-configurable";
  version = "0.1.0.0";
  src = fetchgit {
    url = "https://github.com/milloni/plutus";
    sha256 = "0pzzqqbp6jvrzxp7gyi4dnnc5pg0jnr76dsaq6pzn3zgr46pgbd3";
    rev = "81cd1ada745c12af2c2c28afce1f6b6b28b38fdd";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/prettyprinter-configurable/; echo source root reset to $sourceRoot";
  setupHaskellDepends = [ base Cabal cabal-doctest ];
  libraryHaskellDepends = [ base microlens mtl prettyprinter text ];
  testHaskellDepends = [
    base
    doctest
    megaparsec
    parser-combinators
    prettyprinter
    QuickCheck
    quickcheck-text
    tasty
    tasty-hunit
    tasty-quickcheck
    text
  ];
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  hyperlinkSource = false;
  license = "unknown";
}
