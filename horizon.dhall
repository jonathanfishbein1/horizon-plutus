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

let callPlutus
    : H.Subdir → H.HaskellPackage.Type
    = callRepository
        "https://github.com/input-output-hk/plutus"
        "5efe047b034bdd1f79df6dfa64a3c5d205ffa8f8"

let packages =
      H.modPackageList
        H.Modifiers::{ enableProfiling = False }
        ( toMap
            { OddWord =
                H.callGit
                  "https://github.com/locallycompact/OddWord"
                  "ace47523b97ac2bc4dcdef5542927e5216e32afd"
                  (None H.Subdir)
            , algebraic-graphs = H.callHackage "algebraic-graphs" "0.7"
            , base-deriving-via = callCardanoBase "base-deriving-via"
            , cardano-binary = callCardanoBase "cardano-binary"
            , cardano-binary-test = callCardanoBase "cardano-binary/test"
            , cardano-crypto =
                H.callGit
                  "https://github.com/input-output-hk/cardano-crypto"
                  "07397f0e50da97eaa0575d93bee7ac4b2b2576ec"
                  (None H.Subdir)
            , cardano-crypto-class = callCardanoBase "cardano-crypto-class"
            , cardano-crypto-praos = callCardanoBase "cardano-crypto-praos"
            , cardano-crypto-tests = callCardanoBase "cardano-crypto-tests"
            , cardano-slotting = callCHaP "cardano-slotting" "0.1.1.1"
            , cardano-strict-containers =
                callCardanoBase "cardano-strict-containers"
            , cardano-prelude = callCHaP "cardano-prelude" "0.1.0.1"
            , cardano-prelude-test = callCHaP "cardano-prelude-test" "0.1.0.1"
            , flat =
                H.callGit
                  "https://github.com/Quid2/flat"
                  "2121ee96201e39764e3a6fcbc53241afb0050647"
                  (None H.Subdir)
            , heapwords = callCardanoBase "heapwords"
            , monoidal-containers =
                H.callHackage "monoidal-containers" "0.6.4.0"
            , plutus-core = callPlutus "plutus-core"
            , plutus-ledger-api = callPlutus "plutus-ledger-api"
            , plutus-tx = callPlutus "plutus-tx"
            , plutus-tx-plugin = callPlutus "plutus-tx-plugin"
            , prettyprinter-configurable =
                callPlutus "prettyprinter-configurable"
            , quickcheck-transformer =
                H.callHackage "quickcheck-transformer" "0.3.1.2"
            , word-array = callPlutus "word-array"
            }
        )

in  H.HorizonExport.MakeOverlay
      { packagesDir = "pkgs"
      , overlayFile = "overlay.nix"
      , overlay = { compiler = "ghc-9.2.5", packages }
      }
