{
  # Configure Virt-manager
  programs.virt-manager.enable = true;
  users.groups.libvirtd.members = ["babeh"];
  virtualisation.libvirtd.enable = true;
  virtualisation.spiceUSBRedirection.enable = true;
}