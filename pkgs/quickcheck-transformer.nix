{ mkDerivation, QuickCheck, base, lib, random, transformers }:
mkDerivation {
  pname = "quickcheck-transformer";
  version = "0.3.1.2";
  sha256 = "309f57093f7fb59167d546e464ce5b63024d91d029acc966a3e351875898c61f";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base QuickCheck random transformers ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = true;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://hub.darcs.net/thielema/quickcheck-transformer/";
  description = "A GenT monad transformer for QuickCheck library";
  license = lib.licenses.mit;
  broken = false;
}