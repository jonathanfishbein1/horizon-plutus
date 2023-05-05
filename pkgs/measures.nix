{ mkDerivation
, QuickCheck
, base
, base-deriving-via
, fetchgit
, lib
, tasty
, tasty-quickcheck
}:
mkDerivation {
  pname = "measures";
  version = "0.1.0.2";
  src = fetchgit {
    url = "https://github.com/input-output-hk/cardano-base";
    sha256 = "02j77wa5km222cxs2pyxl5zqwplxp1da0qp9spwlbivli63xgacd";
    rev = "1ffb694513f33ba043d93bae87ee71b026ccb62f";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/measures/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base base-deriving-via ];
  testHaskellDepends = [ base QuickCheck tasty tasty-quickcheck ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "An abstraction for (tuples of) measured quantities";
  license = lib.licenses.asl20;
  broken = false;
}
