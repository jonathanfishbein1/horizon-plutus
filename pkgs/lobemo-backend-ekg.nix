{ mkDerivation, aeson, async, base, bytestring, ekg, ekg-core
, fetchgit, iohk-monitoring, lib, safe-exceptions, snap-core
, snap-server, stm, text, time, unordered-containers
}:
mkDerivation {
  pname = "lobemo-backend-ekg";
  version = "0.1.0.1";
  src = fetchgit {
    url = "https://github.com/input-output-hk/iohk-monitoring-framework";
    sha256 = "13qw9ismr6xlr8i1iy6gv0ddjrl5mr2qglnimw82hnzw22i7dj9k";
    rev = "1b5ae75d3186159f8175ad625db324d075450343";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/plugins/backend-ekg/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson async base bytestring ekg ekg-core iohk-monitoring
    safe-exceptions snap-core snap-server stm text time
    unordered-containers
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/input-output-hk/iohk-monitoring-framework";
  description = "provides a backend implementation to EKG";
  license = lib.licenses.asl20;
  broken = false;
}