{ pkgs, pkgs-libR, ... }:

with pkgs.haskell.lib;

final: prev: {

  R = pkgs-libR.R;

  cardano-crypto-class = enableCabalFlag (addPkgconfigDepend prev.cardano-crypto-class pkgs.libsodium) "development";

  cardano-crypto-praos = addPkgconfigDepend prev.cardano-crypto-praos pkgs.libsodium;

  cardano-prelude = enableCabalFlag prev.cardano-prelude "development";

  secp256k1 = pkgs.secp256k1;

}
