{ mkDerivation, QuickCheck, aeson, base, fetchgit, lib, tasty
, tasty-quickcheck, text, trace-dispatcher, unix
}:
mkDerivation {
  pname = "trace-resources";
  version = "0.1.0.0";
  src = fetchgit {
    url = "https://github.com/input-output-hk/cardano-node";
    sha256 = "1gzhzjdjvf4qinrkw32gglbsd7gwi7r3q4972z1z3vpbg70ky7z7";
    rev = "d6228270e9b6811ca1d00ca9ce9d0254e63c2d6c";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/trace-resources/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ aeson base text trace-dispatcher unix ];
  testHaskellDepends = [
    aeson base QuickCheck tasty tasty-quickcheck text trace-dispatcher
  ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Package for tracing resources for linux, mac and windows";
  license = lib.licenses.asl20;
  broken = false;
}