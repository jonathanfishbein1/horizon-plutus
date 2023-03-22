{ mkDerivation, base, fetchzip, lib }:
mkDerivation {
  pname = "contra-tracer";
  version = "0.1.0.1";
  src = fetchzip {
    url = "https://input-output-hk.github.io/cardano-haskell-packages/package/contra-tracer-0.1.0.1.tar.gz";
    sha256 = "03f3i1x08m9xjxfzjjh26cpjhvczslcc7hpn9cmdkmpkbdz2fdsd";
  };
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "A simple interface for logging, tracing or monitoring";
  license = lib.licenses.asl20;
  broken = false;
}