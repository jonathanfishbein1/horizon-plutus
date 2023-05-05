{ mkDerivation, QuickCheck, array, base, containers, criterion
, exceptions, fetchgit, io-classes, lib, nothunks, parallel
, psqueues, quiet, si-timers, strict-stm, tasty, tasty-hunit
, tasty-quickcheck, time
}:
mkDerivation {
  pname = "io-sim";
  version = "1.1.0.0";
  src = fetchgit {
    url = "https://github.com/input-output-hk/io-sim";
    sha256 = "1460w11y3aadvyyxxq8gw36bn058xcndxai9hiq2ghgn3nycndfg";
    rev = "df0ddc92200cc880478a656604a736cfb9250568";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/io-sim/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base containers exceptions io-classes nothunks parallel psqueues
    QuickCheck quiet si-timers strict-stm time
  ];
  testHaskellDepends = [
    array base containers io-classes parallel QuickCheck si-timers
    strict-stm tasty tasty-hunit tasty-quickcheck time
  ];
  benchmarkHaskellDepends = [ base criterion io-classes ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "A pure simulator for monadic concurrency with STM";
  license = lib.licenses.asl20;
  broken = false;
}