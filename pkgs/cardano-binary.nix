{ mkDerivation, QuickCheck, base, bytestring, cardano-prelude-test
, cborg, containers, data-fix, fetchzip, formatting, hedgehog
, hspec, lib, pretty-show, primitive, quickcheck-instances
, recursion-schemes, safe-exceptions, tagged, text, time, vector
}:
mkDerivation {
  pname = "cardano-binary";
  version = "1.7.0.1";
  src = fetchzip {
    url = "https://chap.intersectmbo.org/package/cardano-binary-1.7.0.1.tar.gz";
    sha256 = "1hfr4lz6iyazmixqki58lai83pry68iq9yhvmy9ps6nna4q804n5";
  };
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
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Binary serialization for Cardano";
  license = lib.licenses.asl20;
  broken = false;
}