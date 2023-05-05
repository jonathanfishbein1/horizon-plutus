{ mkDerivation, QuickCheck, aeson, base, fetchgit, lib, tasty
, tasty-quickcheck, text, trace-dispatcher, unix
}:
mkDerivation {
  pname = "trace-resources";
  version = "0.1.0.0";
  src = fetchgit {
    url = "https://github.com/input-output-hk/cardano-node";
    sha256 = "0wkbz2yxwaaxx6w5j2snbp8gg8imjjipw8zka3lcnrp3jx9gx1ha";
    rev = "b7d70f3a54921669519e1de1ec6ed381d01b28fb";
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