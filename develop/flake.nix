{

  nixConfig = {
    extra-substituters = "https://horizon.cachix.org";
    extra-trusted-public-keys = "horizon.cachix.org-1:MeEEDRhRZTgv/FFGCv3479/dmJDfJ82G6kfUDxMSAw0=";
  };

  inputs = {
    feedback.url = "github:NorfairKing/feedback";
    flake-parts.url = "github:hercules-ci/flake-parts";
    flake-to-gitlab-ci.url = "git+https://gitlab.nixica.dev/haskell/flake-to-gitlab-ci?ref=refs/tags/0.2.4.2";
    horizon-gen-nix.url = "git+https://gitlab.horizon-haskell.net/haskell/horizon-gen-nix?ref=refs/tags/0.10.4";
    horizon-shell.url = "git+https://gitlab.horizon-haskell.net/shells/horizon-shell?ref=refs/tags/0.0.9";
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs =
    inputs@
    { self
    , flake-parts
    , nixpkgs
    , ...
    }:
    flake-parts.lib.mkFlake { inherit inputs; }
      {
        systems = [
          "x86_64-linux"
        ];
        perSystem = { system, pkgs, ... }:
          let
            feedback-app = {
              type = "app";
              program = "${inputs.feedback.packages.${system}.default}/bin/feedback";
            };
            test-template = pkgs.writers.writeBashBin "test-template" ''
              mkdir temp
              cd temp
              nix flake init -t 'git+https://gitlab.horizon-haskell.net/templates/horizon-templates#minimal'
              git init .
              git add *
              nix build github:srid/devour-flake -L --no-link --print-out-paths --override-input flake . --override-input flake/horizon-platform ../ --keep-going
              cd ..
              rm temp -rf
            '';
          in
          {

            apps = {
              feedback = feedback-app;
              flake-to-gitlab-ci = inputs.flake-to-gitlab-ci.apps.${system}.default;
              horizon-gen-nix = inputs.horizon-gen-nix.apps.${system}.default;
              horizon-shell = inputs.horizon-shell.apps.${system}.default;
              test-template = {
                type = "app";
                program = "${test-template}/bin/test-template";
              };
            };

          };
      };
}
