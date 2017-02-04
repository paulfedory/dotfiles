DIR=~/bin/dotfiles

all: symlinks

symlinks:
	@ln -nsf $(DIR)/bashrc ~/.bashrc
	@ln -nsf $(DIR)/bash_profile ~/.bash_profile
	@ln -nsf $(DIR)/gitconfig ~/.gitconfig
	@ln -nsf $(DIR)/gemrc ~/.gemrc
	@ln -nsf $(DIR)/bundle ~/.bundle
	@ln -nsf $(DIR)/gitignore_global ~/.gitignore_global
	@ln -nsf $(DIR)/agignore ~/.agignore
	@ln -nsf $(DIR)/sublime/User ~/Library/Application\ Support/Sublime\ Text\ 3/Packages
	@ln -nvsf $(DIR)/vim ~/.vim
	@ln -nsf $(DIR)/vimrc ~/.vimrc
