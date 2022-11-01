{ mkDerivation
, base
, containers
, fetchgit
, ghc
, ghc-bignum
, ghc-prim
, ghc-tcplugins-extra
, lib
, tasty
, tasty-hunit
, template-haskell
, transformers
}:
mkDerivation {
  pname = "ghc-typelits-natnormalise";
  version = "0.7.7";
  src = fetchgit {
    url = "https://github.com/clash-lang/ghc-typelits-natnormalise";
    sha256 = "1zzkq16y56zg81abrn0c4d3bvzjk26hfvmbmfcy0zj46fy2bmc6b";
    rev = "e0af5b3c69a7d8e1dd402eb727631801e7d9be3d";
    fetchSubmodules = true;
  };
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    containers
    ghc
    ghc-bignum
    ghc-tcplugins-extra
    transformers
  ];
  testHaskellDepends = [
    base
    ghc-prim
    tasty
    tasty-hunit
    template-haskell
  ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://www.clash-lang.org/";
  description = "GHC typechecker plugin for types of kind GHC.TypeLits.Nat";
  license = lib.licenses.bsd2;
  broken = false;
}
