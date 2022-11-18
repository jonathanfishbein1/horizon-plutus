let HsSrc =
      < FromHackage : { name : Text, version : Text }
      | FromGit :
          { url : Text, revision : Optional Text, subdir : Optional Text }
      >

let Modifiers =
      { Type = { doJailbreak : Bool, doCheck : Bool }
      , default = { doJailbreak = True, doCheck = False }
      }

let Attr = λ(a : Type) → { mapKey : Text, mapValue : a }

let HsPkg =
      { Type = { source : HsSrc, modifiers : Modifiers.Type }
      , default.modifiers = Modifiers.default
      }

let callHackage
    : ∀(name : Text) → ∀(version : Text) → Attr HsPkg.Type
    = λ(name : Text) →
      λ(version : Text) →
        { mapKey = name
        , mapValue = HsPkg::{ source = HsSrc.FromHackage { name, version } }
        }

let callCabal2nix
    : ∀(name : Text) →
      ∀(url : Text) →
      ∀(revision : Optional Text) →
      ∀(subdir : Optional Text) →
        Attr HsPkg.Type
    = λ(name : Text) →
      λ(url : Text) →
      λ(revision : Optional Text) →
      λ(subdir : Optional Text) →
        { mapKey = name
        , mapValue = HsPkg::{ source = HsSrc.FromGit { url, revision, subdir } }
        }

let callCardanoLedger
    : ∀(name : Text) →
      ∀(subdir : Text) →
        Attr HsPkg.Type
    = λ(name : Text) →
      λ(subdir : Text) →
        callCabal2nix
          name
          "https://github.com/milloni/cardano-ledger"
          (Some "3aa1fd8469424778454644f0d371988fb4490b4a")
          (Some subdir)

