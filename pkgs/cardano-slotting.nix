{ mkDerivation, aeson, base, cardano-binary, deepseq, fetchgit, lib
, mmorph, nothunks, quiet, serialise, tasty, tasty-quickcheck, time
}:
mkDerivation {
  pname = "cardano-slotting";
  version = "0.1.1.1";
  src = fetchgit {
    url = "https://github.com/locallycompact/cardano-base";
    sha256 = "1kch4q7qxvnnb0c8mhvap6xia9mqz8l01i94cfz78z6yj2ybjqf1";
    rev = "e64551f135e6e968609be2e32e87cf7e962a0288";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/cardano-slotting/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson base cardano-binary deepseq mmorph nothunks quiet serialise
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