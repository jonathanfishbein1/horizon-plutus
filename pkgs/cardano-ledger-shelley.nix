{ mkDerivation, aeson, base, base16-bytestring, bytestring
, cardano-binary, cardano-crypto, cardano-crypto-class
, cardano-crypto-wrapper, cardano-data, cardano-ledger-byron
, cardano-ledger-core, cardano-slotting, cardano-strict-containers
, cborg, containers, data-default-class, deepseq, fetchgit, groups
, heapwords, iproute, lib, microlens, mtl, nothunks, quiet
, set-algebra, small-steps, text, time, transformers
, validation-selective, vector-map
}:
mkDerivation {
  pname = "cardano-ledger-shelley";
  version = "0.1.0.0";
  src = fetchgit {
    url = "https://github.com/milloni/cardano-ledger";
    sha256 = "08nj6hcqj5apvb17n1irc8j7rzf10bcdh5gh1mkmhwbyw6h2d4ab";
    rev = "3aa1fd8469424778454644f0d371988fb4490b4a";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/eras/shelley/impl/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson base base16-bytestring bytestring cardano-binary
    cardano-crypto cardano-crypto-class cardano-crypto-wrapper
    cardano-data cardano-ledger-byron cardano-ledger-core
    cardano-slotting cardano-strict-containers cborg containers
    data-default-class deepseq groups heapwords iproute microlens mtl
    nothunks quiet set-algebra small-steps text time transformers
    validation-selective vector-map
  ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Shelley Ledger Executable Model";
  license = lib.licenses.asl20;
  broken = false;
}