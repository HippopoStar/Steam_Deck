
ใ `&#12484;` (Syllabe katakana tu)  

๐ก `&#128481;` (Dague)  
๐ `&#127961;` (Paysage urbain)  
๐ `&#127759;` (Globe terrestre asie-australie)  
โ `&#9732;` (Comete)  
๐ฎ `&#127918;` (Jeu video)  

โข `&#8226;` (Puce)  
โ `&#9755;` (Index noir pointant vers la droite)  
โ `&#9758;` (Index blanc pointant vers la droite)  
โ `&#8594;` (Fleche vers la droite)  
โณ `&#10227;` (Fleche sens horaire entrouverte)  
โค `&#10515;` (Fleche jusqu'a taquet vers le bas)  


[YouTube - _Le Tetryl_ - LE PACK DE MOD ULTIME POUR FF7 - Les meilleurs mods pour jouer ร  Final Fantasy VII](https://www.youtube.com/watch?v=0S4_MfVXJAE)  

```
find ~/.local/share/Steam -type f -exec grep -n -e 'ff7_fr\.exe' -e 'FF7_Launcher\.exe' '{}' +
find ~/.local/share/Steam \( -type d -a -name '39140' \) -print
```

[Retraduction du jeu Projet _Neo Midgar_](https://ff7.fr/neo-midgar/)  
โ Lien de telechargement : [โค Neo-Midgar.zip](https://ff7.fr/neo-midgar/download/Neo-Midgar.zip)  
```
curl -o ~/Downloads/Neo-Midgar.zip https://ff7.fr/neo-midgar/download/Neo-Midgar.zip
unzip ~/Downloads/Neo-Midgar.zip -d ~/Downloads/Neo-Midgar
```
Dans Lutris :
- Add Game
- Add locally installed game
- Game info:
    - Name: Final Fantasy VII (Neo-Midgar Patch)
    - Runner: Wine
- Game options:
    - Executable: ~/Downloads/Neo-Midgar/Neo-Midgar.exe
    - Working directory: ~/.local/share/Steam/steamapps/common
    - Wine prefix: ~/.local/share/Steam/steamapps/compatdata/39140/pfx
- Runner options:
    - Wine version: <select\_a\_wine\_version>

[Manager de Mod _7th Heaven_ Mod](https://7thheaven.rocks)  
โ Lien de telechargement : [โค 7th\_Heaven\_Portable.zip](https://qhimm.7thheaven.rocks/7h/7thHeaven-v2.7.1.0_Release.zip)  
```
curl -o ~/Downloads/7th_Heaven_Portable.zip https://qhimm.7thheaven.rocks/7h/7thHeaven-v2.7.1.0_Release.zip
unzip ~/Downloads/7th_Heaven_Portable.zip -d ~/Downloads/7th_Heaven_Portable
ln -s ~/.local/share/Steam/steamapps/common ~/.local/share/Steam/steamapps/compatdata/39140/pfx/drive_c/Program\ Files\ \(x86\)/Steam/steamapps
ln -s ~/Downloads/7th_Heaven_Portable ~/.local/share/Steam/steamapps/compatdata/39140/pfx/drive_c/users/deck/Documents
mkdir -p ~/.local/share/Steam/steamapps/common/FINAL\ FANTASY\ VII/mods/Textures
mkdir -p ~/.local/share/Steam/steamapps/common/FINAL\ FANTASY\ VII/mods/7th\ Heaven
```

