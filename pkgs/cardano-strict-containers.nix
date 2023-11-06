{ mkDerivation, aeson, base, cardano-binary, cborg, containers
, data-default-class, deepseq, fetchzip, fingertree, lib, nothunks
, serialise
}:
mkDerivation {
  pname = "cardano-strict-containers";
  version = "0.1.2.1";
  src = fetchzip {
    url = "https://input-output-hk.github.io/cardano-haskell-packages/package/cardano-strict-containers-0.1.2.1.tar.gz";
    sha256 = "05szacvalxvw5xfyz0i7mvdlflnvhxj14vski5h3hzdcia3xvpxj";
  };
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson base cardano-binary cborg containers data-default-class
    deepseq fingertree nothunks serialise
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Various strict container types";
  license = lib.licenses.asl20;
  broken = false;
}