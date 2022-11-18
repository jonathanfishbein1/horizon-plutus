{ mkDerivation
, base
, Cabal
, cabal-doctest
, deepseq
, doctest
, lib
, primitive
, vector
}:
mkDerivation {
  pname = "nonempty-vector";
  version = "0.2.1.0";
  sha256 = "3e88159a1ad63039aba427597ea9d7eaf6e86789279d92e16214391b1bb2ce70";
  revision = "1";
  editedCabalFile = "18w57f8sdix71a27gwbifw7hmg34lms22c99gp7i7j7g154f3cn3";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  setupHaskellDepends = [ base Cabal cabal-doctest ];
  libraryHaskellDepends = [ base deepseq primitive vector ];
  testHaskellDepends = [ base doctest ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/emilypi/nonempty-vector";
  description = "Non-empty vectors";
  license = lib.licenses.bsd3;
  broken = false;
}
