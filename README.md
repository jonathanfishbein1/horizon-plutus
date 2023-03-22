# Horizon Haskell: Plutus

horizon-plutus is a Package Set targetting
[plutus-tx](https://github.com/input-output-hk/plutus).

## Package Set Policy

This package set has the following policy.

* GHC will advance as often as possible.
* Non-versioned locations (git, unversioned tarballs) are permitted to allow
  GHC to advance.
* The following packages must always build:
  * plutus-tx

## Updating the Package set

The package set is generated from the `horizon.dhall` using the following command:

```
nix run 'git+https://gitlab.horizon-haskell.net/haskell/horizon-gen-nix?ref=refs/tags/0.10.0'
```

If you need to do additional manual overrides to the nix code, such as
`addPkgconfigDepends`, edit the `configuration.nix` overlay, which is applied
afterwards.

## Programmmatic Updates

To use `horizon-shell`.

```
nix run 'git+https://gitlab.horizon-haskell.net/shells/horizon-shell?ref=refs/tags/0.0.7'
```

See the in-shell help for usage.
