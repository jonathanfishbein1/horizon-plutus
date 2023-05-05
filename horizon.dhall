let H =
      https://gitlab.horizon-haskell.net/dhall/horizon-spec/-/raw/0.10.0/horizon-spec/package.dhall

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
          (None H.Subdir)

let callCardanoBase
    : H.Subdir → H.HaskellPackage.Type
    = callRepository
        "https://github.com/locallycompact/cardano-base"
        "f954aec4fbe11ba96729ddcc5e22c13ab6320b5d"

let callCardanoLedger
    : H.Subdir → H.HaskellPackage.Type
    = callRepository
        "https://github.com/input-output-hk/cardano-ledger"
        "81548171f2cd336714bb0425640a6553c46aa09e"

let callCardanoNode
    : H.Subdir → H.HaskellPackage.Type
    = callRepository
        "https://github.com/input-output-hk/cardano-node"
        "b7d70f3a54921669519e1de1ec6ed381d01b28fb"

let callIoSim
    : H.Subdir → H.HaskellPackage.Type
    = callRepository
        "https://github.com/input-output-hk/io-sim"
        "df0ddc92200cc880478a656604a736cfb9250568"

let callIohkMonitoringFramework
    : H.Subdir → H.HaskellPackage.Type
    = callRepository
        "https://github.com/input-output-hk/iohk-monitoring-framework"
        "1b5ae75d3186159f8175ad625db324d075450343"

let callOuroborosConsensus
    : H.Subdir → H.HaskellPackage.Type
    = callRepository
        "https://github.com/input-output-hk/ouroboros-consensus"
        "9ebe62d3f1a5b932c984a7b435f93692916fec60"

let callOuroborosNetwork
    : H.Subdir → H.HaskellPackage.Type
    = callRepository
        "https://github.com/input-output-hk/ouroboros-network"
        "3c91184485de25d17d8a4c1979b7ad106e2a5512"


let callPlutusApps
    : H.Subdir → H.HaskellPackage.Type
    = callRepository
        "https://github.com/input-output-hk/plutus-apps"
        "b7ac5b2035f3675b3ceb289cf3a1551230714987"

let callPlutus
    : H.Subdir → H.HaskellPackage.Type
    = callRepository
        "https://github.com/input-output-hk/plutus"
        "cfccccc8596859bfaa992100b11199301eb6d2bd"

let callTypedProtocols
    : H.Subdir → H.HaskellPackage.Type
    = callRepository
        "https://github.com/input-output-hk/typed-protocols"
        "a8af24cab3a5be0a27f398e6e068c29bed053d1e"

let callFsSim
    : H.Subdir → H.HaskellPackage.Type
    = callRepository
        "https://github.com/input-output-hk/fs-sim"
        "ee0ddcda91c8a66465e442096ba7c7289f3662f8"


