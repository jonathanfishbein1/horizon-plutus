{ mkDerivation, PyF, async, base, base16-bytestring
, base64-bytestring, bytestring, cborg, containers, deepseq, extra
, fetchzip, filepath, flat, hedgehog, lens, lib, mtl, nothunks
, plutus-core, plutus-tx, prettyprinter, serialise, tagged, tasty
, tasty-hedgehog, tasty-hunit, tasty-quickcheck, text
}:
mkDerivation {
  pname = "plutus-ledger-api";
  version = "1.10.0.0";
  src = fetchzip {
    url = "https://input-output-hk.github.io/cardano-haskell-packages/package/plutus-ledger-api-1.10.0.0.tar.gz";
    sha256 = "02clf6a86j7q3x17h4f4ci1jbywm4f502llaxjs9ysnf0cr291sb";
  };
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base base16-bytestring base64-bytestring bytestring cborg
    containers deepseq extra flat lens mtl nothunks plutus-core
    plutus-tx prettyprinter PyF serialise tagged text
  ];
  executableHaskellDepends = [
    async base extra filepath mtl plutus-core serialise tasty
    tasty-hunit
  ];
  testHaskellDepends = [
    base bytestring containers extra hedgehog mtl nothunks plutus-core
    plutus-tx tasty tasty-hedgehog tasty-hunit tasty-quickcheck text
  ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Interface to the Plutus ledger for the Cardano ledger";
  license = lib.licenses.asl20;
  broken = false;
}