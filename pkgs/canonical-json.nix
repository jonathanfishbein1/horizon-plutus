{ mkDerivation, QuickCheck, aeson, base, bytestring, containers
, criterion, deepseq, lib, parsec, pretty, tasty, tasty-quickcheck
, unordered-containers, vector
}:
mkDerivation {
  pname = "canonical-json";
  version = "0.6.0.1";
  sha256 = "33df39d9058d33357956cdf7f911184a26da20c49b90f844ec6374f6bf5ace7e";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base bytestring containers deepseq parsec pretty
  ];
  testHaskellDepends = [
    aeson base bytestring containers QuickCheck tasty tasty-quickcheck
    unordered-containers vector
  ];
  benchmarkHaskellDepends = [ base bytestring containers criterion ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/well-typed/canonical-json";
  description = "Canonical JSON for signing and hashing JSON values";
  license = lib.licenses.bsd3;
  broken = false;
}