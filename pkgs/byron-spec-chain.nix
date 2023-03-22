{ mkDerivation, base, bimap, byron-spec-ledger, bytestring
, containers, data-ordlist, fetchgit, hashable, hedgehog, lib
, microlens, microlens-th, small-steps, small-steps-test, tasty
, tasty-hedgehog, tasty-hunit
}:
mkDerivation {
  pname = "byron-spec-chain";
  version = "0.1.0.0";
  src = fetchgit {
    url = "https://github.com/milloni/cardano-ledger";
    sha256 = "08nj6hcqj5apvb17n1irc8j7rzf10bcdh5gh1mkmhwbyw6h2d4ab";
    rev = "3aa1fd8469424778454644f0d371988fb4490b4a";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/eras/byron/chain/executable-spec/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base bimap byron-spec-ledger bytestring containers hashable
    hedgehog microlens microlens-th small-steps small-steps-test
  ];
  testHaskellDepends = [
    base byron-spec-ledger containers data-ordlist hedgehog microlens
    small-steps small-steps-test tasty tasty-hedgehog tasty-hunit
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/input-output-hk/cardano-legder";
  description = "Executable specification of the Cardano blockchain";
  license = lib.licenses.asl20;
  broken = false;
}