# Install tmux 2.3 on Ubuntu 14.04 from source

sudo apt-get update
sudo apt-get install -y libevent-dev libncurses-dev make
wget https://github.com/tmux/tmux/releases/download/2.3/tmux-2.3.tar.gz
tar xvzf tmux-2.3.tar.gz
cd tmux-2.3/
./configure && make
sudo make install
