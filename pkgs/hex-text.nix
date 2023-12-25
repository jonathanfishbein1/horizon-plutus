{ mkDerivation, base, base16-bytestring, bytestring, hspec, lib
, text
}:
mkDerivation {
  pname = "hex-text";
  version = "0.1.0.9";
  sha256 = "c55b28f5567b1c86e902aaa158a8adc095fd2db40566be7ad696a827af0cfbb7";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base base16-bytestring bytestring text ];
  testHaskellDepends = [
    base base16-bytestring bytestring hspec text
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/typeclasses/hex-text";
  description = "ByteString-Text hexidecimal conversions";
  license = lib.licenses.mit;
  broken = false;
}