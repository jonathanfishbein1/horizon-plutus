{ mkDerivation, QuickCheck, base, base16-bytestring, bytestring
, cardano-prelude-test, cborg, containers, data-fix, fetchzip
, formatting, hedgehog, hspec, lib, pretty-show, primitive
, quickcheck-instances, recursion-schemes, safe-exceptions, tagged
, text, time, tree-diff, vector
}:
mkDerivation {
  pname = "cardano-binary";
  version = "1.7.1.0";
  src = fetchzip {
    url = "https://chap.intersectmbo.org/package/cardano-binary-1.7.1.0.tar.gz";
    sha256 = "1n2pgvmcmbay4dlrzbs52k57669kwji84r122gpv5d4694h508rv";
  };
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base base16-bytestring bytestring cborg containers data-fix
    formatting primitive recursion-schemes safe-exceptions tagged text
    time tree-diff vector
  ];
  testHaskellDepends = [
    base bytestring cardano-prelude-test cborg containers formatting
    hedgehog hspec pretty-show QuickCheck quickcheck-instances tagged
    text time vector
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Binary serialization for Cardano";
  license = lib.licenses.asl20;
  broken = false;
}