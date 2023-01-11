{ mkDerivation
, QuickCheck
, Win32-network
, aeson
, array
, base
, binary
, bytestring
, cborg
, containers
, contra-tracer
, directory
, fetchzip
, io-classes
, io-sim
, lib
, monoidal-synchronisation
, network
, process
, quiet
, serialise
, splitmix
, statistics-linreg
, stm
, strict-stm
, tasty
, tasty-quickcheck
, tdigest
, text
, time
, vector
}:
mkDerivation {
  pname = "network-mux";
  version = "0.2.0.0";
  src = fetchzip {
    url = "https://input-output-hk.github.io/cardano-haskell-packages/package/network-mux-0.2.0.0.tar.gz";
    sha256 = "1hxacaihlw790hw4vwkdjk4hrmwzq4zf5x42b6hnqi2xr4fi75jf";
  };
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    array
    base
    binary
    bytestring
    containers
    contra-tracer
    io-classes
    monoidal-synchronisation
    network
    process
    quiet
    statistics-linreg
    strict-stm
    time
    vector
  ];
  executableHaskellDepends = [
    aeson
    base
    bytestring
    cborg
    contra-tracer
    directory
    io-classes
    network
    serialise
    stm
    strict-stm
    tdigest
    text
  ];
  testHaskellDepends = [
    base
    binary
    bytestring
    cborg
    containers
    contra-tracer
    io-classes
    io-sim
    network
    process
    QuickCheck
    serialise
    splitmix
    strict-stm
    tasty
    tasty-quickcheck
    time
    Win32-network
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