in  [ callHackage "HTF" "0.15.0.0"
    , callHackage "PyF" "0.11.0.0"
    , callHackage "Stream" "0.4.7.2"
    , callHackage "Unique" "0.4.7.9"
    , callHackage "algebraic-graphs" "0.7"
    , callHackage "base58-bytestring" "0.1.0"
    , callHackage "base64-bytestring-type" "1.0.1"
    , callCabal2nix
        "base-deriving-via"
        "https://github.com/input-output-hk/cardano-base"
        (Some "46cd4c97cff9f1f0a0da976aa9e32bd2899c85ee")
        (Some "base-deriving-via")
    , callHackage "base-prelude" "1.6.1"
    , callHackage "bech32" "1.1.2"
    , callCardanoLedger "byron-spec-chain" "eras/byron/chain/executable-spec"
    , callCardanoLedger "byron-spec-ledger" "eras/byron/ledger/executable-spec"
    , callHackage "canonical-json" "0.6.0.1"
    , callCabal2nix
        "cardano-binary"
        "https://github.com/input-output-hk/cardano-base"
        (Some "46cd4c97cff9f1f0a0da976aa9e32bd2899c85ee")
        (Some "binary")
    , callCabal2nix
        "cardano-binary-test"
        "https://github.com/input-output-hk/cardano-base"
        (Some "46cd4c97cff9f1f0a0da976aa9e32bd2899c85ee")
        (Some "binary/test")
    , callCabal2nix
        "cardano-crypto"
        "https://github.com/input-output-hk/cardano-crypto"
        (Some "07397f0e50da97eaa0575d93bee7ac4b2b2576ec")
        (None Text)
    , callCabal2nix
        "cardano-crypto-class"
        "https://github.com/input-output-hk/cardano-base"
        (Some "46cd4c97cff9f1f0a0da976aa9e32bd2899c85ee")
        (Some "cardano-crypto-class")
    , callCabal2nix
        "cardano-crypto-praos"
        "https://github.com/input-output-hk/cardano-base"
        (Some "46cd4c97cff9f1f0a0da976aa9e32bd2899c85ee")
        (Some "cardano-crypto-praos")
    , callCardanoLedger "cardano-crypto-test" "eras/byron/crypto/test"
    , callCardanoLedger "cardano-crypto-wrapper" "eras/byron/crypto"
    , callCardanoLedger "cardano-data" "libs/cardano-data"
    , callCardanoLedger "cardano-ledger-alonzo" "eras/alonzo/impl"
    , callCardanoLedger "cardano-ledger-alonzo-test" "eras/alonzo/test-suite"
    , callCardanoLedger "cardano-ledger-api" "libs/cardano-ledger-api"
    , callCardanoLedger "cardano-ledger-babbage" "eras/babbage/impl"
    , callCardanoLedger "cardano-ledger-babbage-test" "eras/babbage/test-suite"
    , callCardanoLedger "cardano-ledger-byron" "eras/byron/ledger/impl"
    , callCardanoLedger "cardano-ledger-byron-test" "eras/byron/ledger/impl/test"
    , callCardanoLedger "cardano-ledger-conway" "eras/conway/impl"
    , callCardanoLedger "cardano-ledger-conway-test" "eras/conway/test-suite"
    , callCardanoLedger "cardano-ledger-core" "libs/cardano-ledger-core"
    , callCardanoLedger "cardano-ledger-pretty" "libs/cardano-ledger-pretty"
    , callCardanoLedger "cardano-ledger-shelley" "eras/shelley/impl"
    , callCardanoLedger "cardano-ledger-shelley-test" "eras/shelley/test-suite"
    , callCardanoLedger "cardano-ledger-shelley-ma" "eras/shelley-ma/impl"
    , callCardanoLedger "cardano-ledger-shelley-ma-test" "eras/shelley-ma/test-suite"
    , callCardanoLedger "cardano-ledger-test" "libs/cardano-ledger-test"
    , callCardanoLedger "cardano-protocol-tpraos" "libs/cardano-protocol-tpraos"
    , callCabal2nix
        "cardano-slotting"
        "https://github.com/input-output-hk/cardano-base"
        (Some "46cd4c97cff9f1f0a0da976aa9e32bd2899c85ee")
        (Some "slotting")
    , callCabal2nix
        "cardano-strict-containers"
        "https://github.com/input-output-hk/cardano-base"
        (Some "46cd4c97cff9f1f0a0da976aa9e32bd2899c85ee")
        (Some "cardano-strict-containers")
    , callCabal2nix
        "cardano-prelude"
        "https://github.com/input-output-hk/cardano-prelude"
        (Some "b6053a23f53acd5c519cc559c3861dda3ebf8b35")
        (Some "cardano-prelude")
    , callCabal2nix
        "cardano-prelude-test"
        "https://github.com/input-output-hk/cardano-prelude"
        (Some "b6053a23f53acd5c519cc559c3861dda3ebf8b35")
        (Some "cardano-prelude-test")
    , callHackage "composition-prelude" "3.0.0.2"
    , callHackage "contra-tracer" "0.2.0.0"
    , callHackage "data-ordlist" "0.4.7.0"
    , callHackage "dependent-sum-template" "0.1.1.1"
    , callHackage "deriving-compat" "0.6.1"
    , callCabal2nix
        "flat"
        "https://github.com/Quid2/flat"
        (Some "2121ee96201e39764e3a6fcbc53241afb0050647")
        (None Text)
    , callHackage "generic-monoid" "0.1.0.1"
    , callCabal2nix
        "ghc-typelits-knownnat"
        "https://github.com/clash-lang/ghc-typelits-knownnat"
        (Some "1bc4ee33e005e96d1f7785c715588a289707cd48")
        (None Text)
    , callCabal2nix
        "ghc-typelits-natnormalise"
        "https://github.com/clash-lang/ghc-typelits-natnormalise"
        (Some "e0af5b3c69a7d8e1dd402eb727631801e7d9be3d")
        (None Text)
    , callCabal2nix
        "goblins"
        "https://github.com/newhoggy/goblins"
        (Some "a315f41ec7250097fa6073b5ef4773e45758578f")
        (None Text)
    , callCabal2nix
        "gray-code"
        "https://github.com/milloni/gray-code-0.3.1"
        (Some "f310a19e44416206633cfd084f10ffb7cfea9f1d")
        (None Text)
    , callHackage "haskell-src" "1.0.4"
    , callCabal2nix
        "heapwords"
        "https://github.com/input-output-hk/cardano-base"
        (Some "46cd4c97cff9f1f0a0da976aa9e32bd2899c85ee")
        (Some "heapwords")
    , callHackage "hedgehog-quickcheck" "0.1.1"
    , callHackage "heredoc" "0.2.0.0"
    , callHackage "inline-c" "0.9.1.6"
    , callCabal2nix
        "inline-r"
        "https://github.com/tweag/HaskellR"
        (Some "fe9b5bd06cd4d3988e47b9933b11d83b6108e255")
        (Some "inline-r")
    , callHackage "int-cast" "0.2.0.0"
    , callCabal2nix
        "measures"
        "https://github.com/input-output-hk/cardano-base"
        (Some "46cd4c97cff9f1f0a0da976aa9e32bd2899c85ee")
        (Some "measures")
    , callHackage "mersenne-random-pure64" "0.2.2.0"
    , callHackage "monoidal-containers" "0.6.3.0"
    , callCabal2nix
        "moo"
        "https://github.com/milloni/moo"
        (Some "20e4c6ee880e7d62b18b995750063dd7349a3f8e")
        (None Text)
    , callHackage "mtl-prelude" "2.0.3.1"
    , callHackage "multiset" "0.3.4.3"
    , callHackage "lazysmallcheck" "0.6"
    , callHackage "list-t" "1.0.5.3"
    , callCardanoLedger "non-integral" "libs/non-integral"
    , callCabal2nix
        "nothunks"
        "https://github.com/locallycompact/nothunks"
        (Some "0d7e3565407aa4eb21d861d075dff6f20d090f97")
        (None Text)
    , callHackage "partial-order" "0.2.0.0"
    , callCabal2nix
        "plutus-core"
        "https://github.com/milloni/plutus"
        (Some "81cd1ada745c12af2c2c28afce1f6b6b28b38fdd")
        (Some "plutus-core")
    , callCabal2nix
        "plutus-ledger-api"
        "https://github.com/milloni/plutus"
        (Some "81cd1ada745c12af2c2c28afce1f6b6b28b38fdd")
        (Some "plutus-ledger-api")
    , callCardanoLedger "plutus-preprocessor" "libs/plutus-preprocessor"
    , callCabal2nix
        "plutus-tx"
        "https://github.com/milloni/plutus"
        (Some "81cd1ada745c12af2c2c28afce1f6b6b28b38fdd")
        (Some "plutus-tx")
    , callCabal2nix
        "prettyprinter-configurable"
        "https://github.com/milloni/plutus"
        (Some "81cd1ada745c12af2c2c28afce1f6b6b28b38fdd")
        (Some "prettyprinter-configurable")
    , callHackage "protolude" "0.3.2"
    , callHackage "quiet" "0.2"
    , callHackage "ral" "0.1"
    , callHackage "recursion-schemes" "5.2.2.2"
    , callHackage "ref-tf" "0.5.0.1"
    , callCardanoLedger "set-algebra" "libs/set-algebra"
    , callHackage "singletons-th" "3.1.1"
    , callCardanoLedger "small-steps" "libs/small-steps"
    , callCardanoLedger "small-steps-test" "libs/small-steps-test"
    , callHackage "streaming-binary" "0.3.0.1"
    , callHackage "streaming-bytestring" "0.2.4"
    , callCabal2nix
        "strict-containers"
        "https://github.com/milloni/strict-containers"
        (Some "9e833be00bc2c5cdb0b4e743b7a2cde00dd4f616")
        (Some "strict-containers")
    , callHackage "th-desugar" "1.14"
    , callCabal2nix
        "typerep-map"
        "https://github.com/parsonsmatt/typerep-map"
        (Some "75b7cd5d45986be07420a6821d352ad2adc0b697")
        (None Text)
    , callHackage "validation-selective" "0.1.0.2"
    , callCardanoLedger "vector-map" "libs/vector-map"
    , callCabal2nix
        "word-array"
        "https://github.com/milloni/plutus"
        (Some "81cd1ada745c12af2c2c28afce1f6b6b28b38fdd")
        (Some "word-array")
    , callHackage "xmlgen" "0.6.2.2"
    ]
