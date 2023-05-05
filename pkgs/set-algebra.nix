{ mkDerivation, ansi-wl-pprint, base, cardano-data, containers
, fetchgit, lib, tasty, tasty-hunit, tasty-quickcheck
}:
mkDerivation {
  pname = "set-algebra";
  version = "1.0.0.0";
  src = fetchgit {
    url = "https://github.com/input-output-hk/cardano-ledger";
    sha256 = "0lfd6l3pzlwipvvv1i4v47ha25qmx0vxc1k23g71f17lzakjs4gm";
    rev = "81548171f2cd336714bb0425640a6553c46aa09e";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/libs/set-algebra/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    ansi-wl-pprint base cardano-data containers
  ];
  testHaskellDepends = [
    base cardano-data containers tasty tasty-hunit tasty-quickcheck
  ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/input-output-hk/cardano-ledger";
  description = "Set Algebra";
  license = lib.licenses.asl20;
  broken = false;
}