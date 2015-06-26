# dotfiles
Custom Linux config files managed by GNU stow.

Inspired and based on config files from Ubuntu's default profile settings, [Mathias' dotfiles](https://github.com/mathiasbynens/dotfiles), and [xero's dotfiles](https://github.com/xero/dotfiles).

# Prerequisites

Well, you don't *have* to have GNU stow, but it certainly makes maintaining the system links easy.

```shell
sudo apt-get install stow
```

# Installation

```shell
cd ~
git clone https://github.com/doublecompile/dotfiles.git
cd dotfiles
stow bash
stow git
stow ssh
```

Make sure to remove your existing configuration beforehand, otherwise stow will barf a nice error about the files already existing.
