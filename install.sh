#!/bin/zsh

gh="https://github.com"
gh_raw="https://raw.github.com"

# zsh themes, plugins
zsh_custom="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}"
zsh_themes="$zsh_custom/themes"
zsh_plugins="$zsh_custom/plugins"
omz_install="$gh_raw/ohmyzsh/ohmyzsh/master/tools/install.sh"
p10k_git="$gh/romkatv/powerlevel10k.git"
p10k_dest="$zsh_themes/powerlevel10k"
zsh_autosuggestions_git="$gh/zsh-users/zsh-autosuggestions"
zsh_autosuggestions_dest="$zsh_plugins/zsh-autosuggestions"
zsh_sh_git="$gh/zsh-users/zsh-syntax-highlighting.git"
zsh_sh_dest="$zsh_plugins/zsh-syntax-highlighting"

sh -c "$(curl -fsSL "$omz_install")" 2> /dev/null
git clone --depth=1 "$p10k_git" "$p10k_dest" 2> /dev/null
git clone "$zsh_autosuggestions_git" "$zsh_autosuggestions_dest" 2> /dev/null
git clone "$zsh_sh_git" "$zsh_sh_dest" 2> /dev/null

base_dir="$(dirname "$0")"
ln -s "$base_dir/.inputrc" ~/.inputrc 2> /dev/null
ln -s "$base_dir/.p10k.zsh" ~/.p10k.zsh 2> /dev/null
ln -s "$base_dir/.tmux.conf" ~/.tmux.conf 2> /dev/null
ln -s "$base_dir/.tmux.conf.local" ~/.tmux.conf.local 2> /dev/null
ln -s "$base_dir/.vimrc" ~/.vimrc 2> /dev/null
ln -s "$base_dir/.zshrc" ~/.zshrc 2> /dev/null

