{ mkDerivation, base, bimap, byron-spec-ledger, bytestring
, containers, data-ordlist, fetchgit, hashable, hedgehog, lib
, microlens, microlens-th, small-steps, small-steps-test, tasty
, tasty-hedgehog, tasty-hunit
}:
mkDerivation {
  pname = "byron-spec-chain";
  version = "1.0.0.0";
  src = fetchgit {
    url = "https://github.com/input-output-hk/cardano-ledger";
    sha256 = "015b386n97xlp6d26s9njs5w75wv3i82jh1iywksifqyz2539wg6";
    rev = "62846d6de6464095ab7aae6d7f466c5173460937";
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
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
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