if [ -d $HOME/.conf/nvim ]; then
	rm -rf $HOME/.conf/nvim
fi
if [ -d $HOME/.local/share/nvim/site ]; then
	rm -rf $HOME/.local/share/nvim/site
fi

git clone --depth 1 https://github.com/wbthomason/packer.nvim $HOME/.local/share/nvim/site/pack/packer/start/packer.nvim
git clone https://github.com/fioncat/nvim-dotfiles.git $HOME/.config/nvim

NVM_HOME=$HOME/.config/nvim
mv $NVM_HOME/init.lua $NVM_HOME/init-back.lua
mv $NVM_HOME/init-install.lua $NVM_HOME/init.lua
