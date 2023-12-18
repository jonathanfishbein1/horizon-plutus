{ mkDerivation, QuickCheck, base, bytestring, cardano-binary
, cardano-prelude-test, cborg, containers, fetchzip, formatting
, hedgehog, hspec, lib, pretty-show, quickcheck-instances, text
, time, vector
}:
mkDerivation {
  pname = "cardano-binary-test";
  version = "1.4.0.2";
  src = fetchzip {
    url = "https://chap.intersectmbo.org/package/cardano-binary-test-1.4.0.2.tar.gz";
    sha256 = "0jmxdijillfvm0i9mbsmlkj6zd2xchrygb5j8dn8srxh723xg8gy";
  };
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
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Test helpers from cardano-binary exposed to other packages";
  license = lib.licenses.mit;
  broken = false;
}