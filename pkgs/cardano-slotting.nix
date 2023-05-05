{ mkDerivation, aeson, base, cardano-binary, deepseq, fetchgit, lib
, mmorph, nothunks, quiet, serialise, tasty, tasty-quickcheck, time
}:
mkDerivation {
  pname = "cardano-slotting";
  version = "0.1.1.0";
  src = fetchgit {
    url = "https://github.com/locallycompact/cardano-base";
    sha256 = "0n3w1k30ivdppyidyws9riy1qyx4881gxw8v1v34sixbraj0ng5k";
    rev = "f954aec4fbe11ba96729ddcc5e22c13ab6320b5d";
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
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Key slotting types for cardano libraries";
  license = lib.licenses.asl20;
  broken = false;
}