{ mkDerivation, QuickCheck, aeson, base, base16-bytestring, binary
, bytestring, cardano-binary, cardano-crypto-class
, cardano-crypto-praos, cardano-crypto-tests, cardano-prelude-test
, cardano-slotting, cardano-strict-containers, cborg, containers
, data-fix, deepseq, fetchgit, formatting, half, hedgehog
, hedgehog-quickcheck, hspec, iproute, lib, microlens, mtl, network
, nothunks, plutus-ledger-api, pretty-show, primitive
, quickcheck-instances, random, recursion-schemes, serialise
, tagged, tasty-hunit, text, time, transformers, tree-diff, vector
, vector-map
}:
mkDerivation {
  pname = "cardano-ledger-binary";
  version = "1.1.0.0";
  src = fetchgit {
    url = "https://github.com/input-output-hk/cardano-ledger";
    sha256 = "0lfd6l3pzlwipvvv1i4v47ha25qmx0vxc1k23g71f17lzakjs4gm";
    rev = "81548171f2cd336714bb0425640a6553c46aa09e";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/libs/cardano-ledger-binary/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson base base16-bytestring binary bytestring cardano-binary
    cardano-crypto-class cardano-crypto-praos cardano-crypto-tests
    cardano-prelude-test cardano-slotting cardano-strict-containers
    cborg containers data-fix deepseq formatting half hedgehog hspec
    iproute microlens mtl network nothunks plutus-ledger-api
    pretty-show primitive QuickCheck quickcheck-instances random
    recursion-schemes serialise tagged tasty-hunit text time
    transformers tree-diff vector vector-map
  ];
  testHaskellDepends = [
    base bytestring cardano-crypto-class cardano-crypto-praos
    cardano-prelude-test cardano-slotting cardano-strict-containers
    cborg containers hedgehog hedgehog-quickcheck hspec iproute
    primitive QuickCheck tagged text time vector vector-map
  ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/input-output-hk/cardano-ledger";
  description = "Binary serialization library used throughout ledger";
  license = lib.licenses.asl20;
  broken = false;
}