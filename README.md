# NixOS + Home Manager (Flake)

> Reproducible, modular, dan siap dipakai ulang di mesin mana pun.

Konfigurasi **NixOS** berbasis **Flakes** dengan integrasi **Home Manager**. Repo ini ditujukan untuk penggunaan pribadi **sekaligus aman dipublish ke GitHub** sebagai referensi atau template.

---

## ✨ Highlights
- ❄️ NixOS **24.11 (stable)**
- 🏠 Home Manager **24.11** (terintegrasi)
- 🧬 Flakes (reproducible & versioned)
- 🔓 `allowUnfree = true`
- 🤖 Android SDK license auto-accepted
- 🧼 Struktur rapi & scalable

---

## 🏷️ Metadata

- Hostname : `babeh`
- Arch     : `x86_64-linux`
- Channel  : `nixos-24.11`

---

## 📁 Struktur Repo

Struktur repo ini modular dan siap dikembangkan untuk multi-host maupun multi-desktop.

```text
nix-config
├── flake.lock
├── flake.nix
├── home-manager
│   └── babeh.nix
├── hosts
│   └── babeh
│       ├── default.nix
│       └── hardware-configuration.nix
├── modules
│   ├── core
│   │   ├── bootloader.nix
│   │   ├── kernel-settings.nix
│   │   ├── locale.nix
│   │   ├── network.nix
│   │   ├── nixpkgs.nix
│   │   ├── packages.nix
│   │   └── users.nix
│   ├── desktop
│   │   ├── gnome
│   │   │   └── gnome.nix
│   │   └── kde-plasma
│   │       ├── config
│   │       │   ├── assets
│   │       │   │   ├── icon-launcher.png
│   │       │   │   ├── wallpaper
│   │       │   │   └── wallpaper.jpg
│   │       │   ├── kdeglobals
│   │       │   ├── kglobalshortcutsrc
│   │       │   ├── kwinrc
│   │       │   ├── plasma-org.kde.plasma.desktop-appletsrc
│   │       │   └── plasmashellrc
│   │       └── plasma.nix
│   ├── display-manager
│   │   ├── gdm.nix
│   │   └── sddm.nix
│   ├── programs
│   │   ├── adb.nix
│   │   ├── firefox.nix
│   │   ├── steam.nix
│   │   ├── virt-manager.nix
│   │   └── zsh
│   │       ├── p10k.zsh
│   │       └── zsh.nix
│   ├── services
│   │   ├── dbus.nix
│   │   ├── flatpak.nix
│   │   ├── keymap.nix
│   │   ├── pipewire.nix
│   │   ├── printing.nix
│   │   ├── samba-config.nix
│   │   └── tor.nix
│   └── system-config
│       └── plasma-config.nix
└── README.md

```
---

## 🚀 Cara Pakai

### 1️⃣ Clone Repo

```bash
git clone https://github.com/Riyadhifalsf/nix-config.git
cd NixOS-config
```

---

### 2️⃣ Aktifkan Flakes

Tambahkan ke `/etc/nix/nix.conf`:

```conf
experimental-features = nix-command flakes
```

Restart daemon:

```bash
sudo systemctl restart nix-daemon
```

---

### 3️⃣ Rebuild NixOS

```bash
sudo nixos-rebuild switch --flake .#babeh
```

> `babeh` = hostname (sesuai `nixosConfigurations`).

---

### 4️⃣ Apply Home Manager (opsional manual)

```bash
home-manager switch --flake .#babeh
```

Biasanya **tidak perlu** jika Home Manager sudah terintegrasi via NixOS.

---

## 🔄 Update Dependency

Update semua input:

```bash
nix flake update
```

Update tertentu:

```bash
nix flake lock --update-input nixpkgs
```

---

> "Sedikit lebih beda lebih baik daripada sedikit lebih baik"  
> **— Quote Babeh**

