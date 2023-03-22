{ mkDerivation, aeson, base, base16-bytestring, bytestring
, cardano-binary, cardano-slotting, cardano-strict-containers
, cborg, containers, contra-tracer, deepseq, dns, fetchgit
, io-classes, iproute, lib, network, network-mux, nothunks
, serialise, strict-stm, text, typed-protocols
}:
mkDerivation {
  pname = "ouroboros-network-api";
  version = "0.1.0.0";
  src = fetchgit {
    url = "https://github.com/locallycompact/ouroboros-network";
    sha256 = "1ds14l3x83q21ngvzxj1yfgkw3ng9akpy1c8cvdv3yyl2drbn1g9";
    rev = "13dbe0bf9bca33469d105f22cdcb2b6d1a32c9b9";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/ouroboros-network-api/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson base base16-bytestring bytestring cardano-binary
    cardano-slotting cardano-strict-containers cborg containers
    contra-tracer deepseq dns io-classes iproute network network-mux
    nothunks serialise strict-stm text typed-protocols
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