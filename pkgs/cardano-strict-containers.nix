{ mkDerivation, aeson, base, cardano-binary, cborg, containers
, data-default-class, deepseq, fetchgit, fingertree, lib, nothunks
, serialise
}:
mkDerivation {
  pname = "cardano-strict-containers";
  version = "0.1.2.1";
  src = fetchgit {
    url = "https://github.com/locallycompact/cardano-base";
    sha256 = "1kch4q7qxvnnb0c8mhvap6xia9mqz8l01i94cfz78z6yj2ybjqf1";
    rev = "e64551f135e6e968609be2e32e87cf7e962a0288";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/cardano-strict-containers/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson base cardano-binary cborg containers data-default-class
    deepseq fingertree nothunks serialise
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