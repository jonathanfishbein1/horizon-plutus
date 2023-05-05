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
    url = "https://github.com/locallycompact/ouroboros-network";
    sha256 = "1ds14l3x83q21ngvzxj1yfgkw3ng9akpy1c8cvdv3yyl2drbn1g9";
    rev = "13dbe0bf9bca33469d105f22cdcb2b6d1a32c9b9";
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
