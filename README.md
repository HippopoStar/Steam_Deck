# Steam\_Deck

[ingenhaag - GetMyDeck](https://getmydeck.ingenhaag.dev/s/EU/512/1646213674)  
[ProtonDB](https://www.protondb.com/)  
[MangoHud](https://github.com/flightlessmango/MangoHud)  

[GitHub - Guide to generating SSH Keys](https://docs.github.com/en/authentication/connecting-to-github-with-ssh)  
[Steam Support - Steam Deck Desktop: FAQ](https://help.steampowered.com/faqs/view/671A-4453-E8D2-323C)  
[Steam Support - Instructions de recuperation pour Steam Deck](https://help.steampowered.com/faqs/view/1B71-EDF2-EB6D-2BB3)  

[FlatHub](http://flathub.org)  
[toolbx](https://containertoolbx.org)  
[Distrobox](https://distrobox.privatedns.org)  

```
$ sudo steamos-readonly
Usage: steamos-readonly enable|disable|status

Enable or disable read-only on the current running SteamOS.
```

## Set desktop icons

Steam:                       `~/.local/share/Steam/steam/games`  
Lutris:                      `~/.var/app/net.lutris.Lutris/data/lutris/runtime/icons/hicolor/64x64/apps`  
GOG games:                   `~/.var/app/net.lutris.Lutris/data/icons/hicolor/256x256/apps`  
Uplay:                       `~/.var/app/net.lutris.Lutris/data/icons/hicolor/256x256/apps`  
Uplay games:                 `<Lutris installation directory>/Games/ubisoft-connect/drive_c/Program\ Files\ \(x86\)/Ubisoft/Ubisoft\ Game\ Launcher/cache/assets`  

## Set Steam custom picture

GOG games:                   `~/.var/app/net.lutris.Lutris/cache/lutris/coverart`  
Uplay games:                 `<Lutris installation directory>/Games/ubisoft-connect/drive_c/Program\ Files\ \(x86\)/Ubisoft/Ubisoft\ Game\ Launcher/cache/assets`  

## Set Steam custom background

GOG games:                   `~/.var/app/net.lutris.Lutris/cache/lutris/gog/banners/large`  
Uplay games:                 `<Lutris installation directory>/Games/ubisoft-connect/drive_c/Program\ Files\ \(x86\)/Ubisoft/Ubisoft\ Game\ Launcher/cache/assets`  

## Game Saves

Steam:                       `~/.local/share/Steam/userdata/<steam_account_contact_code>`  
The Witcher III - Wild Hunt: `<Lutris installation directory>/Games/gog/the-witcher-3-wild-hunt-game-of-the-year-edition/drive_c/users/deck/Documents/The\ Witcher\ 3/gamesaves`  
Uplay games:                 `<Lutris installation directory>/Games/ubisoft-connect/drive_c/Program\ Files\ \(x86\)/Ubisoft/Ubisoft\ Game\ Launcher/savegames`  
DeSmuME:                     `~/.var/app/net.lutris.Lutris/config/desmume`__

## Steam games launch options
Monster Hunter World: `MANGOHUD_CONFIG='fps_limit=40,no_display' mangohud %command%`  

## Lutris games config
yaml files: `~/.var/app/net.lutris.Lutris/config/lutris/games`  

### The Witcher 3: Wild Hunt - Game Of The Year Edition
```
system:
  env:
    __GL_SHADER_DISK_CACHE: 1
    __GL_SHADER_DISK_CACHE_PATH: $GAMEDIR
  pulse_latency: false
  fps_limit: "40"
```

## Lutris FPS limiter
[libstrangle](https://gitlab.com/torkel104/libstrangle)  
__Download ArchLinux ISO (deprecated)__  
```
MY_DIR=~/Documents/archlinux
MY_DATE="$( date --utc +'%Y.%m.%d' )"

mkdir -p "${MY_DIR}"
cd "${MY_DIR}"
curl -o "archlinux-${MY_DATE}-x86_64.iso" https://mirrors.edge.kernel.org/archlinux/iso/latest/archlinux-x86_64.iso
curl -o "archlinux-${MY_DATE}-x86_64.iso.sig" https://mirrors.edge.kernel.org/archlinux/iso/latest/archlinux-x86_64.iso.sig
curl -o b2sums.txt https://mirrors.edge.kernel.org/archlinux/iso/latest/b2sums.txt

ln -s "archlinux-${MY_DATE}-x86_64.iso" archlinux-x86_64.iso
ln -s "archlinux-${MY_DATE}-x86_64.iso.sig" archlinux-x86_64.iso.sig

b2sum -c b2sums.txt 2>/dev/null
sq wkd get pierre@archlinux.org > release-key.pgp
sq verify --signer-cert release-key.pgp --detached archlinux-x86_64.iso.sig archlinux-x86_64.iso
```
__Setup ArchLinux disk image__  
```
curl -o airootfs.sfs https://mirrors.edge.kernel.org/archlinux/iso/latest/arch/x86_64/airootfs.sfs
unsquashfs -no-xattrs airootfs.sfs
mkdir -p squashfs-root/run/systemd/resolve
cp /etc/resolv.conf squashfs-root/run/systemd/resolve/stub-resolv.conf
sudo mkdir -p squashfs-root/proc/self
sudo cp /etc/mtab squashfs-root/proc/self/mounts
```
__Clone libstrangle repository__  
```
git clone https://gitlab.com/torkel104/libstrangle.git squashfs-root/root/libstrangle
```
__Enter ArchLinux disk image__  
```
sudo chroot squashfs-root
```
__Install dependencies__  
```
pacman-key --init
pacman-key --populate archlinux
# pacman -Fyx <regex>
# pacman -Syi <package_name>
pacman -Sy make gcc lib32-gcc-libs lib32-glibc libglvnd
```
__Compile libstrangle__  
```
cd /root/libstrangle/
make
make install
```
__Exit ArchLinux disk image__  
```
CTRL + D
```
__Retrieve libstrangle from disk image (native install)__  
```
MY_BINARY_DIR=~/bin
MY_LIB32_DIR=~/.local/lib/libstrangle/lib32
MY_LIB64_DIR=~/.local/lib/libstrangle/lib64

mkdir -p "${MY_BINARY_DIR}"
cp squashfs-root/usr/local/bin/strangle "${MY_BINARY_DIR}/"
cp squashfs-root/usr/local/bin/stranglevk "${MY_BINARY_DIR}/"
sudo cp squashfs-root/usr/local/share/vulkan/implicit_layer.d/libstrangle_vk.json /etc/vulkan/implicit_layer.d/


mkdir -p "${MY_LIB32_DIR}"
cp squashfs-root/usr/local/lib/libstrangle/lib32/libstrangle.so "${MY_LIB32_DIR}/"
cp squashfs-root/usr/local/lib/libstrangle/lib32/libstrangle_nodlsym.so "${MY_LIB32_DIR}/"
cp squashfs-root/usr/local/lib/libstrangle/lib32/libstrangle_vk.so "${MY_LIB32_DIR}/"
mkdir -p "${MY_LIB64_DIR}"
cp squashfs-root/usr/local/lib/libstrangle/lib64/libstrangle.so "${MY_LIB64_DIR}/"
cp squashfs-root/usr/local/lib/libstrangle/lib64/libstrangle_nodlsym.so "${MY_LIB64_DIR}/"
cp squashfs-root/usr/local/lib/libstrangle/lib64/libstrangle_vk.so "${MY_LIB64_DIR}/"

# sudo cp squashfs-root/etc/ld.so.conf.d/libstrangle.conf /etc/ld.so.conf.d/
```
__Retrieve libstrangle from disk image (flatpak install)__  
```
MY_BINARY_DIR="$( find /var/lib/flatpak/app/net.lutris.Lutris/x86_64/stable -type d -path '*/files/bin' -print | head -n 1 )"
LIBSTRANGLE_DIR=squashfs-root/usr/local/lib/libstrangle

sudo cp squashfs-root/usr/local/bin/strangle "${MY_BINARY_DIR}/"
sudo cp squashfs-root/usr/local/bin/stranglevk "${MY_BINARY_DIR}/"

# Following command will require you to type 'y' and press ENTER:
sudo find /var/lib/flatpak/runtime -type d -path '*/vulkan/implicit_layer.d' -ok cp squashfs-root/usr/local/share/vulkan/implicit_layer.d/libstrangle_vk.json '{}'/ \;

# find /var/lib/flatpak/runtime -type d -path '*/files/lib' -exec ls -lA '{}' \;
# find /var/lib/flatpak/runtime -type d -path '*/files/lib' -ok sudo rm '{}'/libstrangle.so '{}'/libstrangle_nodlsym.so '{}'/libstrangle_vk.so \;

# Following commands will require you to type 'y' and press ENTER:

find /var/lib/flatpak/runtime/org.freedesktop.Platform.GL.default -type d -path '*/files/lib' -ok sudo cp "${LIBSTRANGLE_DIR}/lib64/libstrangle.so" "${LIBSTRANGLE_DIR}/lib64/libstrangle_nodlsym.so" "${LIBSTRANGLE_DIR}/lib64/libstrangle_vk.so" '{}'/ \;

find /var/lib/flatpak/runtime/org.freedesktop.Platform.GL32.default -type d -path '*/files/lib' -ok sudo cp "${LIBSTRANGLE_DIR}/lib32/libstrangle.so" "${LIBSTRANGLE_DIR}/lib32/libstrangle_nodlsym.so" "${LIBSTRANGLE_DIR}/lib32/libstrangle_vk.so" '{}'/ \;
```
__Remove disk image__  
```
sudo rm --recursive --interactive='never' squashfs-root
```
__Grant dynamic linker access to shared objects (native install)__  
```
sudo cat <<_EOF > /etc/ld.so.conf.d/libstrangle.conf
/home/deck/.local/lib/libstrangle/lib32/
/home/deck/.local/lib/libstrangle/lib64/
_EOF
ldconfig
```
__Add home binary directory to environnement variable PATH (native install)__  
```
sudo cat <<_EOF > /etc/profile.d/add_home_binary_dir_to_env_path.sh
if [ -n "${HOME}" ] && [ -d "${HOME}/bin" ]; then
  append_path "${HOME}/bin"
fi
_EOF
```
__Grant Lutris visibility on strangle (native install, deprecated)__  
```
sudo steamos-readonly disable
sudo ln -s /home/deck/bin/strangle /usr/local/bin/strangle
sudo ln -s /home/deck/bin/stranglevk /usr/local/bin/stranglevk
sudo steamos-readonly enable
```

## Lutris runners
appimage:   `~/.var/app/net.lutris.Lutris/data/lutris/runners`  
yaml files: `~/.var/app/net.lutris.Lutris/config/lutris/runners`  

## Lutris runners documentation
DeSmuME: `man ~/.var/app/net.lutris.Lutris/data/lutris/runners/desmume/share/man/man1/desmume.1`  

## Migrate Yuzu to Lutris
[Lutris - Games - Yuzu](https://lutris.net/games/yuzu/)  
[AppImage/AppImageKit Wiki - FUSE](https://github.com/AppImage/AppImageKit/wiki/FUSE#docker)  
```
mv ~/.local/share/yuzu ~/.var/app/net.lutris.Lutris/data/
mv ~/.config/yuzu      ~/.var/app/net.lutris.Lutris/config/
rm --recursive --interactive=always ~/.cache/yuzu
cat <<_EOF > ~/.var/app/net.lutris.Lutris/config/lutris/runners/yuzu.yml
system:
  env:
    APPIMAGE_EXTRACT_AND_RUN: '1'
yuzu:
  prod_keys: /home/deck/.var/app/net.lutris.Lutris/data/yuzu/keys/prod.keys
  runner_executable: /home/deck/.var/app/net.lutris.Lutris/data/lutris/runners/yuzu/yuzu
  title_keys: /home/deck/.var/app/net.lutris.Lutris/data/yuzu/keys/title.keys

_EOF
```

