{ mkDerivation, aeson, base, base16-bytestring, bytestring
, cardano-slotting, cardano-strict-containers, cborg, containers
, contra-tracer, deepseq, dns, fetchgit, io-classes, iproute, lib
, network, network-mux, nothunks, serialise, si-timers, strict-stm
, text, typed-protocols
}:
mkDerivation {
  pname = "ouroboros-network-api";
  version = "0.3.0.0";
  src = fetchgit {
    url = "https://github.com/input-output-hk/ouroboros-network";
    sha256 = "004j8p2masjrsck2sv8905vyfqynqr654g93a2qmm7x96jsq64bg";
    rev = "3c91184485de25d17d8a4c1979b7ad106e2a5512";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/ouroboros-network-api/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson base base16-bytestring bytestring cardano-slotting
    cardano-strict-containers cborg containers contra-tracer deepseq
    dns io-classes iproute network network-mux nothunks serialise
    si-timers strict-stm text typed-protocols
  ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "A networking api shared with ouroboros-consensus";
  license = lib.licenses.asl20;
  broken = false;
}