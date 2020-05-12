clean:
	-rm -rf ~/.vim
	-rm ~/.vimrc

install: clean
	ln -s ~/cnf/dotfiles/vim/ ~/.vim
	ln -s ~/cnf/dotfiles/vimrc ~/.vimrc
	git submodule update --init
	vim +BundleInstall +qall
