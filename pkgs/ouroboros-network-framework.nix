{ mkDerivation
, QuickCheck
, Win32-network
, async
, base
, bytestring
, cardano-prelude
, cborg
, containers
, contra-tracer
, directory
, dns
, fetchgit
, hashable
, io-classes
, io-sim
, iproute
, lib
, monoidal-synchronisation
, mtl
, network
, network-mux
, nothunks
, optparse-applicative
, ouroboros-network-api
, ouroboros-network-testing
, pretty-simple
, quickcheck-instances
, quiet
, random
, serialise
, stm
, strict-stm
, tasty
, tasty-quickcheck
, text
, time
, typed-protocols
, typed-protocols-cborg
, typed-protocols-examples
}:
mkDerivation {
  pname = "ouroboros-network-framework";
  version = "0.2.0.0";
  src = fetchgit {
    url = "https://github.com/input-output-hk/ouroboros-network";
    sha256 = "0nr5qkphcc5hp1az6fw934zxi0yw9k5626ys1yyw6ybbw38xwpik";
    rev = "c65353299ff3efde05bf07d628a2ac7ea3193458";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/ouroboros-network-framework/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    async
    base
    bytestring
    cardano-prelude
    cborg
    containers
    contra-tracer
    dns
    hashable
    io-classes
    io-sim
    iproute
    monoidal-synchronisation
    mtl
    network
    network-mux
    nothunks
    ouroboros-network-api
    ouroboros-network-testing
    QuickCheck
    quiet
    random
    stm
    strict-stm
    text
    typed-protocols
    typed-protocols-cborg
    Win32-network
  ];
  executableHaskellDepends = [
    async
    base
    bytestring
    contra-tracer
    directory
    io-classes
    network
    network-mux
    optparse-applicative
    ouroboros-network-api
    random
    strict-stm
    typed-protocols
    typed-protocols-examples
  ];
  testHaskellDepends = [
    base
    bytestring
    cborg
    containers
    contra-tracer
    directory
    dns
    io-classes
    io-sim
    iproute
    monoidal-synchronisation
    network
    network-mux
    ouroboros-network-api
    ouroboros-network-testing
    pretty-simple
    QuickCheck
    quickcheck-instances
    quiet
    serialise
    strict-stm
    tasty
    tasty-quickcheck
    text
    time
    typed-protocols
    typed-protocols-cborg
    typed-protocols-examples
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  license = lib.licenses.asl20;
  broken = false;
}
