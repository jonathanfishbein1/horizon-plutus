{ mkDerivation
, aeson
, base
, cardano-binary
, cborg
, containers
, data-default-class
, deepseq
, fetchzip
, fingertree
, lib
, nothunks
, serialise
}:
mkDerivation {
  pname = "strict-containers";
  version = "0.1.0.0";
  src = fetchzip {
    url = "https://input-output-hk.github.io/cardano-haskell-packages/package/strict-containers-0.1.0.0.tar.gz";
    sha256 = "1mrvds6j384f6ai099j2xk2c7rgyvhp8nlgyxpzbajpas6kw40si";
  };
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson
    base
    cardano-binary
    cborg
    containers
    data-default-class
    deepseq
    fingertree
    nothunks
    serialise
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
