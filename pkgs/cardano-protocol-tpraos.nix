{ mkDerivation
, base
, bytestring
, cardano-binary
, cardano-crypto-class
, cardano-ledger-alonzo
, cardano-ledger-babbage
, cardano-ledger-conway
, cardano-ledger-core
, cardano-ledger-shelley
, cardano-ledger-shelley-ma
, cardano-slotting
, containers
, deepseq
, fetchgit
, lib
, mtl
, non-integral
, nothunks
, quiet
, set-algebra
, small-steps
, transformers
}:
mkDerivation {
  pname = "cardano-protocol-tpraos";
  version = "0.1.0.0";
  src = fetchgit {
    url = "https://github.com/milloni/cardano-ledger";
    sha256 = "08nj6hcqj5apvb17n1irc8j7rzf10bcdh5gh1mkmhwbyw6h2d4ab";
    rev = "3aa1fd8469424778454644f0d371988fb4490b4a";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/libs/cardano-protocol-tpraos/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    bytestring
    cardano-binary
    cardano-crypto-class
    cardano-ledger-alonzo
    cardano-ledger-babbage
    cardano-ledger-conway
    cardano-ledger-core
    cardano-ledger-shelley
    cardano-ledger-shelley-ma
    cardano-slotting
    containers
    deepseq
    mtl
    non-integral
    nothunks
    quiet
    set-algebra
    small-steps
    transformers
  ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Cardano Protocol: Transitional Praos";
  license = lib.licenses.asl20;
  broken = false;
}