let packages = 
      H.modPackageList
        H.Modifiers::{ enableProfiling = False }
      (toMap
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
        , FailT = H.callHackage "FailT" "0.1.2.0"
        , algebraic-graphs = H.callHackage "algebraic-graphs" "0.7"
        , base-deriving-via = callCardanoBase "base-deriving-via"
        , binary-search = H.callHackage "binary-search" "2.0.0"
        , byron-spec-chain =
            callCardanoLedger "eras/byron/chain/executable-spec"
        , byron-spec-ledger =
            callCardanoLedger "eras/byron/ledger/executable-spec"
        , cardano-api = callCardanoNode "cardano-api"
        , cardano-binary = callCardanoBase "cardano-binary"
        , cardano-binary-test = callCardanoBase "cardano-binary/test"
        , cardano-cli = callCardanoNode "cardano-cli"
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
        , cardano-git-rev = callCardanoNode "cardano-git-rev"
        , cardano-mempool = callCardanoBase "cardano-mempool"
        , cardano-ledger-allegra = callCardanoLedger "eras/allegra/impl"
        , cardano-ledger-mary = callCardanoLedger "eras/mary/impl"
        , cardano-ledger-byron = callCardanoLedger "eras/byron/ledger/impl"
        , cardano-ledger-byron-test =
            callCardanoLedger "eras/byron/ledger/impl/test"
        , cardano-ledger-core = callCardanoLedger "libs/cardano-ledger-core"
        , cardano-ledger-alonzo-test =
                callCardanoLedger "eras/alonzo/test-suite"
            , cardano-ledger-alonzo = callCardanoLedger "eras/alonzo/impl"
            , cardano-ledger-api = callCardanoLedger "libs/cardano-ledger-api"
            , cardano-ledger-babbage = callCardanoLedger "eras/babbage/impl"
            , cardano-ledger-babbage-test =
                callCardanoLedger "eras/babbage/test-suite"
            , cardano-ledger-binary = callCardanoLedger "libs/cardano-ledger-binary"
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


        , cardano-node = callCardanoNode "cardano-node"
        , cardano-ping = callOuroborosNetwork "cardano-ping"
        , cardano-slotting = callCardanoBase "cardano-slotting"
        , cardano-strict-containers =
            callCardanoBase "cardano-strict-containers"
        , cardano-prelude = callCHaP "cardano-prelude" "0.1.0.1"
        , cardano-prelude-test = callCHaP "cardano-prelude-test" "0.1.0.1"
        , contra-tracer = callCHaP "contra-tracer" "0.1.0.1"
        , ekg-forward = H.callGit "https://github.com/input-output-hk/ekg-forward" "5cb1dbac35ac07870302511403faf8efb96c56c3" (None H.Subdir)
        , fgl = H.callHackage "fgl" "5.8.1.1"
        , fgl-arbitrary = H.callHackage "fgl-arbitrary" "0.2.0.6"
        , flat =
            H.callGit
              "https://github.com/Quid2/flat"
              "2121ee96201e39764e3a6fcbc53241afb0050647"
              (None H.Subdir)
        , fs-api = callFsSim "fs-api"
        , fs-sim = callFsSim "fs-sim"
        , graphviz = H.callHackage "graphviz" "2999.20.1.0"
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
        , hedgehog-corpus = H.callHackage "hedgehog-corpus" "0.2.0"
        , hs-rqlite = H.callHackage "hs-rqlite" "0.1.2.0"
        , io-classes = callIoSim "io-classes"
        , io-classes-mtl = callIoSim "io-classes-mtl"
        , io-sim = callIoSim "io-sim"
        , iohk-monitoring = callCHaP "iohk-monitoring" "0.1.11.1"
        , libsystemd-journal = H.callHackage "libsystemd-journal" "1.4.5"
        , lobemo-backend-aggregation = callIohkMonitoringFramework "plugins/backend-aggregation"
        , lobemo-backend-editor = callIohkMonitoringFramework "plugins/backend-editor"
        , lobemo-backend-ekg = callIohkMonitoringFramework "plugins/backend-ekg"
        , lobemo-backend-graylog = callIohkMonitoringFramework "plugins/backend-graylog"
        , lobemo-backend-monitoring = callIohkMonitoringFramework "plugins/backend-monitoring"
        , lobemo-backend-trace-acceptor = callIohkMonitoringFramework "plugins/backend-trace-acceptor"
        , lobemo-backend-trace-forwarder = callIohkMonitoringFramework "plugins/backend-trace-forwarder"
        , lobemo-scribe-systemd = callIohkMonitoringFramework "plugins/scribe-systemd"
        , measures = callCardanoBase "measures"
        , microbench = H.callHackage "microbench" "0.1"
        , monoidal-containers = H.callHackage "monoidal-containers" "0.6.4.0"
        , monoidal-synchronisation =
            callOuroborosNetwork "monoidal-synchronisation"
        , moo =
            H.callGit
              "https://github.com/astanin/moo"
              "dbda5e76ac3b4c72c805ec0cdb9bcdff7bb6247d"
              (None H.Subdir)
        , network-mux = callOuroborosNetwork "network-mux"
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
        , ouroboros-consensus = callOuroborosConsensus "ouroboros-consensus"
        , ouroboros-consensus-cardano = callOuroborosConsensus "ouroboros-consensus-cardano"
        , ouroboros-consensus-diffusion = callOuroborosConsensus "ouroboros-consensus-diffusion"
        , ouroboros-consensus-protocol = callOuroborosConsensus "ouroboros-consensus-protocol"
        , ouroboros-network-api = callOuroborosNetwork "ouroboros-network-api"
        , ouroboros-network-framework =
            callOuroborosNetwork "ouroboros-network-framework"
        , ouroboros-network-mock = callOuroborosNetwork "ouroboros-network-mock"
        , ouroboros-network-protocols =
            callOuroborosNetwork "ouroboros-network-protocols"
        , ouroboros-network-testing =
            callOuroborosNetwork "ouroboros-network-testing"
        , ouroboros-network = callOuroborosNetwork "ouroboros-network"
        , plutus-core = callPlutus "plutus-core"
        , plutus-ledger-api = callPlutus "plutus-ledger-api"
        , plutus-preprocessor = callCardanoLedger "libs/plutus-preprocessor"
        , plutus-tx = callPlutus "plutus-tx"
        , plutus-tx-plugin = callPlutus "plutus-tx-plugin"
        , prettyprinter-configurable = callPlutus "prettyprinter-configurable"
        , pvar = H.callHackage "pvar" "1.0.0.0"
        , quickcheck-state-machine = H.callHackage "quickcheck-state-machine" "0.7.2"
        , quickcheck-transformer =
            H.callHackage "quickcheck-transformer" "0.3.1.2"
        , set-algebra = callCardanoLedger "libs/set-algebra"
        , si-timers = H.callHackage "si-timers" "1.1.0.0"
        , small-steps = callCardanoLedger "libs/small-steps"
        , small-steps-test = callCardanoLedger "libs/small-steps-test"
        , strict-containers = callCHaP "strict-containers" "0.1.0.0"
        , strict-stm = callIoSim "strict-stm"
        , threepenny-gui = H.callHackage "threepenny-gui" "0.9.4.0"
        , trace-dispatcher = callCardanoNode "trace-dispatcher"
        , trace-forward = callCardanoNode "trace-forward"
        , trace-resources = callCardanoNode "trace-resources"
        , tracer-transformers = callCHaP "tracer-transformers" "0.1.0.2"
        , typed-protocols-cborg = callTypedProtocols "typed-protocols-cborg"
        , typed-protocols-examples =
            callTypedProtocols "typed-protocols-examples"
        , typed-protocols = callTypedProtocols "typed-protocols"
        , unix-bytestring = H.callHackage "unix-bytestring" "0.4.0"
        , vector-map = callCardanoLedger "libs/vector-map"
        , websockets-snap = H.callHackage "websockets-snap" "0.10.3.1"
        , wl-pprint-text = H.callHackage "wl-pprint-text" "1.2.0.2"
--        , word-array = callPlutus "word-array"
        })

in  H.HorizonExport.MakeOverlay
      { packagesDir = "pkgs"
      , overlayFile = "overlay.nix"
      , overlay =
        { compiler = "ghc-9.2.5", packages = packages }
      }
