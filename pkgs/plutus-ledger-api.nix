{ mkDerivation, PyF, async, barbies, base, base16-bytestring
, base64-bytestring, bytestring, cborg, containers, deepseq, extra
, fetchgit, filepath, flat, hedgehog, lens, lib, mtl, nothunks
, plutus-core, plutus-tx, prettyprinter, serialise, tagged, tasty
, tasty-hedgehog, tasty-hunit, tasty-quickcheck, text
}:
mkDerivation {
  pname = "plutus-ledger-api";
  version = "1.3.0.0";
  src = fetchgit {
    url = "https://github.com/input-output-hk/plutus";
    sha256 = "0wxydqj949hi1zzybblfwmbj5j05sy51kn3byhpnizspqjjcjb07";
    rev = "b94d0e001c8f7350b5120b20cbc9d9021d377a8a";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/plutus-ledger-api/; echo source root reset to $sourceRoot";
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
    barbies base bytestring containers extra hedgehog lens mtl nothunks
    plutus-core plutus-tx tasty tasty-hedgehog tasty-hunit
    tasty-quickcheck text
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