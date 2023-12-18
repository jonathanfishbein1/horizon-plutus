{ mkDerivation, PyF, async, barbies, base, base16-bytestring
, base64-bytestring, bytestring, cborg, containers, deepseq, extra
, fetchzip, filepath, flat, hedgehog, lens, lib, mtl, nothunks
, plutus-core, plutus-tx, plutus-tx-plugin, prettyprinter
, serialise, tagged, tasty, tasty-hedgehog, tasty-hunit
, tasty-quickcheck, text
}:
mkDerivation {
  pname = "plutus-ledger-api";
  version = "1.15.0.1";
  src = fetchzip {
    url = "https://chap.intersectmbo.org/package/plutus-ledger-api-1.15.0.1.tar.gz";
    sha256 = "1bv976hpbv4k83drsrwh359vicc398hadaayxbljqh9ayzbab3lx";
  };
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    barbies base base16-bytestring base64-bytestring bytestring cborg
    containers deepseq flat lens mtl nothunks plutus-core plutus-tx
    prettyprinter PyF serialise tagged text
  ];
  executableHaskellDepends = [
    async base extra filepath mtl plutus-core serialise tasty
    tasty-hunit
  ];
  testHaskellDepends = [
    base bytestring cborg containers extra hedgehog mtl nothunks
    plutus-core plutus-tx plutus-tx-plugin prettyprinter tasty
    tasty-hedgehog tasty-hunit tasty-quickcheck
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