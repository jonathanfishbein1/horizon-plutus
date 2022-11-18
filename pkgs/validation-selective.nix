{ mkDerivation
, base
, deepseq
, doctest
, hedgehog
, hspec
, hspec-hedgehog
, lib
, selective
, text
}:
mkDerivation {
  pname = "validation-selective";
  version = "0.1.0.2";
  sha256 = "016fde31529afad0cfe70ec3215fa85e38147582248696af6b135df950655bbf";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base deepseq selective ];
  testHaskellDepends = [
    base
    doctest
    hedgehog
    hspec
    hspec-hedgehog
    selective
    text
  ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/kowainik/validation-selective";
  description = "Lighweight pure data validation based on Applicative and Selective functors";
  license = lib.licenses.mpl20;
  broken = false;
}
