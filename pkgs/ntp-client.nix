{ mkDerivation, QuickCheck, Win32-network, async, base, binary
, bytestring, contra-tracer, fetchzip, lib, network, stm, tasty
, tasty-quickcheck, time
}:
mkDerivation {
  pname = "ntp-client";
  version = "0.0.1";
  src = fetchzip {
    url = "https://input-output-hk.github.io/cardano-haskell-packages/package/ntp-client-0.0.1.tar.gz";
    sha256 = "0vxmjnxzl6rbr96593m1r6al42mpmdxlm4725wfmsa2abnrr541k";
  };
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    async base binary bytestring contra-tracer network stm time
    Win32-network
  ];
  executableHaskellDepends = [
    async base contra-tracer Win32-network
  ];
  testHaskellDepends = [
    base binary QuickCheck tasty tasty-quickcheck time
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  license = lib.licenses.asl20;
  broken = false;
}