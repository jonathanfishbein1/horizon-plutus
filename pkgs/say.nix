{ mkDerivation
, base
, bytestring
, gauge
, hspec
, lib
, text
, transformers
, unliftio
}:
mkDerivation {
  pname = "say";
  version = "0.1.0.1";
  sha256 = "f639656fc21925c45f3f55769b9fb7a90699e943376a725e215a5deea473b3e4";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base bytestring text transformers ];
  testHaskellDepends = [
    base
    bytestring
    hspec
    text
    transformers
    unliftio
  ];
  benchmarkHaskellDepends = [
    base
    bytestring
    gauge
    text
    transformers
    unliftio
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/fpco/say#readme";
  description = "Send textual messages to a Handle in a thread-friendly way";
  license = lib.licenses.mit;
  broken = false;
}
