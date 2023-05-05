{ mkDerivation
, QuickCheck
, base
, bytestring
, cardano-binary
, cardano-prelude-test
, cborg
, containers
, fetchgit
, formatting
, hedgehog
, hspec
, lib
, pretty-show
, quickcheck-instances
, text
, time
, vector
}:
mkDerivation {
  pname = "cardano-binary-test";
  version = "1.4.0.2";
  src = fetchgit {
    url = "https://github.com/input-output-hk/cardano-base";
    sha256 = "02j77wa5km222cxs2pyxl5zqwplxp1da0qp9spwlbivli63xgacd";
    rev = "1ffb694513f33ba043d93bae87ee71b026ccb62f";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/cardano-binary/test/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    bytestring
    cardano-binary
    cardano-prelude-test
    cborg
    containers
    formatting
    hedgehog
    hspec
    pretty-show
    QuickCheck
    quickcheck-instances
    text
    time
    vector
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
