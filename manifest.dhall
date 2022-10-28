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

in  [ callHackage "PyF" "0.11.0.0"
    , callHackage "Unique" "0.4.7.9"
    , callHackage "algebraic-graphs" "0.7"
    , callHackage "base64-bytestring-type" "1.0.1"
    , callHackage "bech32" "1.1.2"
    , callCabal2nix
        "byron-spec-chain"
        "https://github.com/milloni/cardano-ledger"
        (Some "2857b079bdab6e1545c60c614157ba8e7d19233e")
        (Some "eras/byron/chain/executable-spec")
    , callCabal2nix
        "byron-spec-ledger"
        "https://github.com/milloni/cardano-ledger"
        (Some "2857b079bdab6e1545c60c614157ba8e7d19233e")
        (Some "eras/byron/ledger/executable-spec")
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
    , callCabal2nix
        "cardano-crypto-test"
        "https://github.com/milloni/cardano-ledger"
        (Some "2857b079bdab6e1545c60c614157ba8e7d19233e")
        (Some "eras/byron/crypto/test")
    , callCabal2nix
        "cardano-crypto-wrapper"
        "https://github.com/milloni/cardano-ledger"
        (Some "2857b079bdab6e1545c60c614157ba8e7d19233e")
        (Some "eras/byron/crypto")
    , callCabal2nix
        "cardano-data"
        "https://github.com/milloni/cardano-ledger"
        (Some "bc859395040abf075f4ca44b4ce8c221d2c4bb66")
        (Some "libs/cardano-data")
    , callCabal2nix
        "cardano-ledger-byron"
        "https://github.com/milloni/cardano-ledger"
        (Some "2857b079bdab6e1545c60c614157ba8e7d19233e")
        (Some "eras/byron/ledger/impl")
    , callCabal2nix
        "cardano-ledger-core"
        "https://github.com/milloni/cardano-ledger"
        (Some "bc859395040abf075f4ca44b4ce8c221d2c4bb66")
        (Some "libs/cardano-ledger-core")
    , callCabal2nix
        "cardano-ledger-shelley"
        "https://github.com/milloni/cardano-ledger"
        (Some "bc859395040abf075f4ca44b4ce8c221d2c4bb66")
        (Some "eras/shelley/impl")
    , callCabal2nix
        "cardano-ledger-shelley-ma"
        "https://github.com/milloni/cardano-ledger"
        (Some "e95d4aa2d7e39c856e8b0aaae3610ffb2391ac19")
        (Some "eras/shelley-ma/impl")
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
    , callCabal2nix
        "heapwords"
        "https://github.com/input-output-hk/cardano-base"
        (Some "46cd4c97cff9f1f0a0da976aa9e32bd2899c85ee")
        (Some "heapwords")
    , callCabal2nix
        "inline-r"
        "https://github.com/tweag/HaskellR"
        (Some "fe9b5bd06cd4d3988e47b9933b11d83b6108e255")
        (Some "inline-r")
    , callCabal2nix
        "moo"
        "https://github.com/milloni/moo"
        (Some "20e4c6ee880e7d62b18b995750063dd7349a3f8e")
        (None Text)
    , callCabal2nix
        "non-integral"
        "https://github.com/milloni/cardano-ledger"
        (Some "bc859395040abf075f4ca44b4ce8c221d2c4bb66")
        (Some "libs/non-integral")
    , callCabal2nix
        "nothunks"
        "https://github.com/locallycompact/nothunks"
        (Some "0d7e3565407aa4eb21d861d075dff6f20d090f97")
        (None Text)
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
    , callHackage "ral" "0.1"
    , callHackage "recursion-schemes" "5.2.2.2"
    , callHackage "ref-tf" "0.5.0.1"
    , callCabal2nix
        "set-algebra"
        "https://github.com/milloni/cardano-ledger"
        (Some "bc859395040abf075f4ca44b4ce8c221d2c4bb66")
        (Some "libs/set-algebra")
    , callHackage "singletons-th" "3.1.1"
    , callCabal2nix
        "small-steps"
        "https://github.com/milloni/cardano-ledger"
        (Some "2857b079bdab6e1545c60c614157ba8e7d19233e")
        (Some "libs/small-steps")
    , callCabal2nix
        "small-steps-test"
        "https://github.com/milloni/cardano-ledger"
        (Some "2857b079bdab6e1545c60c614157ba8e7d19233e")
        (Some "libs/small-steps-test")
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
    , callCabal2nix
        "vector-map"
        "https://github.com/milloni/cardano-ledger"
        (Some "bc859395040abf075f4ca44b4ce8c221d2c4bb66")
        (Some "libs/vector-map")
    , callCabal2nix
        "word-array"
        "https://github.com/milloni/plutus"
        (Some "81cd1ada745c12af2c2c28afce1f6b6b28b38fdd")
        (Some "word-array")
    ]
