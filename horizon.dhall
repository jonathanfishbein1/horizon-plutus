let H = ./horizon-spec.dhall

let callRepository
    : H.Url → H.Revision → H.Name → H.Subdir → H.Attr H.HaskellPackage.Type
    = λ(repo : H.Url) →
      λ(revision : H.Revision) →
      λ(name : H.Name) →
      λ(subdir : H.Subdir) →
        H.callGit name repo revision (Some subdir)

let callCHaP
    : H.Name → H.Version → H.Attr H.HaskellPackage.Type
    = λ(name : H.Name) →
      λ(version : H.Version) →
        H.callTarball
          name
          "https://input-output-hk.github.io/cardano-haskell-packages/package/${name}-${version}.tar.gz"

let callCardanoBase
    : H.Name → H.Subdir → H.Attr H.HaskellPackage.Type
    = callRepository
        "https://github.com/input-output-hk/cardano-base"
        "46cd4c97cff9f1f0a0da976aa9e32bd2899c85ee"

let callCardanoLedger
    : H.Name → H.Subdir → H.Attr H.HaskellPackage.Type
    = callRepository
        "https://github.com/milloni/cardano-ledger"
        "3aa1fd8469424778454644f0d371988fb4490b4a"

let callCardanoNode
    : H.Name → H.Subdir → H.Attr H.HaskellPackage.Type
    = callRepository
        "https://github.com/input-output-hk/cardano-node"
        "4198592a7ea9c4873def316d6f80df1d20d37891"

let callIoSim
    : H.Name → H.Subdir → H.Attr H.HaskellPackage.Type
    = callRepository
        "https://github.com/input-output-hk/io-sim"
        "dcafd44cdc101a3e213de6a2d5ba7f674c2bc13c"

let callIohkMonitoringFramework
    : H.Name → H.Subdir → H.Attr H.HaskellPackage.Type
    = callRepository
        "https://github.com/input-output-hk/iohk-monitoring-framework"
        "1b5ae75d3186159f8175ad625db324d075450343"

let callOuroborosNetwork
    : H.Name → H.Subdir → H.Attr H.HaskellPackage.Type
    = callRepository
        "https://github.com/input-output-hk/ouroboros-network"
        "c175e75dd8bb3b0e4ea9db9360a64ed159e78013"

let callPlutusApps
    : H.Name → H.Subdir → H.Attr H.HaskellPackage.Type
    = callRepository
        "https://github.com/input-output-hk/plutus-apps"
        "b7ac5b2035f3675b3ceb289cf3a1551230714987"

let callPlutus
    : H.Name → H.Subdir → H.Attr H.HaskellPackage.Type
    = callRepository
        "https://github.com/milloni/plutus"
        "81cd1ada745c12af2c2c28afce1f6b6b28b38fdd"

let callTypedProtocols
    : H.Name → H.Subdir → H.Attr H.HaskellPackage.Type
    = callRepository
        "https://github.com/input-output-hk/typed-protocols"
        "ab4e0346c3215daad4c823f3ddc0eefae32091ff"

let plutusLibraries =
      H.modPackageList
        H.Modifiers::{ enableProfiling = False }
        [ callCardanoLedger
            "cardano-ledger-alonzo-test"
            "eras/alonzo/test-suite"
        , callCardanoLedger "cardano-ledger-alonzo" "eras/alonzo/impl"
        , callCardanoLedger "cardano-ledger-api" "libs/cardano-ledger-api"
        , callCardanoLedger "cardano-ledger-babbage" "eras/babbage/impl"
        , callCardanoLedger
            "cardano-ledger-babbage-test"
            "eras/babbage/test-suite"
        , callCardanoLedger "cardano-ledger-conway" "eras/conway/impl"
        , callCardanoLedger
            "cardano-ledger-conway-test"
            "eras/conway/test-suite"
        , callCardanoLedger "cardano-ledger-pretty" "libs/cardano-ledger-pretty"
        , callCardanoLedger "cardano-ledger-shelley" "eras/shelley/impl"
        , callCardanoLedger
            "cardano-ledger-shelley-test"
            "eras/shelley/test-suite"
        , callCardanoLedger "cardano-ledger-shelley-ma" "eras/shelley-ma/impl"
        , callCardanoLedger
            "cardano-ledger-shelley-ma-test"
            "eras/shelley-ma/test-suite"
        , callCardanoLedger "cardano-ledger-test" "libs/cardano-ledger-test"
        , callCardanoLedger
            "cardano-protocol-tpraos"
            "libs/cardano-protocol-tpraos"
        , callPlutus "plutus-core" "plutus-core"
        , callPlutus "plutus-ledger-api" "plutus-ledger-api"
        , callCardanoLedger "plutus-preprocessor" "libs/plutus-preprocessor"
        , callPlutus "plutus-tx" "plutus-tx"
        ]

