## Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
#
## Set name of the theme to load.
## Look in ~/.oh-my-zsh/themes/
## Optionally, if you set this to "random", it'll load a random theme each
## time that oh-my-zsh is loaded.
##ZSH_THEME="robbyrussell"
#ZSH_THEME="agnoster"
DEFAULT_USER="cvick"
#
## Example aliases
## alias zshconfig="mate ~/.zshrc"
## alias ohmyzsh="mate ~/.oh-my-zsh"
#
## Set to this to use case-sensitive completion
## CASE_SENSITIVE="true"
#
## Comment this out to disable bi-weekly auto-update checks
## DISABLE_AUTO_UPDATE="true"
#
## Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
## export UPDATE_ZSH_DAYS=13
#
## Uncomment following line if you want to disable colors in ls
## DISABLE_LS_COLORS="true"
#
## Uncomment following line if you want to disable autosetting terminal title.
## DISABLE_AUTO_TITLE="true"
#
## Uncomment following line if you want red dots to be displayed while waiting for completion
## COMPLETION_WAITING_DOTS="true"
#
## Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
## Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
## Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git vi-mode docker pass systemdi z)
#

## Choose correct gpg-agent path depending on OS
if [ "$(uname -s)" = "Darwin" ]; then ## OSX
	export SSH_AUTH_SOCK=/Users/$(id -un)/.gnupg/S.gpg-agent.ssh
else ## All other Unix based OS
	export SSH_AUTH_SOCK=/run/user/$(id -u)/gnupg/S.gpg-agent.ssh
fi
export EDITOR=vim
export QT_DEVICE_PIXEL_RATIO=auto
export NPM_PACKAGES="$HOME/.npm-packages"
export PATH="/usr/local/bin:/usr/bin:/bin:/opt/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/Library/Python/2.7/bin:$PATH"
export PATH="$NPM_PACKAGES/bin:$PATH"

source $ZSH/oh-my-zsh.sh
source `pip2 show powerline-status | grep Location | sed 's/Location: //g'`/powerline/bindings/zsh/powerline.zsh

## Import sensitive environment variables not tracked in git
[ -e "$HOME/.secrets" ] && source "$HOME/.secrets"

alias fixkey="killall -9 gpg-agent && killall scdaemon && source .zshrc && ssh-add -L"
