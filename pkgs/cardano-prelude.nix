{ mkDerivation
, aeson
, base
, base16-bytestring
, bytestring
, canonical-json
, cborg
, containers
, fetchgit
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
  src = fetchgit {
    url = "https://github.com/input-output-hk/cardano-prelude";
    sha256 = "1bshxlraxkm12kj5fn98n8vqwdl8ivxh069zr1y5icmfh8hv50zd";
    rev = "b6053a23f53acd5c519cc559c3861dda3ebf8b35";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/cardano-prelude/; echo source root reset to $sourceRoot";
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
