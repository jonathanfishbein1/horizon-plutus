{ mkDerivation, QuickCheck, base, bytestring, cardano-binary
, cardano-crypto-class, cardano-crypto-tests, cardano-ledger-binary
, cardano-ledger-core, cardano-ledger-shelley
, cardano-ledger-shelley-test, cardano-protocol-tpraos
, cardano-slotting, cborg, containers, fetchgit, lib, mtl, nothunks
, ouroboros-consensus, serialise, text
}:
mkDerivation {
  pname = "ouroboros-consensus-protocol";
  version = "0.5.0.1";
  src = fetchgit {
    url = "https://github.com/input-output-hk/ouroboros-consensus";
    sha256 = "0as3yw8r9cms4sp0zdzij9kp5p81gh16z2bjaarvns79ddpxy1hv";
    rev = "9ebe62d3f1a5b932c984a7b435f93692916fec60";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/ouroboros-consensus-protocol/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base bytestring cardano-binary cardano-crypto-class
    cardano-crypto-tests cardano-ledger-binary cardano-ledger-core
    cardano-ledger-shelley cardano-ledger-shelley-test
    cardano-protocol-tpraos cardano-slotting cborg containers mtl
    nothunks ouroboros-consensus QuickCheck serialise text
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Cardano consensus protocols";
  license = lib.licenses.asl20;
  broken = false;
}