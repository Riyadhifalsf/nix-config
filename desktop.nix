{ ... }:

{
  specialisation = {
    plasma.configuration = {
      imports = [
        ./display-mananger/sddm.nix
        ./desktop/plasma.nix
      ];
    };

    gnome.configuration = {
      imports = [
        ./display-mananger/gdm.nix
        ./desktop/gnome.nix
      ];
    };
  };
}
