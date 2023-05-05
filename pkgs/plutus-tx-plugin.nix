{ mkDerivation
, PyF
, array
, base
, bytestring
, containers
, deepseq
, either
, extra
, fetchgit
, flat
, ghc
, hedgehog
, lens
, lib
, mtl
, optparse-applicative
, plutus-core
, plutus-tx
, prettyprinter
, tagged
, tasty
, tasty-hedgehog
, tasty-hunit
, template-haskell
, text
}:
mkDerivation {
  pname = "plutus-tx-plugin";
  version = "1.3.0.0";
  src = fetchgit {
    url = "https://github.com/input-output-hk/plutus";
    sha256 = "0wxydqj949hi1zzybblfwmbj5j05sy51kn3byhpnizspqjjcjb07";
    rev = "b94d0e001c8f7350b5120b20cbc9d9021d377a8a";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/plutus-tx-plugin/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    array
    base
    bytestring
    containers
    either
    extra
    flat
    ghc
    lens
    mtl
    plutus-core
    plutus-tx
    prettyprinter
    PyF
    template-haskell
    text
  ];
  executableHaskellDepends = [
    base
    containers
    lens
    optparse-applicative
    prettyprinter
    PyF
    text
  ];
  testHaskellDepends = [
    base
    containers
    deepseq
    flat
    hedgehog
    lens
    mtl
    plutus-core
    plutus-tx
    tagged
    tasty
    tasty-hedgehog
    tasty-hunit
    template-haskell
    text
  ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "The Plutus Tx compiler and GHC plugin";
  license = lib.licenses.asl20;
  broken = false;
}
