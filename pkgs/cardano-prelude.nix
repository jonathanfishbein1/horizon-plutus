{ mkDerivation
, aeson
, base
, base16-bytestring
, bytestring
, canonical-json
, cborg
, containers
, fetchzip
, formatting
, ghc-heap
, ghc-prim
, integer-gmp
, lib
, microlens
, mtl
, protolude
, tagged
, text
, time
}:
mkDerivation {
  pname = "cardano-prelude";
  version = "0.1.0.1";
  src = fetchzip {
    url = "https://input-output-hk.github.io/cardano-haskell-packages/package/cardano-prelude-0.1.0.1.tar.gz";
    sha256 = "12m6z877q2my47x4sgl4zikviha884ajkpp6grvxb3qgdvrxbnw1";
  };
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson
    base
    base16-bytestring
    bytestring
    canonical-json
    cborg
    containers
    formatting
    ghc-heap
    ghc-prim
    integer-gmp
    microlens
    mtl
    protolude
    tagged
    text
    time
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "A Prelude replacement for the Cardano project";
  license = lib.licenses.mit;
  broken = false;
}
