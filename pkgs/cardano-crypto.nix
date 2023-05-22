{ mkDerivation, base, basement, bytestring, cryptonite, deepseq
, fetchzip, foundation, gauge, hashable, integer-gmp, lib, memory
}:
mkDerivation {
  pname = "cardano-crypto";
  version = "1.1.2";
  src = fetchzip {
    url = "https://input-output-hk.github.io/cardano-haskell-packages/package/cardano-crypto-1.1.2.tar.gz";
    sha256 = "0355hs12mlrzk3pvmrb6c1sg2rvbpnwkdja9ky6psji5paxs81bn";
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