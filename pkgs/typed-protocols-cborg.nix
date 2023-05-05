{ mkDerivation, base, bytestring, cborg, fetchgit, io-classes, lib
, typed-protocols
}:
mkDerivation {
  pname = "typed-protocols-cborg";
  version = "0.1.0.2";
  src = fetchgit {
    url = "https://github.com/input-output-hk/typed-protocols";
    sha256 = "0a6sb0917xpn9rzlw6dsrw0bjzyh7ljy5wdfhq9svnmg6sbmmk7x";
    rev = "a8af24cab3a5be0a27f398e6e068c29bed053d1e";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/typed-protocols-cborg/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base bytestring cborg io-classes typed-protocols
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