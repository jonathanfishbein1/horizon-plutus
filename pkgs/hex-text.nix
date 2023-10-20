{ mkDerivation, base, base16-bytestring, bytestring, hspec, lib
, text
}:
mkDerivation {
  pname = "hex-text";
  version = "0.1.0.8";
  sha256 = "653924681d94db1e7e8ed9b3be209d17a0fd032683192084d62ee9b6394cf71b";
  revision = "2";
  editedCabalFile = "0qxpg67rwmqs0k5psc1mkm09d449w751drgmp5sixx0fgsdqmw8j";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base base16-bytestring bytestring text ];
  testHaskellDepends = [
    base base16-bytestring bytestring hspec text
  ];
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