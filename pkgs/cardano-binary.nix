{ mkDerivation, QuickCheck, base, bytestring, cardano-prelude-test
, cborg, containers, data-fix, fetchgit, formatting, hedgehog
, hspec, lib, pretty-show, primitive, quickcheck-instances
, recursion-schemes, safe-exceptions, tagged, text, time, vector
}:
mkDerivation {
  pname = "cardano-binary";
  version = "1.7.0.0";
  src = fetchgit {
    url = "https://github.com/locallycompact/cardano-base";
    sha256 = "0n3w1k30ivdppyidyws9riy1qyx4881gxw8v1v34sixbraj0ng5k";
    rev = "f954aec4fbe11ba96729ddcc5e22c13ab6320b5d";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/cardano-binary/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base bytestring cborg containers data-fix formatting primitive
    recursion-schemes safe-exceptions tagged text time vector
  ];
  testHaskellDepends = [
    base bytestring cardano-prelude-test cborg containers formatting
    hedgehog hspec pretty-show QuickCheck quickcheck-instances tagged
    text time vector
  ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Binary serialization for Cardano";
  license = lib.licenses.asl20;
  broken = false;
}