## Script setup
mkdir -p $HOME/.local/bin
cp ./scripts/* $HOME/.local/bin
mkdir $HOME/Repos
mkdir $HOME/Projects

## Zsh setup
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/lukechilds/zsh-nvm ~/.oh-my-zsh/custom/plugins/zsh-nvm
git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git $ZSH_CUSTOM/plugins/zsh-autocomplete
git clone https://github.com/asdf-vm/asdf.git ~/.asdf
cp ./.zshrc $HOME/.zshrc

## Setup Aerospace 
cp ./.aerospace.toml $HOME/.aerospace.toml

## Setup wezterm
cp ./.wezterm.lua $HOME/.wezterm.lua

## Setup Tmux
cp ./.tmux.conf $HOME/.tmux.conf
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm


## Configure Bat
mkdir -p "$(bat --config-dir)/themes"
cp ./bat-themes/* "$(bat --config-dir)/themes"
bat cache --build


## Configure git fzf
git clone https://github.com/junegunn/fzf-git.sh.git $HOME/Repos/fzf-git.sh
cp ./.gitconfig ~/

## Copy over wallpapers
mkdir -p $HOME/Pictures/Wallpapers
cp -r ./Wallpapers/ $HOME/Picutres/Wallpapers/
