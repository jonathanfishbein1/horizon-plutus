{ mkDerivation, QuickCheck, array, base, containers, contra-tracer
, criterion, deque, exceptions, fetchgit, io-classes, lib, parallel
, pretty-simple, psqueues, quiet, strict-stm, syb, tasty
, tasty-hunit, tasty-quickcheck, text, time, typed-protocols
, typed-protocols-cborg, typed-protocols-examples
}:
mkDerivation {
  pname = "io-sim";
  version = "0.4.0.0";
  src = fetchgit {
    url = "https://github.com/input-output-hk/io-sim";
    sha256 = "0xcb7j2wcc5zpgjvl1ly0sn7hvdwm51sbcyl5ncva1s1yfg5prsk";
    rev = "dcafd44cdc101a3e213de6a2d5ba7f674c2bc13c";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/io-sim/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base containers deque exceptions io-classes parallel pretty-simple
    psqueues QuickCheck quiet syb text time
  ];
  testHaskellDepends = [
    array base containers io-classes parallel QuickCheck strict-stm
    tasty tasty-hunit tasty-quickcheck time
  ];
  benchmarkHaskellDepends = [
    base contra-tracer criterion io-classes typed-protocols
    typed-protocols-cborg typed-protocols-examples
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "A pure simulator for monadic concurrency with STM";
  license = lib.licenses.asl20;
  broken = false;
}