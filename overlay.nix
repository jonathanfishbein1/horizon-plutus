{ inputs, pkgs }:
final: prev: with pkgs.haskell.lib; 
  let doDevbreak = x: enableCabalFlag (dontCheck (doJailbreak x)) "development";
 in
 {

  PyF = prev.callHackage "PyF" "0.11.0.0" { };

  algebraic-graphs = prev.callHackage "algebraic-graphs" "0.7" {};

  bin = doJailbreak prev.bin;

  base16 = doJailbreak (dontCheck prev.base16);

  bech32 = dontCheck (prev.callHackage "bech32" "1.1.2" { });

  canonical-json = dontCheck (doJailbreak (prev.callHackage "canonical-json" "0.6.0.1" {}));

  cardano-binary = doDevbreak (prev.callCabal2nix "cardano-binary" (inputs.cardano-base + /binary) {});

  cardano-crypto = prev.callCabal2nix "cardano-crypto" inputs.cardano-crypto { };

  cardano-crypto-class = doDevbreak (addPkgconfigDepend (prev.callCabal2nix "cardano-crypto-class" (inputs.cardano-base + /cardano-crypto-class) {}) pkgs.libsodium);

  cardano-crypto-praos = doDevbreak (addPkgconfigDepend (prev.callCabal2nix "cardano-crypto-praos" (inputs.cardano-base + /cardano-crypto-praos) {}) pkgs.libsodium);

  cardano-prelude = enableCabalFlag (doJailbreak (prev.callCabal2nix "cardano-prelude" (inputs.cardano-prelude + /cardano-prelude) {})) "development";

  cardano-prelude-test = dontHaddock (prev.callCabal2nix "cardano-prelude-test" (inputs.cardano-prelude + /cardano-prelude-test) {});

  cardano-strict-containers = enableCabalFlag (prev.callCabal2nix "cardano-strict-containers" (inputs.cardano-base + /cardano-strict-containers) {}) "development";

  flat = dontCheck (prev.callCabal2nix "flat" inputs.flat { });

  fin = doJailbreak prev.fin;

  heapwords = enableCabalFlag (prev.callCabal2nix "heapwords" (inputs.cardano-base + /heapwords) {}) "development";

  inline-r = doJailbreak (prev.callCabal2nix "inline-r" (inputs.HaskellR + /inline-r) {});

  jsaddle = doJailbreak (prev.callHackage "jsaddle" "0.9.8.2" { });

  microstache = doJailbreak prev.microstache;

  monoidal-containers = doJailbreak prev.monoidal-containers;

  multiset = dontCheck prev.multiset;

  nonempty-vector = doJailbreak (dontCheck prev.nonempty-vector);

#  nothunks = dontCheck (prev.callHackage "nothunks" "0.1.3" { });
  nothunks = dontCheck (doJailbreak (prev.callCabal2nix "nothunks" inputs.nothunks { }));

  prettyprinter-configurable = dontCheck (prev.callCabal2nix "prettyprinter-configurable" (inputs.plutus + /prettyprinter-configurable) {});

  plutus-core = setBuildTarget (disableLibraryProfiling (dontBenchmark (dontCheck (doJailbreak (prev.callCabal2nix "plutus-core" (inputs.plutus + /plutus-core) {}))))) "plc";

  plutus-ledger-api = disableLibraryProfiling (dontBenchmark (dontCheck (doJailbreak (prev.callCabal2nix "plutus-ledger-api" (inputs.plutus + /plutus-ledger-api) {}))));

  plutus-tx = disableLibraryProfiling (dontBenchmark (dontCheck (doJailbreak (prev.callCabal2nix "plutus-tx" (inputs.plutus + /plutus-tx) {}))));

  protolude = doJailbreak (prev.callHackage "protolude" "0.3.2" { });

  ral = doJailbreak (prev.callHackage "ral" "0.1" { });

  recursion-schemes = doJailbreak (prev.callHackage "recursion-schemes" "5.2.2.2" { });

  ref-tf = prev.callHackage "ref-tf" "0.5.0.1" { };

  secp256k1 = pkgs.secp256k1;

  secp256k1-haskell = addPkgconfigDepend (dontCheck (prev.secp256k1-haskell)) pkgs.secp256k1;

  singletons-th = prev.callHackage "singletons-th" "3.1.1" { };

  th-extras = doJailbreak prev.th-extras;

  th-desugar = prev.callHackage "th-desugar" "1.14" {};

  vector-binary-instances = doJailbreak prev.vector-binary-instances;

  word-array = prev.callCabal2nix "word-array" (inputs.plutus + /word-array) {};

}
