{ mkDerivation, base, bytestring, cardano-ledger-alonzo
, cardano-ledger-core, fetchgit, flat, hashable, lib
, plutus-ledger-api, plutus-tx, plutus-tx-plugin, serialise
, template-haskell
}:
mkDerivation {
  pname = "plutus-preprocessor";
  version = "0.1.0.0";
  src = fetchgit {
    url = "https://github.com/input-output-hk/cardano-ledger";
    sha256 = "0lfd6l3pzlwipvvv1i4v47ha25qmx0vxc1k23g71f17lzakjs4gm";
    rev = "81548171f2cd336714bb0425640a6553c46aa09e";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/libs/plutus-preprocessor/; echo source root reset to $sourceRoot";
  isLibrary = false;
  isExecutable = true;
  enableSeparateDataOutput = false;
  executableHaskellDepends = [
    base bytestring cardano-ledger-alonzo cardano-ledger-core flat
    hashable plutus-ledger-api plutus-tx plutus-tx-plugin serialise
    template-haskell
  ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "A preproceesor for creating plutus scripts as bytestrings and equivalents";
  license = lib.licenses.asl20;
  broken = false;
}