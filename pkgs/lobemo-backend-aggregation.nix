{ mkDerivation, aeson, async, base, fetchgit, iohk-monitoring, lib
, safe-exceptions, stm, text, time, unix, unordered-containers
}:
mkDerivation {
  pname = "lobemo-backend-aggregation";
  version = "0.1.0.0";
  src = fetchgit {
    url = "https://github.com/input-output-hk/iohk-monitoring-framework";
    sha256 = "13qw9ismr6xlr8i1iy6gv0ddjrl5mr2qglnimw82hnzw22i7dj9k";
    rev = "1b5ae75d3186159f8175ad625db324d075450343";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/plugins/backend-aggregation/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson async base iohk-monitoring safe-exceptions stm text time unix
    unordered-containers
  ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/input-output-hk/iohk-monitoring-framework";
  description = "provides a backend implementation to aggregate traced values";
  license = lib.licenses.asl20;
  broken = false;
}