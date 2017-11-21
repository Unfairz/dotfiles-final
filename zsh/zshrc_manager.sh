echo "Updating configuration"

(cd ~/dotfiles-final && git pull && git submodule update --init --recursive)


source ~/dotfiles-final/zsh/zshrc.sh
