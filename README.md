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

# Specific Configuration

## Bash

All of the content of this section was lifted from [Mathias' dotfiles](https://github.com/mathiasbynens/dotfiles).

### Specify the `$PATH`

If `~/.path` exists, it will be sourced along with the other files, before any feature testing (such as [detecting which version of `ls` is being used](https://github.com/mathiasbynens/dotfiles/blob/aff769fd75225d8f2e481185a71d5e05b76002dc/.aliases#L21-26)) takes place.

Here’s an example `~/.path` file that adds `/usr/local/bin` to the `$PATH`:

```bash
export PATH="/usr/local/bin:$PATH"
```

### Add custom commands without creating a new fork

If `~/.extra` exists, it will be sourced along with the other files. You can use this to add a few custom commands without the need to fork this entire repository, or to add commands you don’t want to commit to a public repository.

You could also use `~/.extra` to override settings, functions and aliases from my dotfiles repository. It’s probably better to [fork this repository](https://github.com/doublecompile/dotfiles/fork) instead, though.

## Git

You can place additional global config into `$XDG_CONFIG_HOME/git/config` (See [git-config](https://git-scm.com/docs/git-config#FILES)). On my system, this is `~/.config/git/config`.

My `~/.config/git/config` looks like this:

```
[user]
	name = Jonathan Hawk
	email = jonathan@hawk.ninja
```

Do note that anything in `~/.gitconfig` overwrites these settings.
