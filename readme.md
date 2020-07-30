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
```

powerline fonts
```bash
wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
mv PowerlineSymbols.otf ~/.local/share/fonts/
fc-cache -vf ~/.local/share/fonts/
```
