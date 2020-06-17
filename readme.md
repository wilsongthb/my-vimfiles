# NOTA
las carpetas y archivos de _plugins son plugins que no estan en un repositorio, por tanto no deben ser eliminados

Requiere CURL instalado en linea de comandos
Requiere yarn
Requiere node
Requiere python3
Require wget

```bash
git clone https://github.com/wilsongthb/my-vimfiles.git ~/.vim
vim -c 'PlugInstall' -c q

CocInstall -sync coc-vetur
CocInstall -sync coc-tsserver
CocInstall -sync coc-snippets
CocInstall -sync coc-phpls
CocInstall -sync coc-json
CocInstall -sync coc-html
CocInstall -sync coc-eslint
CocInstall -sync coc-emmet
CocInstall -sync coc-css

```

powerline fonts
```bash
wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
mv PowerlineSymbols.otf ~/.local/share/fonts/
fc-cache -vf ~/.local/share/fonts/
```
