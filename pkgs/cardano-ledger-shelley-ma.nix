{ mkDerivation
, base
, cardano-ledger-allegra
, cardano-ledger-mary
, cardano-ledger-shelley
, fetchgit
, lib
}:
mkDerivation {
  pname = "cardano-ledger-shelley-ma";
  version = "1.1.0.0";
  src = fetchgit {
    url = "https://github.com/input-output-hk/cardano-ledger";
    sha256 = "120995ssz1nf21pp52xwhmcs4cdfndzv4459l8cjvwbaygs7nvvl";
    rev = "180271602640bcac1214084b6de61d0468332f00";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/eras/shelley-ma/impl/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    cardano-ledger-allegra
    cardano-ledger-mary
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
