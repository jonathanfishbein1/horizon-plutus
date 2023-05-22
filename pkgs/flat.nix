{ mkDerivation, QuickCheck, array, base, bytestring, containers
, deepseq, dlist, filepath, ghc-prim, hashable, lib, list-t
, mono-traversable, pretty, primitive, quickcheck-text, tasty
, tasty-hunit, tasty-quickcheck, text, timeit, unordered-containers
, vector
}:
mkDerivation {
  pname = "flat";
  version = "0.6";
  sha256 = "a4324174159b79dabbb155572a33d109ea4bd3b105a6c1c658a36e604e1daf86";
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
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
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