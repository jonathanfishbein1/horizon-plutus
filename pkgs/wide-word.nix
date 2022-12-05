{ mkDerivation
, QuickCheck
, base
, bytestring
, deepseq
, ghc-prim
, hashable
, hedgehog
, lib
, primitive
, quickcheck-classes
, semirings
}:
mkDerivation {
  pname = "wide-word";
  version = "0.1.3.0";
  sha256 = "b28ff1f7662e11b3678dc20362f454be093d447b704abfc3f842e5717fd9e00d";
  revision = "1";
  editedCabalFile = "1y1w3ih92dni6bzp4w1hcwn96ahdrk34lmqrgkri2dcdkykwyqwb";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    deepseq
    ghc-prim
    hashable
    primitive
  ];
  testHaskellDepends = [
    base
    bytestring
    ghc-prim
    hedgehog
    primitive
    QuickCheck
    quickcheck-classes
    semirings
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/erikd/wide-word";
  description = "Data types for large but fixed width signed and unsigned integers";
  license = lib.licenses.bsd2;
  broken = false;
}
