{ mkDerivation, QuickCheck, base, bytestring, cborg, contra-tracer
, fetchgit, io-classes, io-sim, lib, serialise, si-timers, tasty
, tasty-quickcheck, time, typed-protocols, typed-protocols-cborg
}:
mkDerivation {
  pname = "typed-protocols-examples";
  version = "0.2.0.0";
  src = fetchgit {
    url = "https://github.com/input-output-hk/typed-protocols";
    sha256 = "0a6sb0917xpn9rzlw6dsrw0bjzyh7ljy5wdfhq9svnmg6sbmmk7x";
    rev = "a8af24cab3a5be0a27f398e6e068c29bed053d1e";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/typed-protocols-examples/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base bytestring cborg contra-tracer io-classes serialise si-timers
    time typed-protocols typed-protocols-cborg
  ];
  testHaskellDepends = [
    base bytestring contra-tracer io-classes io-sim QuickCheck
    si-timers tasty tasty-quickcheck typed-protocols
    typed-protocols-cborg
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