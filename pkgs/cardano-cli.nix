{ mkDerivation, Diff, aeson, aeson-pretty, ansi-terminal
, attoparsec, base, base16-bytestring, bech32, binary, bytestring
, canonical-json, cardano-api, cardano-binary, cardano-crypto
, cardano-crypto-class, cardano-crypto-wrapper, cardano-data
, cardano-git-rev, cardano-ledger-alonzo, cardano-ledger-binary
, cardano-ledger-byron, cardano-ledger-conway, cardano-ledger-core
, cardano-ledger-shelley, cardano-node, cardano-ping
, cardano-prelude, cardano-protocol-tpraos, cardano-slotting
, cardano-strict-containers, cborg, containers, contra-tracer
, cryptonite, deepseq, directory, exceptions, fetchgit, filepath
, formatting, hedgehog, hedgehog-extras, io-classes, iproute, lib
, microlens, mtl, network, optparse-applicative-fork
, ouroboros-consensus, ouroboros-consensus-cardano
, ouroboros-consensus-protocol, ouroboros-network-api
, ouroboros-network-protocols, parsec, prettyprinter
, prettyprinter-ansi-terminal, random, split, strict-stm, text
, time, transformers, transformers-except, unix, unliftio-core
, unordered-containers, utf8-string, vector, yaml
}:
mkDerivation {
  pname = "cardano-cli";
  version = "8.0.0";
  src = fetchgit {
    url = "https://github.com/input-output-hk/cardano-node";
    sha256 = "1gzhzjdjvf4qinrkw32gglbsd7gwi7r3q4972z1z3vpbg70ky7z7";
    rev = "d6228270e9b6811ca1d00ca9ce9d0254e63c2d6c";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/cardano-cli/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson aeson-pretty ansi-terminal attoparsec base base16-bytestring
    bech32 binary bytestring canonical-json cardano-api cardano-binary
    cardano-crypto cardano-crypto-class cardano-crypto-wrapper
    cardano-data cardano-git-rev cardano-ledger-alonzo
    cardano-ledger-binary cardano-ledger-byron cardano-ledger-conway
    cardano-ledger-core cardano-ledger-shelley cardano-ping
    cardano-prelude cardano-protocol-tpraos cardano-slotting
    cardano-strict-containers cborg containers contra-tracer cryptonite
    deepseq directory filepath formatting io-classes iproute microlens
    mtl network optparse-applicative-fork ouroboros-consensus
    ouroboros-consensus-cardano ouroboros-consensus-protocol
    ouroboros-network-api ouroboros-network-protocols parsec
    prettyprinter prettyprinter-ansi-terminal random split strict-stm
    text time transformers transformers-except unliftio-core
    utf8-string vector yaml
  ];
  executableHaskellDepends = [
    base cardano-crypto-class optparse-applicative-fork
    transformers-except unix
  ];
  testHaskellDepends = [
    aeson base base16-bytestring bech32 bytestring cardano-api
    cardano-crypto-wrapper cardano-ledger-byron cardano-node
    cardano-prelude cardano-slotting cborg containers Diff directory
    exceptions filepath hedgehog hedgehog-extras parsec text time
    transformers unix unordered-containers yaml
  ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "The Cardano command-line interface";
  license = lib.licenses.asl20;
  broken = false;
}