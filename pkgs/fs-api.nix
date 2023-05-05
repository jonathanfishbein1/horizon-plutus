{ mkDerivation, base, bytestring, containers, deepseq, digest
, directory, fetchgit, filepath, io-classes, lib, text, unix
, unix-bytestring
}:
mkDerivation {
  pname = "fs-api";
  version = "0.1.0.1";
  src = fetchgit {
    url = "https://github.com/input-output-hk/fs-sim";
    sha256 = "1a0k727qahpil2ycvq2y5s7ck0q81f0r5hbkw0h3gyrk47h0zh4g";
    rev = "ee0ddcda91c8a66465e442096ba7c7289f3662f8";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/fs-api/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base bytestring containers deepseq digest directory filepath
    io-classes text unix unix-bytestring
  ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "API for file systems";
  license = lib.licenses.asl20;
  broken = false;
}