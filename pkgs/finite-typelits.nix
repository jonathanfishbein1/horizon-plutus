{ mkDerivation, QuickCheck, base, deepseq, lib }:
mkDerivation {
  pname = "finite-typelits";
  version = "0.1.6.0";
  sha256 = "3046456b3b3b7a202da7dc61f909e5925f9eaa57d5e03ce81d3f76ca7d3b0438";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base deepseq ];
  testHaskellDepends = [ base deepseq QuickCheck ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/mniip/finite-typelits";
  description = "A type inhabited by finitely many values, indexed by type-level naturals";
  license = lib.licenses.bsd3;
  broken = false;
}
