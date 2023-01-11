{ mkDerivation
, QuickCheck
, base
, bytestring
, cardano-strict-containers
, cborg
, containers
, contra-tracer
, directory
, fetchgit
, filepath
, io-classes
, io-sim
, lib
, mtl
, network-mux
, ouroboros-network-api
, ouroboros-network-framework
, ouroboros-network-mock
, ouroboros-network-testing
, pipes
, process-extras
, quickcheck-instances
, serialise
, strict-stm
, tasty
, tasty-hunit
, tasty-quickcheck
, temporary
, text
, typed-protocols
, typed-protocols-cborg
}:
mkDerivation {
  pname = "ouroboros-network-protocols";
  version = "0.2.0.0";
  src = fetchgit {
    url = "https://github.com/input-output-hk/ouroboros-network";
    sha256 = "0nr5qkphcc5hp1az6fw934zxi0yw9k5626ys1yyw6ybbw38xwpik";
    rev = "c65353299ff3efde05bf07d628a2ac7ea3193458";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/ouroboros-network-protocols/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    bytestring
    cardano-strict-containers
    cborg
    containers
    contra-tracer
    io-classes
    io-sim
    network-mux
    ouroboros-network-api
    ouroboros-network-framework
    ouroboros-network-mock
    pipes
    QuickCheck
    quickcheck-instances
    serialise
    strict-stm
    tasty
    tasty-quickcheck
    text
    typed-protocols
    typed-protocols-cborg
  ];
  testHaskellDepends = [
    base
    bytestring
    cborg
    containers
    directory
    filepath
    mtl
    ouroboros-network-api
    ouroboros-network-framework
    ouroboros-network-mock
    ouroboros-network-testing
    process-extras
    QuickCheck
    quickcheck-instances
    serialise
    tasty
    tasty-hunit
    tasty-quickcheck
    temporary
    text
    typed-protocols
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Ouroboros Network Protocols";
  license = lib.licenses.asl20;
  broken = false;
}
