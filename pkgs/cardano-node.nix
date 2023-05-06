{ mkDerivation, aeson, async, base, base16-bytestring, bytestring
, cardano-api, cardano-crypto-class, cardano-crypto-wrapper
, cardano-git-rev, cardano-ledger-allegra, cardano-ledger-alonzo
, cardano-ledger-babbage, cardano-ledger-byron
, cardano-ledger-conway, cardano-ledger-core
, cardano-ledger-shelley, cardano-prelude, cardano-protocol-tpraos
, cardano-slotting, cborg, containers, contra-tracer, deepseq
, directory, dns, ekg, ekg-core, fetchgit, filepath, generic-data
, hedgehog, hedgehog-corpus, hostname, io-classes, iohk-monitoring
, iproute, lib, lobemo-backend-aggregation, lobemo-backend-ekg
, lobemo-backend-monitoring, lobemo-backend-trace-forwarder
, lobemo-scribe-systemd, mtl, network, network-mux, nothunks
, optparse-applicative-fork, ouroboros-consensus
, ouroboros-consensus-cardano, ouroboros-consensus-diffusion
, ouroboros-consensus-protocol, ouroboros-network
, ouroboros-network-api, ouroboros-network-framework
, ouroboros-network-protocols, prettyprinter
, prettyprinter-ansi-terminal, psqueues, safe-exceptions
, scientific, si-timers, stm, strict-stm, systemd, text, time
, trace-dispatcher, trace-forward, trace-resources
, tracer-transformers, transformers, transformers-except
, typed-protocols, unix, vector, yaml
}:
mkDerivation {
  pname = "cardano-node";
  version = "8.0.0";
  src = fetchgit {
    url = "https://github.com/input-output-hk/cardano-node";
    sha256 = "1gzhzjdjvf4qinrkw32gglbsd7gwi7r3q4972z1z3vpbg70ky7z7";
    rev = "d6228270e9b6811ca1d00ca9ce9d0254e63c2d6c";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/cardano-node/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson async base base16-bytestring bytestring cardano-api
    cardano-crypto-class cardano-crypto-wrapper cardano-git-rev
    cardano-ledger-allegra cardano-ledger-alonzo cardano-ledger-babbage
    cardano-ledger-byron cardano-ledger-conway cardano-ledger-core
    cardano-ledger-shelley cardano-prelude cardano-protocol-tpraos
    cardano-slotting cborg containers contra-tracer deepseq directory
    dns ekg ekg-core filepath generic-data hostname io-classes
    iohk-monitoring iproute lobemo-backend-aggregation
    lobemo-backend-ekg lobemo-backend-monitoring
    lobemo-backend-trace-forwarder lobemo-scribe-systemd mtl network
    network-mux nothunks optparse-applicative-fork ouroboros-consensus
    ouroboros-consensus-cardano ouroboros-consensus-diffusion
    ouroboros-consensus-protocol ouroboros-network
    ouroboros-network-api ouroboros-network-framework
    ouroboros-network-protocols prettyprinter
    prettyprinter-ansi-terminal psqueues safe-exceptions scientific
    si-timers stm strict-stm systemd text time trace-dispatcher
    trace-forward trace-resources tracer-transformers transformers
    transformers-except typed-protocols unix yaml
  ];
  executableHaskellDepends = [
    base cardano-git-rev optparse-applicative-fork text
  ];
  testHaskellDepends = [
    aeson base bytestring cardano-api cardano-slotting directory
    hedgehog hedgehog-corpus iproute mtl ouroboros-consensus
    ouroboros-consensus-diffusion ouroboros-network
    ouroboros-network-api text time unix vector
  ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "The cardano full node";
  license = lib.licenses.asl20;
  broken = false;
}