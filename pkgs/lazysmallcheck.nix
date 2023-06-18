{ mkDerivation, base, lib }:
mkDerivation {
  pname = "lazysmallcheck";
  version = "0.6";
  sha256 = "9dd4dfb590c77e4f6aff68296602de58422eed5e7148fc29190d875a4e7d0f53";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://www.cs.york.ac.uk/~mfn/lazysmallcheck/";
  description = "A library for demand-driven testing of Haskell programs";
  license = lib.licenses.bsd3;
  broken = false;
}