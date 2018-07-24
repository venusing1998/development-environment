sudo apt -y install git vim zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
cd ~/.oh-my-zsh/custom/plugins/
git clone https://github.com/zsh-users/zsh-autosuggestions.git
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
wget -P ~ https://raw.githubusercontent.com/venusing1998/development-environment/master/Ubuntu%2018/.zshrc