{ mkDerivation, QuickCheck, base, base16-bytestring, bifunctors
, bytestring, containers, fetchgit, fs-api, generics-sop
, io-classes, lib, mtl, pretty-show, quickcheck-state-machine
, random, strict-stm, tasty, tasty-hunit, tasty-quickcheck
, temporary, text, tree-diff
}:
mkDerivation {
  pname = "fs-sim";
  version = "0.1.0.1";
  src = fetchgit {
    url = "https://github.com/input-output-hk/fs-sim";
    sha256 = "1a0k727qahpil2ycvq2y5s7ck0q81f0r5hbkw0h3gyrk47h0zh4g";
    rev = "ee0ddcda91c8a66465e442096ba7c7289f3662f8";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/fs-sim/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base base16-bytestring bytestring containers fs-api io-classes mtl
    QuickCheck strict-stm text
  ];
  testHaskellDepends = [
    base bifunctors bytestring containers fs-api generics-sop
    pretty-show QuickCheck quickcheck-state-machine random tasty
    tasty-hunit tasty-quickcheck temporary text tree-diff
  ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Simulated file systems";
  license = lib.licenses.asl20;
  broken = false;
}