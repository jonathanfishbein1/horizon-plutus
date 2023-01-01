let H =
      https://gitlab.homotopic.tech/horizon/horizon-spec/-/raw/0.4.2/dhall/package.dhall
        sha256:63d99b8dc5d0a7b25230dfde746003c5f4b30a607c89f6a104634062eec44503

let callRepository
    : H.Url → H.Revision → H.Subdir → H.HaskellPackage.Type
    = λ(repo : H.Url) →
      λ(revision : H.Revision) →
      λ(subdir : H.Subdir) →
        H.callGit repo revision (Some subdir)

let callCHaP
    : H.Name → H.Version → H.HaskellPackage.Type
    = λ(name : H.Name) →
      λ(version : H.Version) →
        H.callTarball
          "https://input-output-hk.github.io/cardano-haskell-packages/package/${name}-${version}.tar.gz"

let callCardanoBase
    : H.Subdir → H.HaskellPackage.Type
    = callRepository
        "https://github.com/input-output-hk/cardano-base"
        "46cd4c97cff9f1f0a0da976aa9e32bd2899c85ee"

let callCardanoLedger
    : H.Subdir → H.HaskellPackage.Type
    = callRepository
        "https://github.com/milloni/cardano-ledger"
        "3aa1fd8469424778454644f0d371988fb4490b4a"

let callCardanoNode
    : H.Subdir → H.HaskellPackage.Type
    = callRepository
        "https://github.com/input-output-hk/cardano-node"
        "4198592a7ea9c4873def316d6f80df1d20d37891"

let callIoSim
    : H.Subdir → H.HaskellPackage.Type
    = callRepository
        "https://github.com/input-output-hk/io-sim"
        "dcafd44cdc101a3e213de6a2d5ba7f674c2bc13c"

let callIohkMonitoringFramework
    : H.Subdir → H.HaskellPackage.Type
    = callRepository
        "https://github.com/input-output-hk/iohk-monitoring-framework"
        "1b5ae75d3186159f8175ad625db324d075450343"

let callOuroborosNetwork
    : H.Subdir → H.HaskellPackage.Type
    = callRepository
        "https://github.com/input-output-hk/ouroboros-network"
        "c175e75dd8bb3b0e4ea9db9360a64ed159e78013"

let callPlutusApps
    : H.Subdir → H.HaskellPackage.Type
    = callRepository
        "https://github.com/input-output-hk/plutus-apps"
        "b7ac5b2035f3675b3ceb289cf3a1551230714987"

let callPlutus
    : H.Subdir → H.HaskellPackage.Type
    = callRepository
        "https://github.com/milloni/plutus"
        "81cd1ada745c12af2c2c28afce1f6b6b28b38fdd"

let callTypedProtocols
    : H.Subdir → H.HaskellPackage.Type
    = callRepository
        "https://github.com/input-output-hk/typed-protocols"
        "ab4e0346c3215daad4c823f3ddc0eefae32091ff"

let plutusLibraries =
      H.modPackageList
        H.Modifiers::{ enableProfiling = False }
        ( toMap
            { cardano-ledger-alonzo-test =
                callCardanoLedger "eras/alonzo/test-suite"
            , cardano-ledger-alonzo = callCardanoLedger "eras/alonzo/impl"
            , cardano-ledger-api = callCardanoLedger "libs/cardano-ledger-api"
            , cardano-ledger-babbage = callCardanoLedger "eras/babbage/impl"
            , cardano-ledger-babbage-test =
                callCardanoLedger "eras/babbage/test-suite"
            , cardano-ledger-conway = callCardanoLedger "eras/conway/impl"
            , cardano-ledger-conway-test =
                callCardanoLedger "eras/conway/test-suite"
            , cardano-ledger-pretty =
                callCardanoLedger "libs/cardano-ledger-pretty"
            , cardano-ledger-shelley = callCardanoLedger "eras/shelley/impl"
            , cardano-ledger-shelley-test =
                callCardanoLedger "eras/shelley/test-suite"
            , cardano-ledger-shelley-ma =
                callCardanoLedger "eras/shelley-ma/impl"
            , cardano-ledger-shelley-ma-test =
                callCardanoLedger "eras/shelley-ma/test-suite"
            , cardano-ledger-test = callCardanoLedger "libs/cardano-ledger-test"
            , cardano-protocol-tpraos =
                callCardanoLedger "libs/cardano-protocol-tpraos"
            , plutus-core = callPlutus "plutus-core"
            , plutus-ledger-api = callPlutus "plutus-ledger-api"
            , plutus-preprocessor = callCardanoLedger "libs/plutus-preprocessor"
            , plutus-tx = callPlutus "plutus-tx"
            }
        )

