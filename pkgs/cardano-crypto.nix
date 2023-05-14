{ mkDerivation, base, basement, bytestring, cryptonite, deepseq
, fetchgit, foundation, gauge, hashable, integer-gmp, lib, memory
}:
mkDerivation {
  pname = "cardano-crypto";
  version = "1.1.0";
  src = fetchgit {
    url = "https://github.com/input-output-hk/cardano-crypto";
    sha256 = "06sdx5ndn2g722jhpicmg96vsrys89fl81k8290b3lr6b1b0w4m3";
    rev = "07397f0e50da97eaa0575d93bee7ac4b2b2576ec";
    fetchSubmodules = true;
  };
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base basement bytestring cryptonite deepseq foundation hashable
    integer-gmp memory
  ];
  testHaskellDepends = [
    base basement bytestring cryptonite foundation memory
  ];
  benchmarkHaskellDepends = [
    base bytestring cryptonite gauge memory
  ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/input-output-hk/cardano-crypto#readme";
  description = "Cryptography primitives for cardano";
  license = lib.licenses.mit;
  broken = false;
}