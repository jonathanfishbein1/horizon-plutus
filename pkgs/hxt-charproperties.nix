{ mkDerivation, base, lib }:
mkDerivation {
  pname = "hxt-charproperties";
  version = "9.5.0.0";
  sha256 = "28836949512a2aedb63b2a02e0b05a4f519dc3511cfd259804a6e9d59a44a94a";
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
  homepage = "https://github.com/UweSchmidt/hxt";
  description = "Character properties and classes for XML and Unicode";
  license = lib.licenses.mit;
  broken = false;
}
