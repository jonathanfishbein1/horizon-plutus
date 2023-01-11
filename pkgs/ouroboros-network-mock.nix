{ mkDerivation
, base
, bytestring
, cborg
, containers
, fetchgit
, hashable
, lib
, nothunks
, ouroboros-network-api
, serialise
, time
}:
mkDerivation {
  pname = "ouroboros-network-mock";
  version = "0.1.0.0";
  src = fetchgit {
    url = "https://github.com/input-output-hk/ouroboros-network";
    sha256 = "0nr5qkphcc5hp1az6fw934zxi0yw9k5626ys1yyw6ybbw38xwpik";
    rev = "c65353299ff3efde05bf07d628a2ac7ea3193458";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/ouroboros-network-mock/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    bytestring
    cborg
    containers
    hashable
    nothunks
    ouroboros-network-api
    serialise
    time
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Ouroboros Network Chain for testing purposes";
  license = lib.licenses.asl20;
  broken = false;
}
