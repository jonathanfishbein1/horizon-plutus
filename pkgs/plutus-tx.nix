{ mkDerivation
, aeson
, base
, base16-bytestring
, bytestring
, cborg
, containers
, deepseq
, deriving-compat
, doctest
, extra
, fetchgit
, filepath
, flat
, ghc-prim
, hashable
, hedgehog
, hedgehog-fn
, lens
, lib
, memory
, mtl
, plutus-core
, pretty-show
, prettyprinter
, serialise
, tagged
, tasty
, tasty-hedgehog
, tasty-hunit
, template-haskell
, text
, th-abstraction
, th-compat
, transformers
}:
mkDerivation {
  pname = "plutus-tx";
  version = "1.0.0.0";
  src = fetchgit {
    url = "https://github.com/milloni/plutus";
    sha256 = "0pzzqqbp6jvrzxp7gyi4dnnc5pg0jnr76dsaq6pzn3zgr46pgbd3";
    rev = "81cd1ada745c12af2c2c28afce1f6b6b28b38fdd";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/plutus-tx/; echo source root reset to $sourceRoot";
  libraryHaskellDepends = [
    aeson
    base
    bytestring
    containers
    deepseq
    deriving-compat
    extra
    filepath
    flat
    ghc-prim
    hashable
    lens
    memory
    mtl
    plutus-core
    prettyprinter
    serialise
    tagged
    tasty
    template-haskell
    text
    th-abstraction
    th-compat
    transformers
  ];
  testHaskellDepends = [
    aeson
    base
    base16-bytestring
    bytestring
    cborg
    filepath
    hedgehog
    hedgehog-fn
    plutus-core
    pretty-show
    serialise
    tasty
    tasty-hedgehog
    tasty-hunit
    text
    transformers
  ];
  testToolDepends = [ doctest ];
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  hyperlinkSource = false;
  description = "Libraries for Plutus Tx and its prelude";
  license = lib.licenses.asl20;
}
