# My dotfiles

This directory contains the dotfiles for my Debian System

## Requirements

Ensure that you have the following installed on the System

### Git

```bash
sudo apt install git -y
```

### Stow
```bash
sudo apt install stow -y 
```
## Installation

First, check out the dotfiles repo to your $HOME directory using git

```bash
git clone git@github.com:n3ph0s/dotfiles.git
cd dotfiles
```

Then use GNU Stow to create symlinks 

```bash
stow .
```

## Troubleshooting

If the files or structure already exists you will get an error message that the file exists in which case you just need to remove the directory or file and then run the command again.  
