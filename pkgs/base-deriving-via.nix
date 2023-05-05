{ mkDerivation, base, fetchgit, lib }:
mkDerivation {
  pname = "base-deriving-via";
  version = "0.1.0.2";
  src = fetchgit {
    url = "https://github.com/locallycompact/cardano-base";
    sha256 = "0n3w1k30ivdppyidyws9riy1qyx4881gxw8v1v34sixbraj0ng5k";
    rev = "f954aec4fbe11ba96729ddcc5e22c13ab6320b5d";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/base-deriving-via/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "A general hook newtype for use with deriving via";
  license = lib.licenses.asl20;
  broken = false;
}