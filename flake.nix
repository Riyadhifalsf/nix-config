{
  description = "NixOS + Home Manager flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.11";
    home-manager.url = "github:nix-community/home-manager/release-24.11";
  };

  outputs = { self, nixpkgs, home-manager }: let
    system = "x86_64-linux";
    pkgs = import nixpkgs {
      inherit system;
      config = {
        allowUnfree = true;
        android_sdk.accept_license = true;
      };
    };
  in {
    nixosConfigurations = {
      babeh = nixpkgs.lib.nixosSystem {
        inherit system;

        modules = [
          ./hosts/babeh/default.nix
          home-manager.nixosModules.home-manager
        ];
      };
    };

    homeConfigurations = {
      babeh = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
        modules = [
          ./home-manager/babeh.nix
        ];
      };
    };
  };
}
