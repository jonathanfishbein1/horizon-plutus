{ mkDerivation, aeson, base, bytestring, cborg, contra-tracer
, fetchgit, io-classes, lib, network, network-mux, si-timers
, strict-stm, tdigest, text
}:
mkDerivation {
  pname = "cardano-ping";
  version = "0.1.0.1";
  src = fetchgit {
    url = "https://github.com/input-output-hk/ouroboros-network";
    sha256 = "004j8p2masjrsck2sv8905vyfqynqr654g93a2qmm7x96jsq64bg";
    rev = "3c91184485de25d17d8a4c1979b7ad106e2a5512";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/cardano-ping/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson base bytestring cborg contra-tracer io-classes network
    network-mux si-timers strict-stm tdigest text
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Utility for pinging cardano nodes";
  license = lib.licenses.asl20;
  broken = false;
}