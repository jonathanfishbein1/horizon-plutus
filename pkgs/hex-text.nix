{ mkDerivation, base, base16-bytestring, bytestring, lib, text }:
mkDerivation {
  pname = "hex-text";
  version = "0.1.0.7";
  sha256 = "f60b1668373294f700b720b016e67797bc99b4291bfdac5e357735708ac9def7";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base base16-bytestring bytestring text ];
  testHaskellDepends = [ base base16-bytestring bytestring text ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
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
