{ mkDerivation, base, cardano-ledger-allegra, cardano-ledger-mary
, cardano-ledger-shelley, fetchgit, lib
}:
mkDerivation {
  pname = "cardano-ledger-shelley-ma";
  version = "1.1.0.0";
  src = fetchgit {
    url = "https://github.com/input-output-hk/cardano-ledger";
    sha256 = "015b386n97xlp6d26s9njs5w75wv3i82jh1iywksifqyz2539wg6";
    rev = "62846d6de6464095ab7aae6d7f466c5173460937";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/eras/shelley-ma/impl/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base cardano-ledger-allegra cardano-ledger-mary
    cardano-ledger-shelley
  ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Deprecated package that used to implement Allegra and Mary eras";
  license = lib.licenses.asl20;
  broken = false;
}