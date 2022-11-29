{ mkDerivation
, base
, bytestring
, cborg
, fetchgit
, io-classes
, lib
, typed-protocols
}:
mkDerivation {
  pname = "typed-protocols-cborg";
  version = "0.1.0.2";
  src = fetchgit {
    url = "https://github.com/input-output-hk/typed-protocols";
    sha256 = "0dfba0q2qjsbg4cyyqb2dvk84mrgh94vnwp1zc1x8wyvpshfnkbr";
    rev = "ab4e0346c3215daad4c823f3ddc0eefae32091ff";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/typed-protocols-cborg/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    bytestring
    cborg
    io-classes
    typed-protocols
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "CBOR codecs for typed-protocols";
  license = lib.licenses.asl20;
  broken = false;
}
