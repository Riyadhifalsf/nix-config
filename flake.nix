{
  description = "NixOS multi desktop env";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.11";
  };

  outputs = { self, nixpkgs }: {
    nixosConfigurations = {
      babeh = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          # ./configuration.nix
	  ./hosts/babeh/default.nix
        ];
      };
    };
  };
}
