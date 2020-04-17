# NOTA
las carpetas y archivos de _plugins son plugins que no estan en un repositorio, por tanto no deben ser eliminados

Requiere CURL instalado en linea de comandos

```bash
git clone https://github.com/wilsongthb/my-vimfiles.git .vim
vim -c 'PlugInstall' -c q
vim -c 'CocInstall coc-html coc-phpls coc-tsserver coc-css coc-emmet' -c q
```
