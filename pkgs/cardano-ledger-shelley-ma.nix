{ mkDerivation
, base
, base16-bytestring
, bytestring
, cardano-binary
, cardano-crypto-class
, cardano-data
, cardano-ledger-core
, cardano-ledger-shelley
, cardano-slotting
, cardano-strict-containers
, cborg
, containers
, deepseq
, fetchgit
, groups
, lib
, microlens
, mtl
, nothunks
, primitive
, small-steps
, text
, transformers
, validation-selective
}:
mkDerivation {
  pname = "cardano-ledger-shelley-ma";
  version = "0.1.0.0";
  src = fetchgit {
    url = "https://github.com/milloni/cardano-ledger";
    sha256 = "08nj6hcqj5apvb17n1irc8j7rzf10bcdh5gh1mkmhwbyw6h2d4ab";
    rev = "3aa1fd8469424778454644f0d371988fb4490b4a";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/eras/shelley-ma/impl/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    base16-bytestring
    bytestring
    cardano-binary
    cardano-crypto-class
    cardano-data
    cardano-ledger-core
    cardano-ledger-shelley
    cardano-slotting
    cardano-strict-containers
    cborg
    containers
    deepseq
    groups
    microlens
    mtl
    nothunks
    primitive
    small-steps
    text
    transformers
    validation-selective
  ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Shelley ledger with multiasset and time lock support";
  license = lib.licenses.asl20;
  broken = false;
}