let otherLibraries =
      [ H.callHackage "Boolean" "0.2.4"
      , H.callHackage "HTF" "0.15.0.0"
      , H.callHackage "HsOpenSSL" "0.11.7.2"
      , H.callHackage "MemoTrie" "0.6.10"
      , H.callHackage "NumInstances" "1.4"
      , H.callGit
          "OddWord"
          "https://github.com/locallycompact/OddWord"
          "ace47523b97ac2bc4dcdef5542927e5216e32afd"
          (None H.Subdir)
      , H.callHackage "PyF" "0.11.0.0"
      , H.callHackage "Stream" "0.4.7.2"
      , H.callHackage "Unique" "0.4.7.9"
      , H.callGit
          "Win32-network"
          "https://github.com/input-output-hk/Win32-network"
          "1a6bd1f67d1463d7243ab4c34fc4f7d84ee0554a"
          (None H.Subdir)
      , H.callHackage "aeson-qq" "0.8.4"
      , H.callHackage "algebraic-graphs" "0.7"
      , H.callHackage "async-timer" "0.2.0.0"
      , H.callHackage "ap-normalize" "0.1.0.1"
      , H.callHackage "base58-bytestring" "0.1.0"
      , H.callHackage "base64-bytestring-type" "1.0.1"
      , callCardanoBase "base-deriving-via" "base-deriving-via"
      , H.callHackage "base-prelude" "1.6.1"
      , H.callHackage "bech32" "1.1.2"
      , H.callHackage "bech32-th" "1.1.1"
      , H.callHackage "bin" "0.1.2"
      , callCardanoLedger "byron-spec-chain" "eras/byron/chain/executable-spec"
      , callCardanoLedger
          "byron-spec-ledger"
          "eras/byron/ledger/executable-spec"
      , H.callHackage "canonical-json" "0.6.0.1"
      , callCardanoBase "cardano-binary" "binary"
      , callCardanoBase "cardano-binary-test" "binary/test"
      , H.callGit
          "cardano-crypto"
          "https://github.com/input-output-hk/cardano-crypto"
          "07397f0e50da97eaa0575d93bee7ac4b2b2576ec"
          (None H.Subdir)
      , callCardanoBase "cardano-crypto-class" "cardano-crypto-class"
      , callCardanoBase "cardano-crypto-praos" "cardano-crypto-praos"
      , callCardanoBase "cardano-crypto-tests" "cardano-crypto-tests"
      , callCardanoLedger "cardano-crypto-test" "eras/byron/crypto/test"
      , callCardanoLedger "cardano-crypto-wrapper" "eras/byron/crypto"
      , callCardanoLedger "cardano-data" "libs/cardano-data"
      , callCardanoLedger "cardano-ledger-byron" "eras/byron/ledger/impl"
      , callCardanoLedger
          "cardano-ledger-byron-test"
          "eras/byron/ledger/impl/test"
      , callCardanoLedger "cardano-ledger-core" "libs/cardano-ledger-core"
      , callCardanoBase "cardano-slotting" "slotting"
      , callCardanoBase "cardano-strict-containers" "cardano-strict-containers"
      , H.callGit
          "cardano-prelude"
          "https://github.com/input-output-hk/cardano-prelude"
          "b6053a23f53acd5c519cc559c3861dda3ebf8b35"
          (Some "cardano-prelude")
      , H.callGit
          "cardano-prelude-test"
          "https://github.com/input-output-hk/cardano-prelude"
          "b6053a23f53acd5c519cc559c3861dda3ebf8b35"
          (Some "cardano-prelude-test")
      , H.callHackage "casing" "0.1.4.1"
      , H.callHackage "composition-prelude" "3.0.0.2"
      , H.callHackage "concurrent-extra" "0.7.0.12"
      , H.callHackage "contra-tracer" "0.2.0.0"
      , H.callHackage "data-ordlist" "0.4.7.0"
      , H.callHackage "dependent-sum-template" "0.1.1.1"
      , H.callHackage "deque" "0.4.4"
      , H.callHackage "deriving-compat" "0.6.1"
      , H.callHackage "dictionary-sharing" "0.1.0.0"
      , H.callHackage "dns" "4.1.0"
      , H.callHackage "doctest-discover" "0.2.0.0"
      , H.callHackage "dom-lt" "0.2.3"
      , H.callHackage "errors" "2.3.0"
      , H.callHackage "exact-combinatorics" "0.2.0.11"
      , H.callHackage "extended-reals" "0.2.4.0"
      , H.callHackage "filelock" "0.1.1.5"
      , H.callHackage "finite-typelits" "0.1.6.0"
      , H.callGit
          "flat"
          "https://github.com/Quid2/flat"
          "2121ee96201e39764e3a6fcbc53241afb0050647"
          (None H.Subdir)
      , H.callHackage "generic-arbitrary" "1.0.1"
      , H.callHackage "generic-data" "1.0.0.0"
      , H.callHackage "generic-lens" "2.2.1.0"
      , H.callHackage "generic-monoid" "0.1.0.1"
      , H.callGit
          "ghc-typelits-knownnat"
          "https://github.com/clash-lang/ghc-typelits-knownnat"
          "1bc4ee33e005e96d1f7785c715588a289707cd48"
          (None H.Subdir)
      , H.callGit
          "ghc-typelits-natnormalise"
          "https://github.com/clash-lang/ghc-typelits-natnormalise"
          "e0af5b3c69a7d8e1dd402eb727631801e7d9be3d"
          (None H.Subdir)
      , H.callGit
          "goblins"
          "https://github.com/newhoggy/goblins"
          "a315f41ec7250097fa6073b5ef4773e45758578f"
          (None H.Subdir)
      , H.callGit
          "gray-code"
          "https://github.com/milloni/gray-code-0.3.1"
          "f310a19e44416206633cfd084f10ffb7cfea9f1d"
          (None H.Subdir)
      , H.callHackage "haskell-src" "1.0.4"
      , callCardanoBase "heapwords" "heapwords"
      , H.callGit
          "hedgehog-extras"
          "https://github.com/input-output-hk/hedgehog-extras"
          "26b76bbcecfe48d0a87099f213f58e3778aa1f59"
          (None H.Subdir)
      , H.callHackage "hedgehog-fn" "1.0"
      , H.callHackage "hedgehog-quickcheck" "0.1.1"
      , H.callHackage "heredoc" "0.2.0.0"
      , H.callHackage "hex-text" "0.1.0.7"
      , H.callHackage "hspec-golden" "0.2.0.0"
      , H.callHackage "hsyslog" "5.0.2"
      , H.callHackage "html-entities" "1.1.4.6"
      , H.callHackage "http-common" "0.8.3.4"
      , H.callHackage "http-streams" "0.8.9.6"
      , H.callHackage "hw-aeson" "0.1.8.0"
      , H.callHackage "hxt" "9.3.1.22"
      , H.callHackage "hxt-charproperties" "9.5.0.0"
      , H.callHackage "hxt-regex-xmlschema" "9.2.0.7"
      , H.callHackage "hxt-unicode" "9.0.2.4"
      , callIoSim "io-classes" "io-classes"
      , callIoSim "io-sim" "io-sim"
      , H.callHackage "io-streams" "1.5.2.2"
      , H.callHackage "io-streams-haproxy" "1.0.1.0"
      , H.callHackage "indexed-list-literals" "0.2.1.3"
      , H.callHackage "inline-c" "0.9.1.6"
      , H.callGit
          "inline-r"
          "https://github.com/tweag/HaskellR"
          "fe9b5bd06cd4d3988e47b9933b11d83b6108e255"
          (Some "inline-r")
      , H.callHackage "int-cast" "0.2.0.0"
      , H.callHackage "katip" "0.8.7.2"
      , H.callHackage "libsystemd-journal" "1.4.5"
      , H.callHackage "linear-generics" "0.2"
      , H.callHackage "linear-base" "0.3.0"
      , H.callHackage "list-transformer" "1.0.9"
      , H.callHackage "matrix" "0.3.6.1"
      , H.callHackage "markov-chain-usage-model" "0.0.0"
      , callCardanoBase "measures" "measures"
      , H.callHackage "mersenne-random-pure64" "0.2.2.0"
      , H.callHackage "monoidal-containers" "0.6.3.0"
      , callOuroborosNetwork
          "monoidal-synchronisation"
          "monoidal-synchronisation"
      , H.callGit
          "moo"
          "https://github.com/astanin/moo"
          "dbda5e76ac3b4c72c805ec0cdb9bcdff7bb6247d"
          (None H.Subdir)
      , H.callHackage "mtl-prelude" "2.0.3.1"
      , H.callHackage "multiset" "0.3.4.3"
      , H.callHackage "lazysmallcheck" "0.6"
      , H.callHackage "lazy-search" "0.1.3.0"
      , H.callHackage "list-t" "1.0.5.3"
      , H.callHackage "loop" "0.3.0"
      , H.callHackage "newtype" "0.2.2.0"
      , H.callHackage "nonempty-vector" "0.2.1.0"
      , callCardanoLedger "non-integral" "libs/non-integral"
      , H.callGit
          "nothunks"
          "https://github.com/locallycompact/nothunks"
          "0d7e3565407aa4eb21d861d075dff6f20d090f97"
          (None H.Subdir)
      , H.callHackage "one-liner" "2.1"
      , H.callHackage "openapi3" "3.2.2"
      , H.callHackage "openssl-streams" "1.2.3.0"
      , H.callGit
          "optparse-applicative-fork"
          "https://github.com/input-output-hk/optparse-applicative/"
          "7497a29cb998721a9068d5725d49461f2bba0e7a"
          (None H.Subdir)
      , H.callHackage "optparse-generic" "1.4.8"
      , H.callHackage "partial-order" "0.2.0.0"
      , H.callHackage "persistent-postgresql" "2.13.5.0"
      , H.callHackage "persistent-qq" "2.12.0.5"
      , H.callHackage "persistent-sqlite" "2.13.1.0"
      , H.callHackage "persistent-test" "2.13.1.3"
      , H.callHackage "pipes-safe" "2.3.4"
      , H.callHackage "pcre-heavy" "1.0.0.3"
      , H.callGit
          "prettyprinter-configurable"
          "https://github.com/milloni/plutus"
          "81cd1ada745c12af2c2c28afce1f6b6b28b38fdd"
          (Some "prettyprinter-configurable")
      , H.callHackage "protolude" "0.3.2"
      , H.callHackage "pqueue" "1.4.3.0"
      , H.callHackage "quiet" "0.2"
      , H.callHackage "ral" "0.1"
      , H.callHackage "readable" "0.3.1"
      , H.callHackage "recursion-schemes" "5.2.2.2"
      , H.callHackage "ref-tf" "0.5.0.1"
      , H.callHackage "row-types" "1.0.1.2"
      , H.callHackage "say" "0.1.0.1"
      , H.callHackage "servant-openapi3" "2.0.1.5"
      , callCardanoLedger "set-algebra" "libs/set-algebra"
      , H.callHackage "show-combinators" "0.2.0.0"
      , H.callHackage "singletons-th" "3.1.1"
      , H.callHackage "size-based" "0.1.3.1"
      , callCardanoLedger "small-steps" "libs/small-steps"
      , callCardanoLedger "small-steps-test" "libs/small-steps-test"
      , H.callHackage "snap-core" "1.0.5.0"
      , H.callHackage "snap-server" "1.1.2.0"
      , H.callHackage "statistics-linreg" "0.3"
      , H.callHackage "storable-tuple" "0.0.3.3"
      , H.callHackage "streaming-binary" "0.3.0.1"
      , H.callHackage "streaming-bytestring" "0.2.4"
      , H.callGit
          "strict-containers"
          "https://github.com/milloni/strict-containers"
          "9e833be00bc2c5cdb0b4e743b7a2cde00dd4f616"
          (Some "strict-containers")
      , H.callHackage "strict-list" "0.1.7"
      , callIoSim "strict-stm" "strict-stm"
      , H.callHackage "storable-record" "0.0.6"
      , H.callHackage "system-fileio" "0.3.16.4"
      , H.callHackage "testing-type-modifiers" "0.1.0.1"
      , H.callHackage "th-desugar" "1.14"
      , H.callHackage "threads" "0.5.1.7"
      , H.callHackage "time-locale-compat" "0.1.1.5"
      , H.callHackage "time-units" "1.0.0"
      , H.callHackage "transformers-except" "0.1.2"
      , callTypedProtocols "typed-protocols-cborg" "typed-protocols-cborg"
      , callTypedProtocols "typed-protocols-examples" "typed-protocols-examples"
      , callTypedProtocols "typed-protocols" "typed-protocols"
      , H.callGit
          "typerep-map"
          "https://github.com/parsonsmatt/typerep-map"
          "75b7cd5d45986be07420a6821d352ad2adc0b697"
          (None H.Subdir)
      , H.callHackage "validation-selective" "0.1.0.2"
      , callCardanoLedger "vector-map" "libs/vector-map"
      , callPlutus "word-array" "word-array"
      , H.callHackage "word-compat" "0.0.6"
      , H.callHackage "xmlgen" "0.6.2.2"
      , H.callHackage "universe-reverse-instances" "1.1.1"
      , H.callHackage "unix-bytestring" "0.3.7.8"
      , H.callHackage "vector-sized" "1.5.0"
      , H.callHackage "zlib-bindings" "0.1.1.5"
      ]

in  plutusLibraries # otherLibraries
