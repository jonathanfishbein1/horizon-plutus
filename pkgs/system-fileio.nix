{ mkDerivation
, base
, bytestring
, chell
, lib
, system-filepath
, temporary
, text
, time
, transformers
, unix
}:
mkDerivation {
  pname = "system-fileio";
  version = "0.3.16.4";
  sha256 = "34e58b88a19a69ff1a559e211af6edb596e33ee1b1d5f44490febf325c78c6c7";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    bytestring
    system-filepath
    text
    time
    unix
  ];
  testHaskellDepends = [
    base
    bytestring
    chell
    system-filepath
    temporary
    text
    time
    transformers
    unix
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/fpco/haskell-filesystem";
  description = "Consistent filesystem interaction across GHC versions (deprecated)";
  license = lib.licenses.mit;
  broken = false;
}
