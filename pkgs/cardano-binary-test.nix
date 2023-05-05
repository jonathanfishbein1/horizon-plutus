{ mkDerivation, QuickCheck, base, bytestring, cardano-binary
, cardano-prelude-test, cborg, containers, fetchgit, formatting
, hedgehog, hspec, lib, pretty-show, quickcheck-instances, text
, time, vector
}:
mkDerivation {
  pname = "cardano-binary-test";
  version = "1.4.0.2";
  src = fetchgit {
    url = "https://github.com/locallycompact/cardano-base";
    sha256 = "1kch4q7qxvnnb0c8mhvap6xia9mqz8l01i94cfz78z6yj2ybjqf1";
    rev = "e64551f135e6e968609be2e32e87cf7e962a0288";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/cardano-binary/test/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base bytestring cardano-binary cardano-prelude-test cborg
    containers formatting hedgehog hspec pretty-show QuickCheck
    quickcheck-instances text time vector
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Test helpers from cardano-binary exposed to other packages";
  license = lib.licenses.mit;
  broken = false;
}