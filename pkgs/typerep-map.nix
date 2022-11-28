{ mkDerivation
, base
, containers
, criterion
, deepseq
, dependent-map
, dependent-sum
, fetchgit
, ghc-prim
, ghc-typelits-knownnat
, hedgehog
, hspec
, hspec-hedgehog
, lib
, primitive
, vector
}:
mkDerivation {
  pname = "typerep-map";
  version = "0.5.0.0";
  src = fetchgit {
    url = "https://github.com/parsonsmatt/typerep-map";
    sha256 = "023f2rrak7kmpfxxpfcdv5bb1llksk2cxmdgvs08qx3l821d016w";
    rev = "75b7cd5d45986be07420a6821d352ad2adc0b697";
    fetchSubmodules = true;
  };
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    containers
    deepseq
    ghc-prim
    primitive
    vector
  ];
  testHaskellDepends = [
    base
    ghc-typelits-knownnat
    hedgehog
    hspec
    hspec-hedgehog
  ];
  benchmarkHaskellDepends = [
    base
    criterion
    deepseq
    dependent-map
    dependent-sum
    ghc-typelits-knownnat
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/kowainik/typerep-map";
  description = "Efficient implementation of a dependent map with types as keys";
  license = lib.licenses.mpl20;
  broken = false;
}
