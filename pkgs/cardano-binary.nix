{ mkDerivation, QuickCheck, base, bytestring, cardano-prelude-test
, cborg, containers, data-fix, fetchgit, formatting, hedgehog
, hspec, lib, pretty-show, primitive, quickcheck-instances
, recursion-schemes, safe-exceptions, tagged, text, time, vector
}:
mkDerivation {
  pname = "cardano-binary";
  version = "1.7.0.1";
  src = fetchgit {
    url = "https://github.com/locallycompact/cardano-base";
    sha256 = "1kch4q7qxvnnb0c8mhvap6xia9mqz8l01i94cfz78z6yj2ybjqf1";
    rev = "e64551f135e6e968609be2e32e87cf7e962a0288";
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
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Binary serialization for Cardano";
  license = lib.licenses.asl20;
  broken = false;
}