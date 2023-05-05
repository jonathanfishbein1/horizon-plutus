{ mkDerivation
, ansi-wl-pprint
, base
, cardano-data
, containers
, fetchgit
, lib
, tasty
, tasty-hunit
, tasty-quickcheck
}:
mkDerivation {
  pname = "set-algebra";
  version = "1.1.0.0";
  src = fetchgit {
    url = "https://github.com/input-output-hk/cardano-ledger";
    sha256 = "120995ssz1nf21pp52xwhmcs4cdfndzv4459l8cjvwbaygs7nvvl";
    rev = "180271602640bcac1214084b6de61d0468332f00";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/libs/set-algebra/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    ansi-wl-pprint
    base
    cardano-data
    containers
  ];
  testHaskellDepends = [
    base
    cardano-data
    containers
    tasty
    tasty-hunit
    tasty-quickcheck
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
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
