echo 'Begin install'

# NERD TREE
# git clone https://github.com/preservim/nerdtree.git ~/.vim/pack/vendor/start/nerdtree
vim -u NONE -c "helptags ~/.vim/pack/vendor/start/nerdtree/doc" -c q

# VUE HIGHLIGHTS
# git clone https://github.com/posva/vim-vue.git ~/.vim/pack/plugins/start/vim-vue

# BUFFER EXPLORER
vim -u NONE -c "helptags ~/.vim/bufexplorer-7.4.21/doc" -c q

# SESSIONS
vim -u NONE -c "helptags ~/.vim/vim-session/doc" -c q

echo 'End installation'
#END INSTALL

