{ mkDerivation
, base
, binary
, bytestring
, hspec
, lib
, streaming
, streaming-bytestring
}:
mkDerivation {
  pname = "streaming-binary";
  version = "0.3.0.1";
  sha256 = "cd2bfd355bae40ccf834e40baa2cbd40ff014d30b5674c64d8e6725987566958";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    binary
    bytestring
    streaming
    streaming-bytestring
  ];
  testHaskellDepends = [
    base
    binary
    bytestring
    hspec
    streaming
    streaming-bytestring
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/mboes/streaming-binary#readme";
  description = "Streaming interface to binary";
  license = lib.licenses.bsd3;
  broken = false;
}
