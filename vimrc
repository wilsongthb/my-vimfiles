" You want Vim, not vi. When Vim finds a vimrc, 'nocompatible' is set anyway.
" We set it explicitely to make our position clear!
set nocompatible

filetype plugin indent on  " Load plugins according to detected filetype.
syntax on                  " Enable syntax highlighting.

set autoindent             " Indent according to previous line.
set expandtab              " Use spaces instead of tabs.
set softtabstop =2         " Tab key indents by 2 spaces.
set shiftwidth  =2         " >> indents by 2 spaces.
set shiftround             " >> indents to next multiple of 'shiftwidth'.

set backspace   =indent,eol,start  " Make backspace work as you would expect.
set hidden                 " Switch between buffers without having to save first.
set laststatus  =2         " Always show statusline.
set display     =lastline  " Show as much as possible of the last line.

set showmode               " Show current mode in command-line.
set showcmd                " Show already typed keys when more are expected.

set incsearch              " Highlight while searching with / or ?.
set hlsearch               " Keep matches highlighted.

set ttyfast                " Faster redrawing.
set lazyredraw             " Only redraw when necessary.

set splitbelow             " Open new windows below the current window.
set splitright             " Open new windows right of the current window.

set cursorline             " Find the current line quickly.
set wrapscan               " Searches wrap around end-of-file.
set report      =0         " Always report changed lines.
" set synmaxcol   =200       " Only highlight the first 200 columns.

set list                   " Show non-printable characters.
if has('multi_byte') && &encoding ==# 'utf-8'
  let &listchars = 'tab:▸ ,extends:❯,precedes:❮,nbsp:±'
else
  let &listchars = 'tab:> ,extends:>,precedes:<,nbsp:.'
endif

set number
set nowrap

nmap <F2> :bp<CR>
nmap <F3> :bn<CR>
nmap <F4> :NERDTreeToggle<CR>

command -nargs=1 SearchFile :Unite -no-split -ignorecase -input=**/<args> file

" ## FROM _PLUGINS  ##
set runtimepath^=~/.vim/_plugins/vim-autocomplpop
set runtimepath^=~/.vim/_plugins/vim-l9
set runtimepath^=~/.vim/_plugins/vim-fuzzyfinder " depende de vim-l9
let g:fuf_coveragefile_exclude = '\v\~$|\.(o|exe|dll|bak|orig|swp)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])|(^|[/\\])(vendor|node_modules)'
" ## ############## ##

" AUTOSAVE
set runtimepath^=~/.vim/vim-scripts/vim-auto-save
let g:auto_save=1

" SESSION
set runtimepath^=~/.vim/xolox/vim-misc
set runtimepath^=~/.vim/xolox/vim-session
let g:session_autosave='yes'
let g:session_autoload='yes'
let g:session_directory='./'
let g:session_default_name='session'
" set sessionoptions-=options

" MULTICURSOR
set runtimepath^=~/.vim/terryma/vim-multiple-cursors

" AIRLINE
let g:airline#extensions#tabline#enabled = 1

" FOR COLOR PROBLEMS
if !has('gui_running')
  set t_Co=256
endif

" PLUG INSTALL
let s:is_win = has('win32')
let $v = $HOME.(s:is_win ? '\vimfiles' : '/.vim')
let s:bundle_dir = $v.'/bundle'
call plug#begin(s:bundle_dir)
  Plug 'troydm/asyncfinder.vim'
  Plug 'vim-scripts/vim-auto-save'
  Plug 'xolox/vim-misc'
  Plug 'xolox/vim-session'
  Plug 'preservim/nerdtree'
  Plug 'posva/vim-vue'
  Plug 'vim-airline/vim-airline'
  Plug 'terryma/vim-multiple-cursors'
  Plug 'mattn/emmet-vim'
  Plug 'StanAngeloff/php.vim'
  Plug 'pangloss/vim-javascript'
  Plug 'Shougo/unite.vim'
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'othree/es.next.syntax.vim'
  Plug 'othree/javascript-libraries-syntax.vim'
  Plug 'prettier/vim-prettier'
call plug#end()

set wildignore+=*/node_modules/*,*/vendor/*

