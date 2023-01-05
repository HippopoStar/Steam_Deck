# Steam\_Deck

[GitHub - Guide to generating SSH Keys](https://docs.github.com/en/authentication/connecting-to-github-with-ssh)  


## Set desktop icons

Steam:                       `~/.local/share/Steam/steam/games`  
Lutris:                      `~/.var/app/net.lutris.Lutris/data/lutris/runtime/icons/hicolor/64x64/apps`  
GOG games:                   `~/.var/app/net.lutris.Lutris/data/icons/hicolor/256x256/apps`  
Uplay:                       `~/.var/app/net.lutris.Lutris/data/icons/hicolor/256x256/apps`  
Uplay games:                 `<Lutris installation directory>/Games/ubisoft-connect/drive_c/Program\ Files\ \(x86\)/Ubisoft/Ubisoft\ Game\ Launcher/cache/assets`  

## Set Steam custom picture

GOG games:                   `~/.var/app/net.lutris.Lutris/cache/lutris/coverart`  
Uplay games:                 `<Lutris installation directory>/Games/ubisoft-connect/drive_c/Program\ Files\ \(x86\)/Ubisoft/Ubisoft\ Game\ Launcher/cache/assets`  

`curl -o ~/Pictures/pokemon_shining_pearl_logo.png https://diamondpearl.pokemon.com/en-us/assets/logo_sp.png`  
`curl -o ~/Pictures/pokemon_shining_pearl_cover.png https://diamondpearl.pokemon.com/en-us/assets/boxart_sp.png`  
`curl -o ~/Pictures/pokemon_shining_pearl_background.jpg https://diamondpearl.pokemon.com/en-us/assets/billboard-mobile.jpg`  

## Set Steam custom background

GOG games:                   `~/.var/app/net.lutris.Lutris/cache/lutris/gog/banners/large`  
Uplay games:                 `<Lutris installation directory>/Games/ubisoft-connect/drive_c/Program\ Files\ \(x86\)/Ubisoft/Ubisoft\ Game\ Launcher/cache/assets`  

## Game Saves

The Witcher III - Wild Hunt: `<Lutris installation directory>/Games/gog/the-witcher-3-wild-hunt-game-of-the-year-edition/drive_c/users/deck/Documents/The\ Witcher\ 3/gamesaves`  
Uplay games:                 `<Lutris installation directory>/Games/ubisoft-connect/drive_c/Program\ Files\ \(x86\)/Ubisoft/Ubisoft\ Game\ Launcher/savegames`  

## Lutris games config
yaml files: `~/.var/app/net.lutris.Lutris/config/lutris/games`  

## Lutris runners
appimage:   `~/.var/app/net.lutris.Lutris/data/lutris/runners`  
yaml files: `~/.var/app/net.lutris.Lutris/config/lutris/runners`  

## Migrate Yuzu to Lutris
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

