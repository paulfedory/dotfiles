DIR=~/bin/dotfiles

all: symlinks

symlinks:
	@ln -nsf $(DIR)/asdfrc ~/.asdfrc
	@ln -nsf $(DIR)/zshrc ~/.zshrc
	@ln -nsf $(DIR)/gitconfig ~/.gitconfig
	@ln -nsf $(DIR)/gemrc ~/.gemrc
	@ln -nsf $(DIR)/bundle ~/.bundle
	@ln -nsf $(DIR)/gitignore_global ~/.gitignore_global
	@ln -nsf $(DIR)/agignore ~/.agignore
	@ln -nvsf $(DIR)/tool-versions ~/.tool-versions
	@ln -nsf $(DIR)/vim/init.lua ~/.config/nvim/init.lua
	@ln -nvsf $(DIR)/vim/lua ~/.config/nvim/lua
	
	# Old:
	# @ln -nvsf $(DIR)/vim/autoload ~/.local/share/nvim/site
	# @ln -nvsf $(DIR)/vim ~/.vim
	# @ln -nsf $(DIR)/vimrc ~/.vimrc
	# @ln -nsf $(DIR)/vimrc ~/.config/nvim/vimrc.vim
