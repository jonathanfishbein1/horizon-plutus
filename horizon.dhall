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
        { OddWord =
            H.callGit
              "https://github.com/locallycompact/OddWord"
              "ace47523b97ac2bc4dcdef5542927e5216e32afd"
              (None H.Subdir)
        , Win32-network =
            H.callGit
              "https://github.com/input-output-hk/Win32-network"
              "1a6bd1f67d1463d7243ab4c34fc4f7d84ee0554a"
              (None H.Subdir)
        , base-deriving-via = callCardanoBase "base-deriving-via"
        , byron-spec-chain =
            callCardanoLedger "eras/byron/chain/executable-spec"
        , byron-spec-ledger =
            callCardanoLedger "eras/byron/ledger/executable-spec"
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
        , cardano-prelude = callCHaP "cardano-prelude" "0.1.0.1"
        , cardano-prelude-test = callCHaP "cardano-prelude-test" "0.1.0.1"
        , contra-tracer = callCHaP "contra-tracer" "0.1.0.1"
        , flat =
            H.callGit
              "https://github.com/Quid2/flat"
              "2121ee96201e39764e3a6fcbc53241afb0050647"
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
        , heapwords = callCardanoBase "heapwords"
        , hedgehog-extras =
            H.callGit
              "https://github.com/input-output-hk/hedgehog-extras"
              "26b76bbcecfe48d0a87099f213f58e3778aa1f59"
              (None H.Subdir)
        , inline-r =
            H.callGit
              "https://github.com/tweag/HaskellR"
              "fe9b5bd06cd4d3988e47b9933b11d83b6108e255"
              (Some "inline-r")
        , io-classes = callIoSim "io-classes"
        , io-sim = callIoSim "io-sim"
        , iohk-monitoring = callCHaP "iohk-monitoring" "0.1.11.1"
        , measures = callCardanoBase "measures"
        , monoidal-synchronisation =
            callOuroborosNetwork "monoidal-synchronisation"
        , moo =
            H.callGit
              "https://github.com/astanin/moo"
              "dbda5e76ac3b4c72c805ec0cdb9bcdff7bb6247d"
              (None H.Subdir)
        , non-integral = callCardanoLedger "libs/non-integral"
        , nothunks =
            H.callGit
              "https://github.com/locallycompact/nothunks"
              "0d7e3565407aa4eb21d861d075dff6f20d090f97"
              (None H.Subdir)
        , ntp-client = callCHaP "ntp-client" "0.0.1"
        , optparse-applicative-fork =
            H.callGit
              "https://github.com/input-output-hk/optparse-applicative/"
              "7497a29cb998721a9068d5725d49461f2bba0e7a"
              (None H.Subdir)
        , partial-order = H.callHackage "partial-order" "0.2.0.0"
        , prettyprinter-configurable =
            H.callGit
              "https://github.com/milloni/plutus"
              "81cd1ada745c12af2c2c28afce1f6b6b28b38fdd"
              (Some "prettyprinter-configurable")
        , set-algebra = callCardanoLedger "libs/set-algebra"
        , small-steps = callCardanoLedger "libs/small-steps"
        , small-steps-test = callCardanoLedger "libs/small-steps-test"
        , strict-containers =
            H.callGit
              "https://github.com/milloni/strict-containers"
              "9e833be00bc2c5cdb0b4e743b7a2cde00dd4f616"
              (Some "strict-containers")
        , strict-stm = callIoSim "strict-stm"
        , tracer-transformers = callCHaP "tracer-transformers" "0.1.0.2"
        , typed-protocols-cborg = callTypedProtocols "typed-protocols-cborg"
        , typed-protocols-examples =
            callTypedProtocols "typed-protocols-examples"
        , typed-protocols = callTypedProtocols "typed-protocols"
        , typerep-map =
            H.callGit
              "https://github.com/parsonsmatt/typerep-map"
              "75b7cd5d45986be07420a6821d352ad2adc0b697"
              (None H.Subdir)
        , vector-map = callCardanoLedger "libs/vector-map"
        , word-array = callPlutus "word-array"
        }

in  H.HorizonExport.MakeOverlay
      { packagesDir = "pkgs"
      , overlayFile = "overlay.nix"
      , overlay = plutusLibraries # otherLibraries
      }
