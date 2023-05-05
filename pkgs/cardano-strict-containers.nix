{ mkDerivation
, aeson
, base
, cardano-binary
, cborg
, containers
, data-default-class
, deepseq
, fetchgit
, fingertree
, lib
, nothunks
, serialise
}:
mkDerivation {
  pname = "cardano-strict-containers";
  version = "0.1.2.1";
  src = fetchgit {
    url = "https://github.com/input-output-hk/cardano-base";
    sha256 = "02j77wa5km222cxs2pyxl5zqwplxp1da0qp9spwlbivli63xgacd";
    rev = "1ffb694513f33ba043d93bae87ee71b026ccb62f";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/cardano-strict-containers/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson
    base
    cardano-binary
    cborg
    containers
    data-default-class
    deepseq
    fingertree
    nothunks
    serialise
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Various strict container types";
  license = lib.licenses.asl20;
  broken = false;
}
