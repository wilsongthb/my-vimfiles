FROM alpine:3.15
RUN apk update && apk add neovim nodejs git
RUN git clone https://github.com/wilsongthb/my-vimfiles.git ~/.vim
RUN mkdir -p ~/.config/nvim
RUN cp ~/.vim/init.vim ~/.config/nvim/init.vim
RUN mkdir /code
WORKDIR /code
RUN mkdir -p ~/.config/coc && ln -s ~/.vim/coc_ultisnips/ ~/.config/coc/ultisnips
