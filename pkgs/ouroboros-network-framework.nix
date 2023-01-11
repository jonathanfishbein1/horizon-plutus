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
, fetchzip
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
, these
, time
, typed-protocols
, typed-protocols-cborg
, typed-protocols-examples
}:
mkDerivation {
  pname = "ouroboros-network-framework";
  version = "0.2.0.0";
  src = fetchzip {
    url = "https://input-output-hk.github.io/cardano-haskell-packages/package/ouroboros-network-framework-0.2.0.0.tar.gz";
    sha256 = "0m4n9wqscfc6js15hklv0jq37ig3n9h6zrd0s5d326i41agdz7ra";
  };
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
    ouroboros-network-testing
    QuickCheck
    quiet
    random
    stm
    strict-stm
    text
    time
    typed-protocols
    typed-protocols-cborg
    Win32-network
  ];
  executableHaskellDepends = [
    async
    base
    bytestring
    cborg
    contra-tracer
    directory
    io-classes
    network
    network-mux
    optparse-applicative
    random
    serialise
    strict-stm
    typed-protocols
    typed-protocols-examples
  ];
  testHaskellDepends = [
    base
    bytestring
    cardano-prelude
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
    these
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
