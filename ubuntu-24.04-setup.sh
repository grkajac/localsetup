### install zshell and Oh My Zsh extension ###
sudo apt install curl zsh jq -y
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

### install git ###
sudo apt install git
cp .gitconfig ~/.gitconfig

### install sdkman with java, gradle, maven ... ###
curl -s "https://get.sdkman.io" | bash
[[ -s "{$HOME}/.sdkman/bin/sdkman-init.sh" ]] && source "{$HOME}/.sdkman/bin/sdkman-init.sh"

sdk install java 17.0.11-tem
sdk install java 22.0.1-tem
sdk install gradle 8.8
sdk install maven 3.9.8
sdk install groovy 4.0.22
sdk install kotlin 2.0.0
sdk install visualvm 2.1.8
sdk install leiningen 2.11.2

### install golang ###
sudo apt install golang-go -y


# install docker from Docker repo
# curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
# sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
# sudo apt update
# apt-cache policy docker-ce
# sudo apt install -y docker-ce docker-compose-plugin
# sudo groupadd docker
# sudo usermod -aG docker ${USER}
# su - ${USER}

### install Docker via snap ###
sudo snap install docker
sudo addgroup --system docker
sudo usermod -aG docker ${USER}
sudo newgrp docker
sudo snap disable docker
sudo snap enable docker

### install kubernetes from K8s repo ###
sudo apt update && sudo apt install -y apt-transport-https;
# curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -;
# echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee -a /etc/apt/sources.list.d/kubernetes.list;
# sudo apt update;
# sudo apt install -y kubectl kubectx;
sudo snap install kubectl --classic
sudo snap install kubectx --classic

# Install minikube
# curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 && chmod +x minikube
# sudo install minikube /usr/local/bin
# sudo snap install microk8s --classic 

### install rust and cargo with sd and fd-file ###
# https://www.rust-lang.org/tools/install
sudo snap install rustup --classic
rustup install stable
rustup default stable
# mkdir ~/.zfunc
# echo "fpath+=~/.zfunc" >> ~/.zshrc
# rustup completions zsh cargo > ~/.zfunc/_cargo
# cargo install sd fd-finder

### install neovim ###
sudo apt install neovim -y

### install tmux ###
sudo apt install tmux -y;
cp .tmux.conf ~/.tmux.conf

### install mongo client ###
sudo snap install robo3t-snap

### install apt tools ###
sudo apt install meld \
    xournalpp \
    iotop \
    iftop \
    inxi \
    htop \
    tree \
    wireshark-qt \
    tshark \
    qperf \
    iptraf-ng \
    nmap \
    sshpass \
    tcpdump \
    traceroute \
    whois -y

### install dev apps ###
sudo snap install code --classic

### install apps ###
sudo snap install slack viber-mtd teams-for-linux dbeaver-ce skype
sudo apt install vlc smplayer


### install brew and tools ###
sudo apt install build-essential libssl-dev inotify-tools -y

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
test -d ~/.linuxbrew && eval "$(~/.linuxbrew/bin/brew shellenv)"
test -d /home/linuxbrew/.linuxbrew && eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
echo "### BREW ### \neval \"\$($(brew --prefix)/bin/brew shellenv)\"" >> ~/.zshrc
source ~/.zshrc

brew install sd
brew install fd
brew install ctop
brew install stern
brew install derailed/k9s/k9s
brew install lazydocker
brew install kind
brew install fzf
# To install useful key bindings and fuzzy completion:
$(brew --prefix)/opt/fzf/install
source ~/.zshrc


### install pyenv and python ###
brew install pyenv;
echo '### PYENV ### \nexport PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
echo '[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(pyenv init -)"' >> ~/.zshrc
source ~/.zshrc

pyenv install 3.10.4
pyenv global 3.10.4
pip install --upgrade pip
pip install paramiko ansible wheel powerline-status

### install jetbreans toolbox ###
sudo apt install libfuse2
cd /opt/
sudo wget https://download.jetbrains.com/toolbox/jetbrains-toolbox-2.3.2.31487.tar.gz
sudo tar -xvzf jetbrains-toolbox-2.3.2.31487.tar.gz
sudo mv jetbrains-toolbox-2.3.2.31487.tar.gz jetbrains-toolbox
sudo rm jetbrains-toolbox-2.3.2.31487.tar.gz

### Non-dev stuff ###
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys ACCAF35C
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys ACCAF35C
sudo sh -c 'echo "deb http://apt.insync.io/ubuntu $(lsb_release -cs) non-free contrib" >> /etc/apt/sources.list.d/insync.list'
sudo apt update
sudo apt install insync -y
sudo apt install deluge -y

sudo add-apt-repository universe
sudo apt update
sudo apt install gnome-tweaks gnome-shell-extension-manager gnome-shell-extensions -y
sudo apt install gir1.2-gtop-2.0 gir1.2-nm-1.0 gir1.2-clutter-1.0 gnome-system-monitor -y
sudo apt install gnupg2 software-properties-common apt-transport-https lsb-release ca-certificates -y
sudo apt install safeeyes -y

### create aliases ###
echo '### ALIASES ### \nalias kn="kubens \nalias kc="kubectx' >> ~/.zshrc
source ~/.zshrc

### create rsa key for Bitbucket ###
echo "Creating rsa key"
sudo ssh-keygen -t rsa -b 4098

### installing gnome extensions ###
# https://github.com/Tudmotu/gnome-shell-extension-clipboard-indicator
# install Vitals, clipboard manager ... TODO

### backup .zshrc file ###
cp ~/.zshrc ~/.zshrc.backup