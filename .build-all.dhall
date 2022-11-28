let Prelude =
        env:DHALL_PRELUDE
      ? https://raw.githubusercontent.com/dhall-lang/dhall-lang/v20.1.0/Prelude/package.dhall
          sha256:26b0ef498663d269e4dc6a82b0ee289ec565d683ef4c00d0ebdd25333a5a3c98

let H = ./horizon-spec.dhall

let toStep
    : Text → Text
    = \(x : Text) -> ".#${x}"

let input = Prelude.Map.keys Text H.HaskellPackage.Type ./horizon.dhall

let packages =
      Prelude.List.map
        Text
        Text
        toStep 
        (input : List Text)

in  "nix build -L" ++ Prelude.List.fold Text packages Text (\(x : Text) -> \(y : Text) -> x ++ " " ++ y) ""
