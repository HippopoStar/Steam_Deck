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

[Decky Loader](https://github.com/SteamDeckHomebrew/decky-loader)  
[PowerTools](https://github.com/NGnius/PowerTools)  
SMT: Simultaneous Multi Threading  
```
curl -L -o ~/Desktop/decky_installer.desktop https://github.com/SteamDeckHomebrew/decky-installer/releases/latest/download/decky_installer.desktop
```

[EmuDeck](https://www.emudeck.com/)  
```
curl -L -o ~/Desktop/EmuDeck.desktop https://www.emudeck.com/EmuDeck.desktop
```

Uncompress archives
```
MY ARCHIVE='<file_name>'

# ZIP
unzip "${MY_ARCHIVE}" -d "${MY_ARCHIVE%.zip}"

# RAR
# sudo apt-get update && sudo apt-get install p7zip-rar
7z x -o "${MY_ARCHIVE%.rar}" "${MY_ARCHIVE}"
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

Steam:                       `~/.local/share/Steam/userdata/<steam_user_id>`  
The Witcher III - Wild Hunt: `<Lutris installation directory>/Games/gog/the-witcher-3-wild-hunt-game-of-the-year-edition/drive_c/users/deck/Documents/The\ Witcher\ 3/gamesaves`  
Uplay games:                 `<Lutris installation directory>/Games/ubisoft-connect/drive_c/Program\ Files\ \(x86\)/Ubisoft/Ubisoft\ Game\ Launcher/savegames`  
PPSSPP:                      `~/.var/app/net.lutris.Lutris/config/ppsspp/PSP/SAVEDATA`  
DeSmuME:                     `~/.var/app/net.lutris.Lutris/config/desmume`  
Citra:                       `~/.var/app/org.citra_emu.citra/data/citra-emu/sdmc/Nintendo 3DS/00000000000000000000000000000000/00000000000000000000000000000000/title/00040000`  
Yuzu (Lutris):               `~/.var/app/net.lutris.Lutris/data/yuzu/nand/user/save/0000000000000000`  
Yuzu (Flatpak):              `~/.var/app/org.yuzu_emu.yuzu/data/yuzu/nand/user/save/0000000000000000`  

## Controller configurations

`~/.local/share/Steam/steamapps/common/Steam\ Controller\ Configs/<steam_user_id>/config/`  
[241100 - Steam Input Configs](https://steamdb.info/app/241100/)  
`~/.local/share/Steam/steamapps/workshop/content/241100/`  

## Steam Game Ids
[39140](https://store.steampowered.com/app/39140/FINAL_FANTASY_VII/)  
[200260](https://store.steampowered.com/app/200260/Batman_Arkham_City__Game_of_the_Year_Edition/)  
[247080](https://store.steampowered.com/app/247080/Crypt_of_the_NecroDancer/)  
[252950](https://store.steampowered.com/app/252950/Rocket_League/)  
[268910](https://store.steampowered.com/app/268910/Cuphead/)  
[347290](https://store.steampowered.com/app/347290/Rise__Shine/)  
[437920](https://store.steampowered.com/app/437920/Tricky_Towers/)  
[582010](https://store.steampowered.com/app/582010/Monster_Hunter_World/)  
[728880](https://store.steampowered.com/app/728880/Overcooked_2/)  
[760060](https://store.steampowered.com/app/760060/Mutant_Year_Zero_Road_to_Eden/)  
[814380](https://store.steampowered.com/app/814380/Sekiro_Shadows_Die_Twice__GOTY_Edition/)  
[1076200](https://store.steampowered.com/app/1076200/Roguebook/)  
[1145360](https://store.steampowered.com/app/1145360/Hades/)  
[1151050](https://store.steampowered.com/app/1151050/Golf_Gang/)  
[1172620](https://store.steampowered.com/app/1172620/Sea_of_Thieves/)  
[1222680](https://store.steampowered.com/app/1222680/Need_for_Speed_Heat/)  
[1276790](https://store.steampowered.com/app/1276790/Ruined_King_A_League_of_Legends_Story/)  
[1295510](https://store.steampowered.com/app/1295510/DRAGON_QUEST_XI_S__Les_Combattants_de_la_destine__dition_ultime/)  
[1446780](https://store.steampowered.com/app/1446780/MONSTER_HUNTER_RISE/)  
[1462040](https://store.steampowered.com/app/1462040/FINAL_FANTASY_VII_REMAKE_INTERGRADE/)  
[1608070](https://store.steampowered.com/app/1608070/CRISIS_CORE_FINAL_FANTASY_VII_REUNION/)  
[1971650](https://store.steampowered.com/app/1971650/OCTOPATH_TRAVELER_II/)  

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

## Citra
```
MH4U_GAME='/home/deck/Documents/citra/games/3DS1186 - Monster Hunter 4 Ultimate (Europe)(En,Fr,De,Es) Decrypted.3ds'
MH4U_ICON='/home/deck/Pictures/emulators/3ds_icon_monster_hunter_4_ultimate.png'
cat <<_EOF > ~/.local/share/applications/citra-monster-hunter-4-ultimate.desktop
[Desktop Entry]
Version=1.0
Type=Application
Name=Monster Hunter 4 Ultimate
Comment=Start Monster Hunter 4 Ultimate with the Citra Emulator
Icon=${MH4U_ICON}
Exec=/usr/bin/flatpak run --branch=stable --arch=x86_64 --command=citra-qt --file-forwarding org.citra_emu.citra @@ "${MH4U_GAME}" @@
_EOF
chmod a+x ~/.local/share/applications/citra-monster-hunter-4-ultimate.desktop
ln -s ~/.local/share/applications/citra-monster-hunter-4-ultimate.desktop ~/Desktop/
```

## Yuzu - Migrate from Flatpak to Lutris
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

## Yuzu - Remove from Lutris
```
rm ~/.var/app/net.lutris.Lutris/config/lutris/runners/yuzu.yml
rm -rf ~/.var/app/net.lutris.Lutris/data/lutris/runners/yuzu/
rm -rf ~/.var/app/net.lutris.Lutris/data/yuzu/
rm -rf ~/.var/app/net.lutris.Lutris/config/yuzu/
rm -rf ~/.var/app/net.lutris.Lutris/cache/yuzu/
# Remove game launch files from ~/.var/app/net.lutris.Lutris/config/lutris/games/
# Remove game entries from ~/.var/app/net.lutris.Lutris/cache/lutris/game-paths.json
# Remove game banners from ~/.var/app/net.lutris.Lutris/cache/lutris/banners/
# Remove game coverart from ~/.var/app/net.lutris.Lutris/cache/lutris/coverart/
```
```
sqlite3
> .open /home/deck/.var/app/net.lutris.Lutris/data/lutris/pga.db
> .mode markdown
> .tables
> select * from games;
> select * from games where runner="yuzu";
```

## Yuzu - Use FlatPak

Notes:  
\- Menu Bar will show when positionning mouse cursor on top only when window is maximized  
\- `cat /var/lib/flatpak/exports/share/applications/org.yuzu_emu.yuzu.desktop`  
\- `xdg-open /var/lib/flatpak/app/org.yuzu_emu.yuzu/current/active/export/share/applications/`  
Yuzu folder: `~/.var/app/org.yuzu_emu.yuzu/data/yuzu`  
SVG icon:    `/var/lib/flatpak/exports/share/icons/hicolor/scalable/apps/org.yuzu_emu.yuzu.svg`  

`find /var/lib/flatpak/ -regex '/var/lib/flatpak/app/org.yuzu_emu.yuzu/x86_64/stable/[a-f0-9]+/files/bin/yuzu'`  
Run a game from command line:  
```
/usr/bin/flatpak run --branch=stable --arch=x86_64 --command=yuzu org.yuzu_emu.yuzu -g <game_file_path>
```

[ArchLinux - Desktop Entries](https://wiki.archlinux.org/title/Desktop_entries)  
```
MY_DESKTOP_ENTRY_FILE=~/.var/app/org.yuzu_emu.yuzu/data/applications/yuzu-0100F2C0115B6000.desktop
desktop-file-validate "${MY_DESKTOP_ENTRY_FILE}"
kioclient exec "${MY_DESKTOP_ENTRY_FILE}"
```

`TITLE_ID=0100F2C0115B6000`  
1. Yuzu -> Right click on selected game -> Create Shortcut -> Add to Applications menu  
2. `~/.var/app/org.yuzu_emu.yuzu/data/applications/yuzu-${TITLE_ID}.desktop`:  
   \- Entry `TryExec` -> comment  
   \- Entry `Exec` -> replace `yuzu` by `/usr/bin/flatpak run --branch=stable --arch=x86_64 --command=yuzu org.yuzu_emu.yuzu`  
3. `desktop-file-validate ~/.var/app/org.yuzu_emu.yuzu/data/applications/yuzu-${TITLE_ID}.desktop`  
4. `desktop-file-install --dir=${HOME}/.local/share/applications/ ~/.var/app/org.yuzu_emu.yuzu/data/applications/yuzu-${TITLE_ID}.desktop`  
5. `chmod a+x ~/.local/share/applications/yuzu-${TITLE_ID}.desktop`  
6. `update-desktop-database`  
7. `ln -s ~/.local/share/applications/yuzu-${TITLE_ID}.desktop ~/Desktop/`  

/!\\ When creating a Desktop Entry, it will not show up immediately in Dolphin file explorer.  
    Refreshing directory will not work either.  
    -> Quit Dolphin and re-open it  
/!\\ `desktop-file-validate` does not detect the error when arguments are passed to the `TryExec` executable  

[LOZ: Tears of the Kingdom fps++, static fps, and visual fixes patch...](https://gbatemp.net/download/loz-tears-of-the-kingdom-fps-static-fps-and-visual-fixes-patch-collection.37996/)  
```
curl -L -o ~/Downloads/Mods.zip https://gbatemp.net/download/loz-tears-of-the-kingdom-fps-static-fps-and-visual-fixes-patch-collection.37996/download
TOTK_VERSION=1.1.0
unzip ~/Downloads/Mods.zip 30fps_stable_static_totk/exefs/${TOTK_VERSION}.pchtxt -d ~/.var/app/org.yuzu_emu.yuzu/data/yuzu/load/0100F2C0115B6000/
unzip ~/Downloads/Mods.zip VisualFixes_DisableFSR_totk/exefs/${TOTK_VERSION}.pchtxt -d ~/.var/app/org.yuzu_emu.yuzu/data/yuzu/load/0100F2C0115B6000/
```

