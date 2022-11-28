{ mkDerivation
, HUnit
, array
, base
, containers
, criterion
, deepseq
, lib
}:
mkDerivation {
  pname = "dom-lt";
  version = "0.2.3";
  sha256 = "3d198be111a1a6b6d19356c7737ee486607735b6405b35cde6c105035309e3c0";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ array base containers ];
  testHaskellDepends = [ base containers HUnit ];
  benchmarkHaskellDepends = [ base containers criterion deepseq ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "The Lengauer-Tarjan graph dominators algorithm";
  license = lib.licenses.bsd3;
  broken = false;
}
