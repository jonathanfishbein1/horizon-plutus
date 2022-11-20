{ mkDerivation
, aeson
, base
, base16-bytestring
, binary
, bytestring
, cardano-binary
, cardano-crypto
, cardano-crypto-class
, cardano-crypto-praos
, cardano-crypto-wrapper
, cardano-data
, cardano-ledger-byron
, cardano-prelude
, cardano-slotting
, cardano-strict-containers
, cborg
, containers
, data-default-class
, deepseq
, fetchgit
, groups
, heapwords
, iproute
, lib
, microlens
, mtl
, network
, non-integral
, nothunks
, partial-order
, primitive
, quiet
, scientific
, set-algebra
, small-steps
, text
, time
, transformers
, validation-selective
}:
mkDerivation {
  pname = "cardano-ledger-core";
  version = "0.1.0.0";
  src = fetchgit {
    url = "https://github.com/milloni/cardano-ledger";
    sha256 = "08nj6hcqj5apvb17n1irc8j7rzf10bcdh5gh1mkmhwbyw6h2d4ab";
    rev = "3aa1fd8469424778454644f0d371988fb4490b4a";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/libs/cardano-ledger-core/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson
    base
    base16-bytestring
    binary
    bytestring
    cardano-binary
    cardano-crypto
    cardano-crypto-class
    cardano-crypto-praos
    cardano-crypto-wrapper
    cardano-data
    cardano-ledger-byron
    cardano-prelude
    cardano-slotting
    cardano-strict-containers
    cborg
    containers
    data-default-class
    deepseq
    groups
    heapwords
    iproute
    microlens
    mtl
    network
    non-integral
    nothunks
    partial-order
    primitive
    quiet
    scientific
    set-algebra
    small-steps
    text
    time
    transformers
    validation-selective
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Core components of Cardano ledgers from the Shelley release on";
  license = lib.licenses.asl20;
  broken = false;
}
