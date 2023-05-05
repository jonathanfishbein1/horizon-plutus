{ mkDerivation, base, contra-tracer, fetchzip, lib, safe-exceptions
, text, time
}:
mkDerivation {
  pname = "tracer-transformers";
  version = "0.1.0.2";
  src = fetchzip {
    url = "https://input-output-hk.github.io/cardano-haskell-packages/package/tracer-transformers-0.1.0.2.tar.gz";
    sha256 = "0rdkr85rxq5n7bcdscw4l4n3dsmc65plpm51hh9xr2dgaq8h7aha";
  };
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base contra-tracer safe-exceptions time
  ];
  executableHaskellDepends = [ base contra-tracer text time ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "tracer transformers and examples showing their use";
  license = lib.licenses.asl20;
  broken = false;
}