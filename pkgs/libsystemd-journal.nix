{ mkDerivation
, base
, bytestring
, hashable
, hsyslog
, lib
, pipes
, pipes-safe
, semigroups
, systemd
, text
, transformers
, uniplate
, unix-bytestring
, unordered-containers
, uuid
, vector
}:
mkDerivation {
  pname = "libsystemd-journal";
  version = "1.4.5";
  sha256 = "a8c7a2140d0046cb71887fc7ff6f8885feb3bac966d01d9a83b25226b5778f06";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    bytestring
    hashable
    hsyslog
    pipes
    pipes-safe
    semigroups
    text
    transformers
    uniplate
    unix-bytestring
    unordered-containers
    uuid
    vector
  ];
  libraryPkgconfigDepends = [ systemd ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://github.com/ocharles/libsystemd-journal";
  description = "Haskell bindings to libsystemd-journal";
  license = lib.licenses.bsd3;
  broken = false;
}
