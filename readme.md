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
