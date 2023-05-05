{ mkDerivation, QuickCheck, Win32-network, array, base, binary
, bytestring, cborg, containers, contra-tracer, directory, fetchgit
, io-classes, io-sim, lib, monoidal-synchronisation, network
, process, quiet, serialise, si-timers, splitmix, statistics-linreg
, stm, strict-stm, tasty, tasty-quickcheck, time, vector
}:
mkDerivation {
  pname = "network-mux";
  version = "0.4.0.0";
  src = fetchgit {
    url = "https://github.com/input-output-hk/ouroboros-network";
    sha256 = "004j8p2masjrsck2sv8905vyfqynqr654g93a2qmm7x96jsq64bg";
    rev = "3c91184485de25d17d8a4c1979b7ad106e2a5512";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/network-mux/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    array base binary bytestring containers contra-tracer io-classes
    monoidal-synchronisation network process quiet si-timers
    statistics-linreg strict-stm time vector
  ];
  executableHaskellDepends = [
    base bytestring cborg contra-tracer directory io-classes network
    serialise stm
  ];
  testHaskellDepends = [
    base binary bytestring cborg containers contra-tracer io-classes
    io-sim network process QuickCheck serialise si-timers splitmix
    strict-stm tasty tasty-quickcheck Win32-network
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Multiplexing library";
  license = lib.licenses.asl20;
  broken = false;
}