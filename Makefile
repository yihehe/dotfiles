# all targets are phony
.PHONY: $(MAKECMDGOALS)

zshrc:
	if grep -q "source ~/dotfiles/zshrc" ~/.zshrc; then \
		echo "zshrc already installed"; \
	else \
		echo "source ~/dotfiles/zshrc" >> ~/.zshrc; \
		echo "zshrc installed"; \
	fi

unzshrc:
	mv ~/.zshrc ./zshrc.bak
	sed "/^source ~\/dotfiles\/zshrc$$/d" ./zshrc.bak > ~/.zshrc
	echo "zshrc uninstalled"

vimrc:
	mkdir -p ~/.vim/backup
	mkdir -p ~/.vim/swap
	mkdir -p ~/.vim/undo
	if grep -q ":so ~/dotfiles/vimrc" ~/.vimrc; then \
		echo "vimrc already installed"; \
	else \
		echo ":so ~/dotfiles/vimrc" >> ~/.vimrc; \
		echo "vimrc installed"; \
	fi

unvimrc:
	mv ~/.vimrc ./vimrc.bak
	sed "/^:so ~\/dotfiles\/vimrc$$/d" ./vimrc.bak > ~/.vimrc
	echo "vimrc uninstalled"

