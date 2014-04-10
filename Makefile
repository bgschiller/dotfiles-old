all: compiled/zshrc compiled/bashrc compiled/vimrc

install: install_sublime
	cd compiled && for file in * ; do \
		cp $$file ~/.$$file ; \
	done

install_sublime:
	if [ -e ~/Library/Application\ Support/Sublime\ Text\ 3/Packages ] && \
	[ ! -L ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User ];  then \
		ln -s ${PWD}/sublime_text_3/User ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User; \
	fi

compiled/zshrc: shell/*.zsh shell/*.sh
	echo "#compiled on `date`" > $@
	for file in shell/*.{zsh,sh} ; do \
		echo >> $@ ; \
		echo "#$$file" >> $@ ; \
		cat $$file >> $@ ; \
	done

compiled/bashrc: shell/*.bash shell/*.sh
	echo "#compiled on `date`" > $@
	for file in shell/*.{bash,sh} ; do \
		echo >> $@ ; \
		echo "#$$file" >> $@ ; \
		cat $$file >> $@ ; \
	done


compiled/vimrc: vim/*.vim
	echo "\"compiled on `date`" > $@
	for file in vim/*.vim ; do \
		echo >> $@ ; \
		echo "\"$$file" >> $@ ; \
		cat $$file >> $@ ; \
	done
