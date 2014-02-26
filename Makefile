all: compiled/zshrc compiled/bashrc compiled/vimrc

install:
	cd compiled && for file in * ; do \
		cp $$file ~/.$$file ; \
	done

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
	echo "#compiled on `date`" > $@
	for file in vim/*.vim ; do \
		echo >> $@ ; \
		echo "#$$file" >> $@ ; \
		cat $$file >> $@ ; \
	done
