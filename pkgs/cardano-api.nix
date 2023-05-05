{ mkDerivation, QuickCheck, aeson, aeson-pretty, attoparsec, base
, base16-bytestring, base58-bytestring, bech32, bytestring
, cardano-binary, cardano-crypto, cardano-crypto-class
, cardano-crypto-test, cardano-crypto-tests, cardano-crypto-wrapper
, cardano-data, cardano-ledger-allegra, cardano-ledger-alonzo
, cardano-ledger-alonzo-test, cardano-ledger-api
, cardano-ledger-babbage, cardano-ledger-binary
, cardano-ledger-byron, cardano-ledger-byron-test
, cardano-ledger-conway, cardano-ledger-core, cardano-ledger-mary
, cardano-ledger-shelley, cardano-ledger-shelley-test
, cardano-protocol-tpraos, cardano-slotting
, cardano-strict-containers, cborg, containers, contra-tracer
, cryptonite, deepseq, directory, either, fetchgit, filepath
, formatting, hedgehog, hedgehog-extras, hedgehog-quickcheck
, iproute, lib, memory, microlens, mtl, network, nothunks
, optparse-applicative-fork, ouroboros-consensus
, ouroboros-consensus-cardano, ouroboros-consensus-diffusion
, ouroboros-consensus-protocol, ouroboros-network
, ouroboros-network-api, ouroboros-network-framework
, ouroboros-network-protocols, parsec, plutus-ledger-api
, prettyprinter, prettyprinter-configurable, random, scientific
, serialise, small-steps, stm, tasty, tasty-hedgehog
, tasty-quickcheck, text, time, transformers, transformers-except
, typed-protocols, unix, unordered-containers, vector, yaml
}:
mkDerivation {
  pname = "cardano-api";
  version = "8.0.0";
  src = fetchgit {
    url = "https://github.com/input-output-hk/cardano-node";
    sha256 = "0wkbz2yxwaaxx6w5j2snbp8gg8imjjipw8zka3lcnrp3jx9gx1ha";
    rev = "b7d70f3a54921669519e1de1ec6ed381d01b28fb";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/cardano-api/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson aeson-pretty attoparsec base base16-bytestring
    base58-bytestring bech32 bytestring cardano-binary cardano-crypto
    cardano-crypto-class cardano-crypto-test cardano-crypto-wrapper
    cardano-data cardano-ledger-allegra cardano-ledger-alonzo
    cardano-ledger-alonzo-test cardano-ledger-api
    cardano-ledger-babbage cardano-ledger-binary cardano-ledger-byron
    cardano-ledger-byron-test cardano-ledger-conway cardano-ledger-core
    cardano-ledger-mary cardano-ledger-shelley cardano-protocol-tpraos
    cardano-slotting cardano-strict-containers cborg containers
    contra-tracer cryptonite deepseq directory either filepath
    formatting hedgehog iproute memory microlens mtl network nothunks
    optparse-applicative-fork ouroboros-consensus
    ouroboros-consensus-cardano ouroboros-consensus-diffusion
    ouroboros-consensus-protocol ouroboros-network
    ouroboros-network-api ouroboros-network-framework
    ouroboros-network-protocols parsec plutus-ledger-api prettyprinter
    prettyprinter-configurable random scientific serialise small-steps
    stm text time transformers transformers-except typed-protocols unix
    unordered-containers vector yaml
  ];
  testHaskellDepends = [
    aeson base bytestring cardano-crypto cardano-crypto-class
    cardano-crypto-test cardano-crypto-tests cardano-data
    cardano-ledger-api cardano-ledger-core cardano-ledger-shelley
    cardano-ledger-shelley-test cardano-slotting containers hedgehog
    hedgehog-extras hedgehog-quickcheck microlens mtl QuickCheck tasty
    tasty-hedgehog tasty-quickcheck time
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "The cardano api";
  license = lib.licenses.asl20;
  broken = false;
}