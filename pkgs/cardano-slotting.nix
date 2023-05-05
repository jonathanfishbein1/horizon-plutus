{ mkDerivation
, aeson
, base
, cardano-binary
, deepseq
, fetchgit
, lib
, mmorph
, nothunks
, quiet
, serialise
, tasty
, tasty-quickcheck
, time
}:
mkDerivation {
  pname = "cardano-slotting";
  version = "0.1.1.1";
  src = fetchgit {
    url = "https://github.com/input-output-hk/cardano-base";
    sha256 = "02j77wa5km222cxs2pyxl5zqwplxp1da0qp9spwlbivli63xgacd";
    rev = "1ffb694513f33ba043d93bae87ee71b026ccb62f";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/cardano-slotting/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson
    base
    cardano-binary
    deepseq
    mmorph
    nothunks
    quiet
    serialise
    time
  ];
  testHaskellDepends = [ base tasty tasty-quickcheck ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Key slotting types for cardano libraries";
  license = lib.licenses.asl20;
  broken = false;
}
