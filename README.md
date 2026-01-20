# Backup repo to hold my dotfiles incase i needed them on diffrent unix like systems (linux,macos,wsl)

this repo uses the stow to manage and put symlinks to the files in the apropriate place 
so it is advised to install and use gnu stow for this 

## installation
```bash 
sudo pacman -S stow
```
## usage
### backing up 
```bash 
mv ~/.config/<application-name> ./<package-name>/.config
```
### loading the config
```bash 
stow <package-name>
```
