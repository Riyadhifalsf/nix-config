{
  description = "Babeh's modular NixOS + Home Manager configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";
    home-manager = {
      url = "github:nix-community/home-manager/release-26.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    catppuccin.url = "github:catppuccin/nix/release-26.05";
  };

  outputs = inputs@{ nixpkgs, home-manager, catppuccin, ... }:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in {
      nixosConfigurations.babeh = nixpkgs.lib.nixosSystem {
        inherit system;
        specialArgs = { inherit inputs; };
        modules = [
          ./hosts/babeh/default.nix
          home-manager.nixosModules.home-manager
          catppuccin.nixosModules.catppuccin
        ];
      };

      homeConfigurations.babeh =
        home-manager.lib.homeManagerConfiguration {
          inherit pkgs;
          extraSpecialArgs = { inherit inputs; };
          modules = [ ./home-manager/babeh.nix catppuccin.homeModules.catppuccin ];
        };
    };
}
