{ mkDerivation, QuickCheck, base, bytestring, cardano-binary
, cardano-prelude-test, cborg, containers, fetchgit, formatting
, hedgehog, hspec, lib, pretty-show, quickcheck-instances, text
, time, vector
}:
mkDerivation {
  pname = "cardano-binary-test";
  version = "1.4.0.1";
  src = fetchgit {
    url = "https://github.com/locallycompact/cardano-base";
    sha256 = "0n3w1k30ivdppyidyws9riy1qyx4881gxw8v1v34sixbraj0ng5k";
    rev = "f954aec4fbe11ba96729ddcc5e22c13ab6320b5d";
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