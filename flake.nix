{
  description = "NixOS + Home Manager flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.11";
    home-manager.url = "github:nix-community/home-manager/release-24.11";
  };

  outputs = { self, nixpkgs, home-manager }: {

    nixosConfigurations = {
      babeh = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";

        modules = [
          ./hosts/babeh/default.nix
          home-manager.nixosModules.home-manager
        ];
      };
    };

    homeConfigurations = {
      babeh = home-manager.lib.homeManagerConfiguration {
        pkgs = nixpkgs.legacyPackages.x86_64-linux;
        modules = [
          ./home-manager/babeh.nix
        ];
      };
    };
  };
}
