echo 'Begin install'

# VIM AUTO SAVE
git clone https://github.com/vim-scripts/vim-auto-save.git ~/.vim/vim-scripts/vim-auto-save

# XOLOX MISC AND SESSION
git clone https://github.com/xolox/vim-misc.git ~/.vim/xolox/vim-misc
git clone https://github.com/xolox/vim-session.git ~/.vim/xolox/cim-session
vim -u NONE -c "helptags ~/.vim/xolox/vim-session/doc" -c q

# NERD TREE
git clone https://github.com/preservim/nerdtree.git ~/.vim/pack/vendor/start/nerdtree
vim -u NONE -c "helptags ~/.vim/pack/vendor/start/nerdtree/doc" -c q

# VUE HIGHLIGHTS
git clone https://github.com/posva/vim-vue.git ~/.vim/pack/plugins/start/vim-vue

# BUFFER EXPLORER
vim -u NONE -c "helptags ~/.vim/bufexplorer-7.4.21/doc" -c q

# VIM - AIRLINE
git clone https://github.com/vim-airline/vim-airline ~/.vim/pack/dist/start/vim-airline
vim -u NONE -c "helptags ~/.vim/pack/dist/start/vim-airline" -c q

echo 'End installation'
#END INSTALL

