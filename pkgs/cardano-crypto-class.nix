{ mkDerivation
, aeson
, base
, base16-bytestring
, bytestring
, cardano-binary
, cardano-mempool
, cardano-strict-containers
, cryptonite
, deepseq
, fetchgit
, heapwords
, io-classes
, lib
, libblst
, libsodium
, memory
, mtl
, nothunks
, primitive
, secp256k1
, serialise
, template-haskell
, text
, th-compat
, transformers
, vector
}:
mkDerivation {
  pname = "cardano-crypto-class";
  version = "2.2.0.0";
  src = fetchgit {
    url = "https://github.com/input-output-hk/cardano-base";
    sha256 = "02j77wa5km222cxs2pyxl5zqwplxp1da0qp9spwlbivli63xgacd";
    rev = "1ffb694513f33ba043d93bae87ee71b026ccb62f";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/cardano-crypto-class/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson
    base
    base16-bytestring
    bytestring
    cardano-binary
    cardano-mempool
    cardano-strict-containers
    cryptonite
    deepseq
    heapwords
    io-classes
    memory
    mtl
    nothunks
    primitive
    serialise
    template-haskell
    text
    th-compat
    transformers
    vector
  ];
  libraryPkgconfigDepends = [ libblst libsodium secp256k1 ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Type classes abstracting over cryptography primitives for Cardano";
  license = lib.licenses.asl20;
  broken = false;
}
