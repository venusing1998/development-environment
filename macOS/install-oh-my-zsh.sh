cd ~/.oh-my-zsh/custom/plugins/
git clone https://github.com/zsh-users/zsh-autosuggestions.git
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
mv ~/.zshrc ~/.zshrc.bak
wget -P ~/Downloads https://raw.githubusercontent.com/venusing1998/development-environment/master/macOS/.zshrc
cp ~/Downloads/.zshrc ~/.zshrc
source ~/.zshrc