{ mkDerivation, PyF, QuickCheck, async, barbies, base
, base16-bytestring, base64-bytestring, bytestring, cborg
, containers, deepseq, extra, fetchzip, filepath, flat, hedgehog
, lens, lib, mtl, nothunks, plutus-core, plutus-tx
, plutus-tx-plugin, prettyprinter, primitive, serialise, tagged
, tasty, tasty-hedgehog, tasty-hunit, tasty-quickcheck, text
}:
mkDerivation {
  pname = "plutus-ledger-api";
  version = "1.19.0.0";
  src = fetchzip {
    url = "https://chap.intersectmbo.org/package/plutus-ledger-api-1.19.0.0.tar.gz";
    sha256 = "00y47bh3x6j945vrkzn8xqa654zvrfrns36cpf66sxc5yy0s85f6";
  };
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    barbies base base16-bytestring base64-bytestring bytestring cborg
    containers deepseq flat lens mtl nothunks plutus-core plutus-tx
    prettyprinter PyF QuickCheck serialise tagged text
  ];
  executableHaskellDepends = [
    async base extra filepath lens mtl plutus-core plutus-tx primitive
    serialise tasty tasty-hunit
  ];
  testHaskellDepends = [
    base bytestring cborg containers extra hedgehog lens mtl nothunks
    plutus-core plutus-tx plutus-tx-plugin prettyprinter serialise
    tasty tasty-hedgehog tasty-hunit tasty-quickcheck
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Interface to the Plutus ledger for the Cardano ledger";
  license = lib.licenses.asl20;
  broken = false;
}