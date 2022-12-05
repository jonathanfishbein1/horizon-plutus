{ mkDerivation
, HUnit
, attoparsec
, base
, bytestring
, io-streams
, lib
, network
, test-framework
, test-framework-hunit
, transformers
}:
mkDerivation {
  pname = "io-streams-haproxy";
  version = "1.0.1.0";
  sha256 = "b74eca9290fe838a0e3be857a38b62cf6fb7478acee400eac19e47471a2c96b5";
  revision = "6";
  editedCabalFile = "024aw98q1x3fb1xq07qki3z446w6lk5gyjl13shy0dbrd5aafh92";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    attoparsec
    base
    bytestring
    io-streams
    network
    transformers
  ];
  testHaskellDepends = [
    attoparsec
    base
    bytestring
    HUnit
    io-streams
    network
    test-framework
    test-framework-hunit
    transformers
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://snapframework.com/";
  description = "HAProxy protocol 1.5 support for io-streams";
  license = lib.licenses.bsd3;
  broken = false;
}
