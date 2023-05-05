{ mkDerivation, base, bytestring, containers, fetchgit, ghc-heap
, ghc-prim, hedgehog, lib, random, stm, tasty, tasty-hedgehog, text
, time, vector
}:
mkDerivation {
  pname = "nothunks";
  version = "0.1.3";
  src = fetchgit {
    url = "https://github.com/locallycompact/nothunks";
    sha256 = "0df24vnidfb2nl8hqbcikg8rczvibm721z52w61s1w3a3p1dr7b4";
    rev = "0d7e3565407aa4eb21d861d075dff6f20d090f97";
    fetchSubmodules = true;
  };
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base bytestring containers ghc-heap stm text time vector
  ];
  testHaskellDepends = [
    base containers ghc-prim hedgehog random stm tasty tasty-hedgehog
  ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Examine values for unexpected thunks";
  license = lib.licenses.mit;
  broken = false;
}