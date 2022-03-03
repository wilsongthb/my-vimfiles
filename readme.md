# NOTA

las carpetas y archivos de _plugins son plugins que no estan en un
repositorio, por tanto no deben ser eliminados

Requiere CURL instalado en linea de comandos
Requiere yarn
Requiere node
Requiere python3
Require wget

## SSH
```bash
git clone git@github.com:wilsongthb/my-vimfiles.git ~/.vim
```

## HTTPS
```bash
git clone https://github.com/wilsongthb/my-vimfiles.git ~/.vim
```

# Para nvim
```sh
mkdir -p ~/.config/nvim
cp ~/.vim/init.vim ~/.config/nvim/init.vim

sudo apt install -y python3-neovim
```

# Para Vim en windows
```powershell
cp ~/.vim/init.vim ~/_vimrc
```

### After COPY COC SNIPPETS
```bash
mkdir -p ~/.config/coc && ln -s ~/.vim/coc_ultisnips/ ~/.config/coc/ultisnips
```

### powerline fonts
```bash
wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
mv PowerlineSymbols.otf ~/.local/share/fonts/
fc-cache -vf ~/.local/share/fonts/
```


# PARA DOCKER
```
docker build -t nvim:image .

# linux
docker run -it -v ~/dev:/code --name nvim nvim:image

# windows
docker run -it -v C:\dev:/code --name nvim nvim:image
docker start nvim
docker exec -it nvim
```
