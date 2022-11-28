{ mkDerivation, base, exceptions, lib, text, transformers }:
mkDerivation {
  pname = "transformers-except";
  version = "0.1.2";
  sha256 = "9925f82037b9aa9d382e98cff91a6ca12009093b7aaa1f583c91429b6ebcfd03";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base exceptions text transformers ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://github.com/tmcgilchrist/transformers-either/";
  description = "An Except monad transformer with";
  license = lib.licenses.bsd3;
  broken = false;
}
