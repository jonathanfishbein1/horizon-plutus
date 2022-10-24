{ mkDerivation
, base
, fetchgit
, ghc
, ghc-prim
, ghc-tcplugins-extra
, ghc-typelits-natnormalise
, lib
, tasty
, tasty-hunit
, tasty-quickcheck
, template-haskell
, transformers
}:
mkDerivation {
  pname = "ghc-typelits-knownnat";
  version = "0.7.7";
  src = fetchgit {
    url = "https://github.com/clash-lang/ghc-typelits-knownnat";
    sha256 = "0pqfmkr15zpd3vimg3xp5akz920qn21v1yp4c55nadj3s0cfb3vg";
    rev = "1bc4ee33e005e96d1f7785c715588a289707cd48";
    fetchSubmodules = true;
  };
  libraryHaskellDepends = [
    base
    ghc
    ghc-prim
    ghc-tcplugins-extra
    ghc-typelits-natnormalise
    template-haskell
    transformers
  ];
  testHaskellDepends = [
    base
    ghc-typelits-natnormalise
    tasty
    tasty-hunit
    tasty-quickcheck
  ];
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  hyperlinkSource = false;
  homepage = "http://clash-lang.org/";
  description = "Derive KnownNat constraints from other KnownNat constraints";
  license = lib.licenses.bsd2;
}
