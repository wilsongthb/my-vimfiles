set number
set expandtab
set shiftwidth=2
set softtabstop=2
set nowrap

nmap <F2> :bp<CR>
nmap <F3> :bn<CR>

command -nargs=1 FCF :FufCoverageFile <args>

set runtimepath^=~/.vim/_plugins/vim-autocomplpop
set runtimepath^=~/.vim/_plugins/vim-l9
set runtimepath^=~/.vim/_plugins/vim-fuzzyfinder " depende de vim-l9
let g:fuf_coveragefile_exclude = '\v\~$|\.(o|exe|dll|bak|orig|swp)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])|(^|[/\\])(vendor|node_modules)'

set runtimepath^=~/.vim/vim-scripts/vim-auto-save
let g:auto_save=1

set runtimepath^=~/.vim/xolox/vim-misc
set runtimepath^=~/.vim/xolox/vim-session
let g:session_autosave='yes'
let g:session_autoload='yes'
let g:session_directory='./'
let g:session_default_name='session'
set sessionoptions-=options

set runtimepath^=~/.vim/terryma/vim-multiple-cursors

let g:airline#extensions#tabline#enabled = 1

if !has('gui_running')
  set t_Co=256
endif

