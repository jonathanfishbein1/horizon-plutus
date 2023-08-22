{ mkDerivation, PyF, async, base, base16-bytestring
, base64-bytestring, bytestring, cborg, containers, deepseq, extra
, fetchzip, filepath, flat, hedgehog, lens, lib, mtl, nothunks
, plutus-core, plutus-tx, prettyprinter, serialise, tagged, tasty
, tasty-hedgehog, tasty-hunit, tasty-quickcheck, text
}:
mkDerivation {
  pname = "plutus-ledger-api";
  version = "1.8.0.0";
  src = fetchzip {
    url = "https://input-output-hk.github.io/cardano-haskell-packages/package/plutus-ledger-api-1.8.0.0.tar.gz";
    sha256 = "19qnb4qvw4d2kq3byqnpq3j8znjyk08qxfddjkfb8w65146ic5v7";
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