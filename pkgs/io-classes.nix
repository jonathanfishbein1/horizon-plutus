{ mkDerivation, array, async, base, bytestring, fetchgit, lib, mtl
, stm, time
}:
mkDerivation {
  pname = "io-classes";
  version = "1.1.0.0";
  src = fetchgit {
    url = "https://github.com/input-output-hk/io-sim";
    sha256 = "1460w11y3aadvyyxxq8gw36bn058xcndxai9hiq2ghgn3nycndfg";
    rev = "df0ddc92200cc880478a656604a736cfb9250568";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/io-classes/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    array async base bytestring mtl stm time
  ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Type classes for concurrency with STM, ST and timing";
  license = lib.licenses.asl20;
  broken = false;
}