{ mkDerivation, QuickCheck, aeson, base, base-deriving-via
, base16-bytestring, bimap, binary-search, byron-spec-chain
, byron-spec-ledger, bytestring, cardano-binary, cardano-crypto
, cardano-crypto-class, cardano-crypto-test, cardano-crypto-wrapper
, cardano-data, cardano-ledger-allegra, cardano-ledger-alonzo
, cardano-ledger-alonzo-test, cardano-ledger-babbage
, cardano-ledger-babbage-test, cardano-ledger-binary
, cardano-ledger-byron, cardano-ledger-byron-test
, cardano-ledger-conway, cardano-ledger-conway-test
, cardano-ledger-core, cardano-ledger-mary, cardano-ledger-shelley
, cardano-ledger-shelley-ma-test, cardano-ledger-shelley-test
, cardano-prelude, cardano-protocol-tpraos, cardano-slotting
, cardano-strict-containers, cborg, containers, contra-tracer
, cryptonite, deepseq, directory, fetchgit, filepath, formatting
, fs-api, generic-random, hedgehog-quickcheck, lib, measures
, microlens, mtl, nothunks, optparse-applicative
, ouroboros-consensus, ouroboros-consensus-diffusion
, ouroboros-consensus-protocol, ouroboros-network-api
, ouroboros-network-mock, quiet, serialise, small-steps
, small-steps-test, sop-core, tasty, tasty-hunit, tasty-quickcheck
, text, text-builder, these, transformers, transformers-except
, vector-map
}:
mkDerivation {
  pname = "ouroboros-consensus-cardano";
  version = "0.5.0.1";
  src = fetchgit {
    url = "https://github.com/input-output-hk/ouroboros-consensus";
    sha256 = "0as3yw8r9cms4sp0zdzij9kp5p81gh16z2bjaarvns79ddpxy1hv";
    rev = "9ebe62d3f1a5b932c984a7b435f93692916fec60";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/ouroboros-consensus-cardano/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson base base-deriving-via base16-bytestring bimap
    byron-spec-chain byron-spec-ledger bytestring cardano-binary
    cardano-crypto cardano-crypto-class cardano-crypto-test
    cardano-crypto-wrapper cardano-data cardano-ledger-allegra
    cardano-ledger-alonzo cardano-ledger-alonzo-test
    cardano-ledger-babbage cardano-ledger-babbage-test
    cardano-ledger-binary cardano-ledger-byron
    cardano-ledger-byron-test cardano-ledger-conway
    cardano-ledger-conway-test cardano-ledger-core cardano-ledger-mary
    cardano-ledger-shelley cardano-ledger-shelley-ma-test
    cardano-ledger-shelley-test cardano-prelude cardano-protocol-tpraos
    cardano-slotting cardano-strict-containers cborg containers
    contra-tracer cryptonite deepseq directory filepath formatting
    fs-api generic-random hedgehog-quickcheck measures microlens mtl
    nothunks ouroboros-consensus ouroboros-consensus-diffusion
    ouroboros-consensus-protocol ouroboros-network-api QuickCheck quiet
    serialise small-steps text text-builder these transformers
    transformers-except vector-map
  ];
  executableHaskellDepends = [
    base cardano-crypto-wrapper optparse-applicative
    ouroboros-consensus
  ];
  testHaskellDepends = [
    base binary-search byron-spec-chain byron-spec-ledger bytestring
    cardano-crypto-class cardano-crypto-wrapper cardano-ledger-alonzo
    cardano-ledger-alonzo-test cardano-ledger-binary
    cardano-ledger-byron cardano-ledger-byron-test
    cardano-ledger-conway cardano-ledger-core cardano-ledger-shelley
    cardano-protocol-tpraos cardano-slotting cborg containers filepath
    hedgehog-quickcheck microlens mtl ouroboros-consensus
    ouroboros-consensus-diffusion ouroboros-consensus-protocol
    ouroboros-network-api ouroboros-network-mock QuickCheck small-steps
    small-steps-test sop-core tasty tasty-hunit tasty-quickcheck
  ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "The instantation of the Ouroboros consensus layer used by Cardano";
  license = lib.licenses.asl20;
  broken = false;
}