1. Install extra pacakges

```
sudo pacman -S wget powerline zsh ttf-fira-code
```
2. Change default shell for terminal to zsh

```
chsh -s /usr/bin/zsh
```

3. Clone and install dotfiles

```
export SSH_AUTH_SOCK=/var/run/user/1000/gnupg/S.gpg-agent.ssh
git init
git remote add origin git@github.com:username/dotfiles.git
git pull
git reset --hard origin master
git submodule update --init --recursive
```

4. Install and trust own PGP public key

```
gpg --import ~/.gnupg/public.asc
gpg --key-edit YOURKEYID
```
