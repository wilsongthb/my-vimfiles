echo 'Begin install'

# VIM AUTO SAVE
git clone https://github.com/vim-scripts/vim-auto-save.git ~/.vim/vim-scripts/vim-auto-save

# XOLOX MISC AND SESSION
git clone https://github.com/xolox/vim-misc.git ~/.vim/xolox/vim-misc
git clone https://github.com/xolox/vim-session.git ~/.vim/xolox/vim-session
vim -u NONE -c "helptags ~/.vim/xolox/vim-session/doc" -c q

# NERD TREE
git clone https://github.com/preservim/nerdtree.git ~/.vim/pack/vendor/start/nerdtree
vim -u NONE -c "helptags ~/.vim/pack/vendor/start/nerdtree/doc" -c q

# VUE HIGHLIGHTS
git clone https://github.com/posva/vim-vue.git ~/.vim/pack/plugins/start/vim-vue

# VIM - AIRLINE
git clone https://github.com/vim-airline/vim-airline ~/.vim/pack/dist/start/vim-airline
vim -u NONE -c "helptags ~/.vim/pack/dist/start/vim-airline/doc" -c q

# LIGHTLINE
# git clone https://github.com/itchyny/lightline.vim ~/.vim/pack/plugins/start/lightline

# MULTICURSOR
git clone https://github.com/terryma/vim-multiple-cursors.git ~/.vim/terryma/vim-multiple-cursors
vim -u NONE -c "helptags ~/.vim/terryma/vim-multiple-cursors/doc" -c q

echo 'End installation'
#END INSTALL

