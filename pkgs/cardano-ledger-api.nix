{ mkDerivation
, base
, bytestring
, cardano-binary
, cardano-ledger-alonzo
, cardano-ledger-babbage
, cardano-ledger-babbage-test
, cardano-ledger-conway
, cardano-ledger-core
, cardano-ledger-shelley
, cardano-ledger-shelley-ma
, fetchgit
, lib
, microlens
, QuickCheck
, tasty
, tasty-quickcheck
}:
mkDerivation {
  pname = "cardano-ledger-api";
  version = "0.1.0.0";
  src = fetchgit {
    url = "https://github.com/milloni/cardano-ledger";
    sha256 = "0x6xx0rx85ygnl0wclr9w4li3pmc9zf7xi5wqb7h0ibzbqyrhbzf";
    rev = "f24ec5ad840458588e6e3ec2440add911f066aeb";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/libs/cardano-ledger-api/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    cardano-ledger-alonzo
    cardano-ledger-babbage
    cardano-ledger-conway
    cardano-ledger-core
    cardano-ledger-shelley
    cardano-ledger-shelley-ma
    microlens
  ];
  testHaskellDepends = [
    base
    bytestring
    cardano-binary
    cardano-ledger-alonzo
    cardano-ledger-babbage
    cardano-ledger-babbage-test
    cardano-ledger-core
    cardano-ledger-shelley
    microlens
    QuickCheck
    tasty
    tasty-quickcheck
  ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Public API for the cardano ledger codebase";
  license = lib.licenses.asl20;
  broken = false;
}
