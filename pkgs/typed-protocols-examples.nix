{ mkDerivation, QuickCheck, base, bytestring, cborg, contra-tracer
, fetchgit, io-classes, io-sim, lib, serialise, tasty
, tasty-quickcheck, time, typed-protocols, typed-protocols-cborg
}:
mkDerivation {
  pname = "typed-protocols-examples";
  version = "0.1.0.1";
  src = fetchgit {
    url = "https://github.com/input-output-hk/typed-protocols";
    sha256 = "0dfba0q2qjsbg4cyyqb2dvk84mrgh94vnwp1zc1x8wyvpshfnkbr";
    rev = "ab4e0346c3215daad4c823f3ddc0eefae32091ff";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/typed-protocols-examples/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base bytestring cborg contra-tracer io-classes serialise time
    typed-protocols typed-protocols-cborg
  ];
  testHaskellDepends = [
    base bytestring contra-tracer io-classes io-sim QuickCheck tasty
    tasty-quickcheck typed-protocols typed-protocols-cborg
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Examples and tests for the typed-protocols framework";
  license = lib.licenses.asl20;
  broken = false;
}