{ mkDerivation, array, base, fetchgit, io-classes, lib, mtl
, si-timers
}:
mkDerivation {
  pname = "io-classes-mtl";
  version = "0.1.0.1";
  src = fetchgit {
    url = "https://github.com/input-output-hk/io-sim";
    sha256 = "1460w11y3aadvyyxxq8gw36bn058xcndxai9hiq2ghgn3nycndfg";
    rev = "df0ddc92200cc880478a656604a736cfb9250568";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/io-classes-mtl/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ array base io-classes mtl si-timers ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Experimental MTL instances for io-classes";
  license = lib.licenses.asl20;
  broken = false;
}