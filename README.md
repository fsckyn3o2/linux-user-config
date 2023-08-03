# Extra system config of Linux (arch) based on sway and wayland

## Summary

- __Applications__ - aur-packages as submodules
- __Zramdisk__ - services to mount and umount a ramdisk based on zram.
- __Themes-archive__ - list of theme tested on system for different services
- __Environment__ - environment variables for user
- __Backup_system__ - example of script to backup entire system
- __Config__ - Example of configurations used for application
  - alacritty
  - conky
  - dunst
  - profile.d : configuration run on logon 
  - scripts : useful script for user
  - sway : configuration of sway
  - waybar : simple/minimal configuration of waybar

## Details

### [Config](./config/README.md)
- `config` contains modules which are store in `$HOME/.config`

### Environment

- [wiki.archlinux.org - Environment variable - Per wayland session](https://wiki.archlinux.org/title/Environment_variables#Per_Wayland_session)
<br/><br/>
- `environemnt` is `$HOME/.config/environment.d`, the directory called by systemd to create user environment variables 
- This script [`config/profile.d/environmentd.sh`](./config/profile.d/environmentd.sh) load conf files as explain in documentation

### [ZRam disk](./zramdisk/README.md)

### [applications](./applications)
List of applications/aur-packages as examples.

### [Theme archive](./themes_archive/README.md)
List of themes used in different modules.

### [Icons and Symbols](./icons_symbols)
Custom icons or symbols used in waybar or sway environment.