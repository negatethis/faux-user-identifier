{ mkBunDerivation, ... }:

mkBunDerivation {
  pname = "faux-user-identifier";
  version = "main";

  src = ./.;

  bunNix = ./bun.nix;

  buildFlags = [
    "--compile"
    "--minify"
    "--sourcemap"
  ];

  index = "./index.ts";
}
