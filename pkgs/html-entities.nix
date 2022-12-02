{ mkDerivation
, attoparsec
, base
, lib
, text
, unordered-containers
}:
mkDerivation {
  pname = "html-entities";
  version = "1.1.4.6";
  sha256 = "db8f9064ab5b594c7f0901da0405ffc8c4d0cbf31f4414742c5b9f87c7b16199";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    attoparsec
    base
    text
    unordered-containers
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/nikita-volkov/html-entities";
  description = "A codec library for HTML-escaped text and HTML-entities";
  license = lib.licenses.mit;
  broken = false;
}
