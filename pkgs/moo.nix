{ mkDerivation
, array
, base
, containers
, fetchgit
, gray-code
, HUnit
, lib
, mersenne-random-pure64
, MonadRandom
, mtl
, parallel
, random
, random-shuffle
, time
, vector
}:
mkDerivation {
  pname = "moo";
  version = "1.2";
  src = fetchgit {
    url = "https://github.com/milloni/moo";
    sha256 = "1mdj218hgh7s5a6b9k14vg9i06zxah0wa42ycdgh245izs8nfv0x";
    rev = "20e4c6ee880e7d62b18b995750063dd7349a3f8e";
    fetchSubmodules = true;
  };
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    array
    base
    containers
    gray-code
    mersenne-random-pure64
    MonadRandom
    mtl
    parallel
    random
    random-shuffle
    time
    vector
  ];
  testHaskellDepends = [
    array
    base
    containers
    gray-code
    HUnit
    mersenne-random-pure64
    MonadRandom
    mtl
    parallel
    random
    random-shuffle
    time
    vector
  ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://www.github.com/astanin/moo/";
  description = "Genetic algorithm library";
  license = lib.licenses.bsd3;
  broken = false;
}
