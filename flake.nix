{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    flake-parts.url = "github:hercules-ci/flake-parts";
    nvf = {
      url = "github:NotAShelf/nvf";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    {
      self,
      flake-parts,
      nixpkgs,
      nvf,
      ...
    }@inputs:
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems = [
        "x86_64-linux"
        "aarch64-darwin"
      ];

      perSystem =
        { pkgs, ... }:
        let
          myNeovim = nvf.lib.neovimConfiguration {
            inherit pkgs;
            modules = [ ./config ];
          };

          devShell = pkgs.mkShell {
            packages = with pkgs; [
              go
              gopls
              nixd
              nixfmt-rfc-style
              statix
              lua-language-server
            ];
          };
        in
        {
          packages.default = myNeovim.neovim;
          devShells.default = devShell;
        };
    };
}
