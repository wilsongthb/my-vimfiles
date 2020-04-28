# NOTA
las carpetas y archivos de _plugins son plugins que no estan en un repositorio, por tanto no deben ser eliminados

Requiere CURL instalado en linea de comandos
Requiere yarn
Requiere node
Requiere python3

```bash
git clone https://github.com/wilsongthb/my-vimfiles.git ~/.vim
vim -c 'PlugInstall' -c q
vim -c 'CocInstall -sync coc-snippets coc-explorer coc-eslint coc-vetur coc-tsserver coc-phpls coc-json coc-html coc-css' -c q
```
