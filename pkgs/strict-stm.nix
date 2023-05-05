{ mkDerivation, array, base, fetchgit, io-classes, lib, stm }:
mkDerivation {
  pname = "strict-stm";
  version = "1.1.0.0";
  src = fetchgit {
    url = "https://github.com/input-output-hk/io-sim";
    sha256 = "1460w11y3aadvyyxxq8gw36bn058xcndxai9hiq2ghgn3nycndfg";
    rev = "df0ddc92200cc880478a656604a736cfb9250568";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/strict-stm/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ array base io-classes stm ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Strict STM interface polymorphic over stm implementation";
  license = lib.licenses.asl20;
  broken = false;
}