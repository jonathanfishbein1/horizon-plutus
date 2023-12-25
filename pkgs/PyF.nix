{ mkDerivation, HUnit, base, bytestring, deepseq, filepath, ghc
, hspec, lib, mtl, parsec, process, template-haskell, temporary
, text, time
}:
mkDerivation {
  pname = "PyF";
  version = "0.11.2.1";
  sha256 = "e865c45a9323fc60f0a35f0aedf9e9f5c12258a6344bbd49031c09211b82220a";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base bytestring ghc mtl parsec template-haskell text time
  ];
  testHaskellDepends = [
    base bytestring deepseq filepath hspec HUnit process
    template-haskell temporary text time
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Quasiquotations for a python like interpolated string formatter";
  license = lib.licenses.bsd3;
  broken = false;
}