let H =
      https://gitlab.horizon-haskell.net/dhall/horizon-spec/-/raw/0.10.0/horizon-spec/package.dhall

let callCHaP
    : H.Name → H.Version → H.HaskellPackage.Type
    = λ(name : H.Name) →
      λ(version : H.Version) →
        H.callTarball
          "https://input-output-hk.github.io/cardano-haskell-packages/package/${name}-${version}.tar.gz"
          (None H.Subdir)

let overrides =
      toMap { algebraic-graphs = H.callHackage "algebraic-graphs" "0.7" }

let packages =
      H.modPackageList
        H.Modifiers::{ enableProfiling = False }
        ( toMap
            { base-deriving-via = callCHaP "base-deriving-via" "0.1.0.2"
            , cardano-binary = callCHaP "cardano-binary" "1.7.0.1"
            , cardano-binary-test = callCHaP "cardano-binary-test" "1.4.0.2"
            , cardano-crypto = callCHaP "cardano-crypto" "1.1.2"
            , cardano-crypto-class = callCHaP "cardano-crypto-class" "2.1.1.0"
            , cardano-crypto-praos = callCHaP "cardano-crypto-praos" "2.1.2.0"
            , cardano-crypto-tests = callCHaP "cardano-crypto-tests" "2.1.1.0"
            , cardano-slotting = callCHaP "cardano-slotting" "0.1.1.1"
            , cardano-strict-containers =
                callCHaP "cardano-strict-containers" "0.1.2.1"
            , cardano-prelude = callCHaP "cardano-prelude" "0.1.0.2"
            , cardano-prelude-test = callCHaP "cardano-prelude-test" "0.1.0.2"
            , flat = H.callHackage "flat" "0.6"
            , heapwords = callCHaP "heapwords" "0.1.0.2"
            , monoidal-containers =
                H.callHackage "monoidal-containers" "0.6.4.0"
            , ral = H.callHackage "ral" "0.2.1"
            , plutus-core = callCHaP "plutus-core" "1.7.0.0"
            , plutus-ledger-api = callCHaP "plutus-ledger-api" "1.7.0.0"
            , plutus-tx = callCHaP "plutus-tx" "1.7.0.0"
            , plutus-tx-plugin = callCHaP "plutus-tx-plugin" "1.7.0.0"
            , prettyprinter-configurable =
                callCHaP "prettyprinter-configurable" "1.7.0.0"
            , quickcheck-transformer =
                H.callHackage "quickcheck-transformer" "0.3.1.2"
            , word-array = callCHaP "word-array" "1.1.0.0"
            }
        )

in  H.HorizonExport.MakeOverlay
      { packagesDir = "pkgs"
      , overlayFile = "overlay.nix"
      , overlay = { compiler = "ghc-9.4.5", packages = overrides # packages }
      }
