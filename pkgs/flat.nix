{ mkDerivation, QuickCheck, array, base, bytestring, containers
, deepseq, dlist, fetchgit, filepath, ghc-prim, hashable, lib
, list-t, mono-traversable, pretty, primitive, quickcheck-text
, tasty, tasty-hunit, tasty-quickcheck, text, timeit
, unordered-containers, vector
}:
mkDerivation {
  pname = "flat";
  version = "0.5.2";
  src = fetchgit {
    url = "https://github.com/Quid2/flat";
    sha256 = "19dhz3gg9fv4mjkrwckiv2269z1x07ah691s38yk7ysp6rxygvbn";
    rev = "2121ee96201e39764e3a6fcbc53241afb0050647";
    fetchSubmodules = true;
  };
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    array base bytestring containers deepseq dlist ghc-prim hashable
    list-t mono-traversable pretty primitive text unordered-containers
    vector
  ];
  testHaskellDepends = [
    array base bytestring containers deepseq dlist filepath ghc-prim
    list-t mono-traversable pretty QuickCheck quickcheck-text tasty
    tasty-hunit tasty-quickcheck text timeit unordered-containers
    vector
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://quid2.org";
  description = "Principled and efficient bit-oriented binary serialization";
  license = lib.licenses.bsd3;
  broken = false;
}