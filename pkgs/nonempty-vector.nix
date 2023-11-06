{ mkDerivation, QuickCheck, base, deepseq, lib, primitive, tasty
, tasty-quickcheck, vector
}:
mkDerivation {
  pname = "nonempty-vector";
  version = "0.2.2.0";
  sha256 = "6fc72cf173486d76e2f9e2bfc5749ed07e070fc26807594906124d99cac5db59";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base deepseq primitive vector ];
  testHaskellDepends = [
    base QuickCheck tasty tasty-quickcheck vector
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
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