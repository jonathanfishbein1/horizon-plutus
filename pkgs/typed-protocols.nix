{ mkDerivation, base, fetchgit, io-classes, lib }:
mkDerivation {
  pname = "typed-protocols";
  version = "0.1.0.4";
  src = fetchgit {
    url = "https://github.com/input-output-hk/typed-protocols";
    sha256 = "0a6sb0917xpn9rzlw6dsrw0bjzyh7ljy5wdfhq9svnmg6sbmmk7x";
    rev = "a8af24cab3a5be0a27f398e6e068c29bed053d1e";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/typed-protocols/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base io-classes ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "A framework for strongly typed protocols";
  license = lib.licenses.asl20;
  broken = false;
}