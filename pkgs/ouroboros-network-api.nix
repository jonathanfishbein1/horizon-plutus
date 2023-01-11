{ mkDerivation
, aeson
, base
, base16-bytestring
, bytestring
, cardano-binary
, cardano-slotting
, cardano-strict-containers
, cborg
, containers
, contra-tracer
, deepseq
, dns
, fetchgit
, io-classes
, iproute
, lib
, network
, network-mux
, nothunks
, serialise
, strict-stm
, text
, typed-protocols
}:
mkDerivation {
  pname = "ouroboros-network-api";
  version = "0.1.0.0";
  src = fetchgit {
    url = "https://github.com/input-output-hk/ouroboros-network";
    sha256 = "0nr5qkphcc5hp1az6fw934zxi0yw9k5626ys1yyw6ybbw38xwpik";
    rev = "c65353299ff3efde05bf07d628a2ac7ea3193458";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/ouroboros-network-api/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson
    base
    base16-bytestring
    bytestring
    cardano-binary
    cardano-slotting
    cardano-strict-containers
    cborg
    containers
    contra-tracer
    deepseq
    dns
    io-classes
    iproute
    network
    network-mux
    nothunks
    serialise
    strict-stm
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
  description = "A networking api shared with ouroboros-consensus";
  license = lib.licenses.asl20;
  broken = false;
}
