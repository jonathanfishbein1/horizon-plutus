{ mkDerivation, ansi-wl-pprint, base, cardano-data, containers
, fetchgit, lib, tasty, tasty-hunit, tasty-quickcheck
}:
mkDerivation {
  pname = "set-algebra";
  version = "1.0.0.0";
  src = fetchgit {
    url = "https://github.com/input-output-hk/cardano-ledger";
    sha256 = "015b386n97xlp6d26s9njs5w75wv3i82jh1iywksifqyz2539wg6";
    rev = "62846d6de6464095ab7aae6d7f466c5173460937";
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