let otherLibraries =
      toMap
        { Boolean = H.callHackage "Boolean" "0.2.4"
        , HTF = H.callHackage "HTF" "0.15.0.0"
        , HsOpenSSL = H.callHackage "HsOpenSSL" "0.11.7.2"
        , MemoTrie = H.callHackage "MemoTrie" "0.6.10"
        , NumInstances = H.callHackage "NumInstances" "1.4"
        , OddWord =
            H.callGit
              "https://github.com/locallycompact/OddWord"
              "ace47523b97ac2bc4dcdef5542927e5216e32afd"
              (None H.Subdir)
        , PyF = H.callHackage "PyF" "0.11.0.0"
        , Stream = H.callHackage "Stream" "0.4.7.2"
        , Unique = H.callHackage "Unique" "0.4.7.9"
        , Win32-network =
            H.callGit
              "https://github.com/input-output-hk/Win32-network"
              "1a6bd1f67d1463d7243ab4c34fc4f7d84ee0554a"
              (None H.Subdir)
        , aeson-qq = H.callHackage "aeson-qq" "0.8.4"
        , algebraic-graphs = H.callHackage "algebraic-graphs" "0.7"
        , async-timer = H.callHackage "async-timer" "0.2.0.0"
        , ap-normalize = H.callHackage "ap-normalize" "0.1.0.1"
        , base58-bytestring = H.callHackage "base58-bytestring" "0.1.0"
        , base64-bytestring-type =
            H.callHackage "base64-bytestring-type" "1.0.1"
        , base-deriving-via = callCardanoBase "base-deriving-via"
        , base-prelude = H.callHackage "base-prelude" "1.6.1"
        , bech32 = H.callHackage "bech32" "1.1.2"
        , bech32-th = H.callHackage "bech32-th" "1.1.1"
        , bin = H.callHackage "bin" "0.1.2"
        , byron-spec-chain =
            callCardanoLedger "eras/byron/chain/executable-spec"
        , byron-spec-ledger =
            callCardanoLedger "eras/byron/ledger/executable-spec"
        , canonical-json = H.callHackage "canonical-json" "0.6.0.1"
        , cardano-binary = callCardanoBase "binary"
        , cardano-binary-test = callCardanoBase "binary/test"
        , cardano-crypto =
            H.callGit
              "https://github.com/input-output-hk/cardano-crypto"
              "07397f0e50da97eaa0575d93bee7ac4b2b2576ec"
              (None H.Subdir)
        , cardano-crypto-class = callCardanoBase "cardano-crypto-class"
        , cardano-crypto-praos = callCardanoBase "cardano-crypto-praos"
        , cardano-crypto-tests = callCardanoBase "cardano-crypto-tests"
        , cardano-crypto-test = callCardanoLedger "eras/byron/crypto/test"
        , cardano-crypto-wrapper = callCardanoLedger "eras/byron/crypto"
        , cardano-data = callCardanoLedger "libs/cardano-data"
        , cardano-ledger-byron = callCardanoLedger "eras/byron/ledger/impl"
        , cardano-ledger-byron-test =
            callCardanoLedger "eras/byron/ledger/impl/test"
        , cardano-ledger-core = callCardanoLedger "libs/cardano-ledger-core"
        , cardano-slotting = callCardanoBase "slotting"
        , cardano-strict-containers =
            callCardanoBase "cardano-strict-containers"
        , cardano-prelude =
            H.callGit
              "https://github.com/input-output-hk/cardano-prelude"
              "b6053a23f53acd5c519cc559c3861dda3ebf8b35"
              (Some "cardano-prelude")
        , cardano-prelude-test =
            H.callGit
              "https://github.com/input-output-hk/cardano-prelude"
              "b6053a23f53acd5c519cc559c3861dda3ebf8b35"
              (Some "cardano-prelude-test")
        , casing = H.callHackage "casing" "0.1.4.1"
        , composition-prelude = H.callHackage "composition-prelude" "3.0.0.2"
        , concurrent-extra = H.callHackage "concurrent-extra" "0.7.0.12"
        , contra-tracer = H.callHackage "contra-tracer" "0.2.0.0"
        , data-ordlist = H.callHackage "data-ordlist" "0.4.7.0"
        , dependent-sum-template =
            H.callHackage "dependent-sum-template" "0.1.1.1"
        , deque = H.callHackage "deque" "0.4.4"
        , deriving-compat = H.callHackage "deriving-compat" "0.6.1"
        , dictionary-sharing = H.callHackage "dictionary-sharing" "0.1.0.0"
        , dns = H.callHackage "dns" "4.1.0"
        , doctest-discover = H.callHackage "doctest-discover" "0.2.0.0"
        , dom-lt = H.callHackage "dom-lt" "0.2.3"
        , errors = H.callHackage "errors" "2.3.0"
        , exact-combinatorics = H.callHackage "exact-combinatorics" "0.2.0.11"
        , extended-reals = H.callHackage "extended-reals" "0.2.4.0"
        , filelock = H.callHackage "filelock" "0.1.1.5"
        , finite-typelits = H.callHackage "finite-typelits" "0.1.6.0"
        , flat =
            H.callGit
              "https://github.com/Quid2/flat"
              "2121ee96201e39764e3a6fcbc53241afb0050647"
              (None H.Subdir)
        , fmt = H.callHackage "fmt" "0.6.3.0"
        , generic-arbitrary = H.callHackage "generic-arbitrary" "1.0.1"
        , generic-data = H.callHackage "generic-data" "1.0.0.0"
        , generic-lens = H.callHackage "generic-lens" "2.2.1.0"
        , generic-monoid = H.callHackage "generic-monoid" "0.1.0.1"
        , ghc-typelits-knownnat =
            H.callGit
              "https://github.com/clash-lang/ghc-typelits-knownnat"
              "1bc4ee33e005e96d1f7785c715588a289707cd48"
              (None H.Subdir)
        , ghc-typelits-natnormalise =
            H.callGit
              "https://github.com/clash-lang/ghc-typelits-natnormalise"
              "e0af5b3c69a7d8e1dd402eb727631801e7d9be3d"
              (None H.Subdir)
        , goblins =
            H.callGit
              "https://github.com/newhoggy/goblins"
              "a315f41ec7250097fa6073b5ef4773e45758578f"
              (None H.Subdir)
        , gray-code =
            H.callGit
              "https://github.com/milloni/gray-code-0.3.1"
              "f310a19e44416206633cfd084f10ffb7cfea9f1d"
              (None H.Subdir)
        , haskell-src = H.callHackage "haskell-src" "1.0.4"
        , heapwords = callCardanoBase "heapwords"
        , hedgehog-extras =
            H.callGit
              "https://github.com/input-output-hk/hedgehog-extras"
              "26b76bbcecfe48d0a87099f213f58e3778aa1f59"
              (None H.Subdir)
        , hedgehog-fn = H.callHackage "hedgehog-fn" "1.0"
        , hedgehog-quickcheck = H.callHackage "hedgehog-quickcheck" "0.1.1"
        , heredoc = H.callHackage "heredoc" "0.2.0.0"
        , hex-text = H.callHackage "hex-text" "0.1.0.7"
        , hspec-golden-aeson = H.callHackage "hspec-golden-aeson" "0.9.0.0"
        , hspec-golden = H.callHackage "hspec-golden" "0.2.0.0"
        , hsyslog = H.callHackage "hsyslog" "5.0.2"
        , html-entities = H.callHackage "html-entities" "1.1.4.6"
        , http-common = H.callHackage "http-common" "0.8.3.4"
        , http-streams = H.callHackage "http-streams" "0.8.9.6"
        , hw-aeson = H.callHackage "hw-aeson" "0.1.8.0"
        , hxt = H.callHackage "hxt" "9.3.1.22"
        , hxt-charproperties = H.callHackage "hxt-charproperties" "9.5.0.0"
        , hxt-regex-xmlschema = H.callHackage "hxt-regex-xmlschema" "9.2.0.7"
        , hxt-unicode = H.callHackage "hxt-unicode" "9.0.2.4"
        , indexed-list-literals =
            H.callHackage "indexed-list-literals" "0.2.1.3"
        , inline-c = H.callHackage "inline-c" "0.9.1.6"
        , inline-r =
            H.callGit
              "https://github.com/tweag/HaskellR"
              "fe9b5bd06cd4d3988e47b9933b11d83b6108e255"
              (Some "inline-r")
        , int-cast = H.callHackage "int-cast" "0.2.0.0"
        , io-classes = callIoSim "io-classes"
        , io-sim = callIoSim "io-sim"
        , io-streams = H.callHackage "io-streams" "1.5.2.2"
        , io-streams-haproxy = H.callHackage "io-streams-haproxy" "1.0.1.0"
        , katip = H.callHackage "katip" "0.8.7.2"
        , libsystemd-journal = H.callHackage "libsystemd-journal" "1.4.5"
        , linear-generics = H.callHackage "linear-generics" "0.2"
        , linear-base = H.callHackage "linear-base" "0.3.0"
        , list-transformer = H.callHackage "list-transformer" "1.0.9"
        , matrix = H.callHackage "matrix" "0.3.6.1"
        , markov-chain-usage-model =
            H.callHackage "markov-chain-usage-model" "0.0.0"
        , measures = callCardanoBase "measures"
        , mersenne-random-pure64 =
            H.callHackage "mersenne-random-pure64" "0.2.2.0"
        , monoidal-containers = H.callHackage "monoidal-containers" "0.6.3.0"
        , monoidal-synchronisation =
            callOuroborosNetwork "monoidal-synchronisation"
        , moo =
            H.callGit
              "https://github.com/astanin/moo"
              "dbda5e76ac3b4c72c805ec0cdb9bcdff7bb6247d"
              (None H.Subdir)
        , mtl-prelude = H.callHackage "mtl-prelude" "2.0.3.1"
        , multiset = H.callHackage "multiset" "0.3.4.3"
        , lazysmallcheck = H.callHackage "lazysmallcheck" "0.6"
        , lazy-search = H.callHackage "lazy-search" "0.1.3.0"
        , list-t = H.callHackage "list-t" "1.0.5.3"
        , loop = H.callHackage "loop" "0.3.0"
        , natural-arithmetic = H.callHackage "natural-arithmetic" "0.1.3.0"
        , newtype = H.callHackage "newtype" "0.2.2.0"
        , nonempty-vector = H.callHackage "nonempty-vector" "0.2.1.0"
        , non-integral = callCardanoLedger "libs/non-integral"
        , nothunks =
            H.callGit
              "https://github.com/locallycompact/nothunks"
              "0d7e3565407aa4eb21d861d075dff6f20d090f97"
              (None H.Subdir)
        , one-liner = H.callHackage "one-liner" "2.1"
        , openapi3 = H.callHackage "openapi3" "3.2.2"
        , openssl-streams = H.callHackage "openssl-streams" "1.2.3.0"
        , optparse-applicative =
            H.callGit
              "https://github.com/input-output-hk/optparse-applicative/"
              "7497a29cb998721a9068d5725d49461f2bba0e7a"
              (None H.Subdir)
        , optparse-generic = H.callHackage "optparse-generic" "1.4.8"
        , partial-order = H.callHackage "partial-order" "0.2.0.0"
        , persistent-postgresql =
            H.callHackage "persistent-postgresql" "2.13.5.0"
        , persistent-qq = H.callHackage "persistent-qq" "2.12.0.5"
        , persistent-sqlite = H.callHackage "persistent-sqlite" "2.13.1.0"
        , persistent-test = H.callHackage "persistent-test" "2.13.1.3"
        , pipes-safe = H.callHackage "pipes-safe" "2.3.4"
        , pcre-heavy = H.callHackage "pcre-heavy" "1.0.0.3"
        , prettyprinter-configurable =
            H.callGit
              "https://github.com/milloni/plutus"
              "81cd1ada745c12af2c2c28afce1f6b6b28b38fdd"
              (Some "prettyprinter-configurable")
        , primitive-offset = H.callHackage "primitive-offset" "0.2.0.0"
        , protolude = H.callHackage "protolude" "0.3.2"
        , pqueue = H.callHackage "pqueue" "1.4.3.0"
        , quickcheck-arbitrary-adt =
            H.callHackage "quickcheck-arbitrary-adt" "0.3.1.0"
        , quiet = H.callHackage "quiet" "0.2"
        , ral = H.callHackage "ral" "0.1"
        , readable = H.callHackage "readable" "0.3.1"
        , recursion-schemes = H.callHackage "recursion-schemes" "5.2.2.2"
        , ref-tf = H.callHackage "ref-tf" "0.5.0.1"
        , row-types = H.callHackage "row-types" "1.0.1.2"
        , say = H.callHackage "say" "0.1.0.1"
        , servant-openapi3 = H.callHackage "servant-openapi3" "2.0.1.5"
        , set-algebra = callCardanoLedger "libs/set-algebra"
        , show-combinators = H.callHackage "show-combinators" "0.2.0.0"
        , singletons-th = H.callHackage "singletons-th" "3.1.1"
        , size-based = H.callHackage "size-based" "0.1.3.1"
        , small-steps = callCardanoLedger "libs/small-steps"
        , small-steps-test = callCardanoLedger "libs/small-steps-test"
        , snap-core = H.callHackage "snap-core" "1.0.5.0"
        , snap-server = H.callHackage "snap-server" "1.1.2.0"
        , statistics-linreg = H.callHackage "statistics-linreg" "0.3"
        , storable-tuple = H.callHackage "storable-tuple" "0.0.3.3"
        , streaming-binary = H.callHackage "streaming-binary" "0.3.0.1"
        , streaming-bytestring = H.callHackage "streaming-bytestring" "0.2.4"
        , strict-containers =
            H.callGit
              "https://github.com/milloni/strict-containers"
              "9e833be00bc2c5cdb0b4e743b7a2cde00dd4f616"
              (Some "strict-containers")
        , strict-list = H.callHackage "strict-list" "0.1.7"
        , strict-stm = callIoSim "strict-stm"
        , storable-record = H.callHackage "storable-record" "0.0.6"
        , system-fileio = H.callHackage "system-fileio" "0.3.16.4"
        , testing-type-modifiers =
            H.callHackage "testing-type-modifiers" "0.1.0.1"
        , th-desugar = H.callHackage "th-desugar" "1.14"
        , threads = H.callHackage "threads" "0.5.1.7"
        , time-locale-compat = H.callHackage "time-locale-compat" "0.1.1.5"
        , time-units = H.callHackage "time-units" "1.0.0"
        , transformers-except = H.callHackage "transformers-except" "0.1.2"
        , typed-protocols-cborg = callTypedProtocols "typed-protocols-cborg"
        , typed-protocols-examples =
            callTypedProtocols "typed-protocols-examples"
        , typed-protocols = callTypedProtocols "typed-protocols"
        , typerep-map =
            H.callGit
              "https://github.com/parsonsmatt/typerep-map"
              "75b7cd5d45986be07420a6821d352ad2adc0b697"
              (None H.Subdir)
        , validation-selective = H.callHackage "validation-selective" "0.1.0.2"
        , vector-map = callCardanoLedger "libs/vector-map"
        , wide-word = H.callHackage "wide-word" "0.1.3.0"
        , word-array = callPlutus "word-array"
        , word-compat = H.callHackage "word-compat" "0.0.6"
        , xmlgen = H.callHackage "xmlgen" "0.6.2.2"
        , universe-reverse-instances =
            H.callHackage "universe-reverse-instances" "1.1.1"
        , unix-bytestring = H.callHackage "unix-bytestring" "0.3.7.8"
        , vector-sized = H.callHackage "vector-sized" "1.5.0"
        , zlib-bindings = H.callHackage "zlib-bindings" "0.1.1.5"
        }

in  plutusLibraries # otherLibraries
