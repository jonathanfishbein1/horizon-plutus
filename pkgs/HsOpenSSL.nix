{ mkDerivation
, Cabal
, base
, bytestring
, lib
, network
, openssl
, time
}:
mkDerivation {
  pname = "HsOpenSSL";
  version = "0.11.7.2";
  sha256 = "8536c0939e52c990b2998a4ac5ff2b5886e1701b41b9934a87df8ec910754d7b";
  revision = "3";
  editedCabalFile = "0nsqxym87s48029laqba4nzwpk7nrk35x7wmpjqfnbrj82ddcshd";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  setupHaskellDepends = [ base Cabal ];
  libraryHaskellDepends = [ base bytestring network time ];
  librarySystemDepends = [ openssl ];
  testHaskellDepends = [ base bytestring ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/haskell-cryptography/HsOpenSSL";
  description = "Partial OpenSSL binding for Haskell";
  license = lib.licenses.publicDomain;
  broken = false;
}
