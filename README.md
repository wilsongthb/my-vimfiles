# NOTA
las carpetas y archivos de _plugins son plugins que no estan en un repositorio, por tanto no deben ser eliminados

Requiere CURL instalado en linea de comandos

```bash
git clone https://github.com/wilsongthb/my-vimfiles.git .vim
vim -c 'PlugInstall' -c q
vim -c 'CocInstall coc-html coc-phpls coc-tsserver coc-css coc-emmet' -c q
* coc-snippets 2.1.25 ~/.config/coc/extensions/node_modules/coc-snippets                                                                                                                                                           
* coc-explorer 0.4.1 ~/.config/coc/extensions/node_modules/coc-explorer
* coc-eslint 1.2.6 ~/.config/coc/extensions/node_modules/coc-eslint
+ coc-vetur 1.1.10 ~/.config/coc/extensions/node_modules/coc-vetur
+ coc-tsserver 1.5.1 ~/.config/coc/extensions/node_modules/coc-tsserver
+ coc-phpls 2.1.8 ~/.config/coc/extensions/node_modules/coc-phpls
+ coc-json 1.2.5 ~/.config/coc/extensions/node_modules/coc-json
+ coc-html 1.2.4 ~/.config/coc/extensions/node_modules/coc-html
+ coc-css 1.2.3 ~/.config/coc/extensions/node_modules/coc-css
```
