{
  description = "NixOS multi desktop env";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.11";
    home-manager.url = "github:nix-community/home-manager/release-24.11";
  };

  outputs = { self, nixpkgs, home-manager }: {
    nixosConfigurations = {
      babeh = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          # ./configuration.nix
	       ./hosts/babeh/default.nix


    		# Home Manager integration
          home-manager.nixosModules.home-manager
          ./home/babeh.nix
        ];
        
      };
    };
  };

}

