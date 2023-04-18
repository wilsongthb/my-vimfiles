"
" █████   █████ █████ ██████   ██████
" ░░███   ░░███ ░░███ ░░██████ ██████ 
"  ░███    ░███  ░███  ░███░█████░███ 
"  ░███    ░███  ░███  ░███░░███ ░███ 
"  ░░███   ███   ░███  ░███ ░░░  ░███ 
"   ░░░█████░    ░███  ░███      ░███ 
"     ░░███      █████ █████     █████
"      ░░░      ░░░░░ ░░░░░     ░░░░░ 
"
" =====================================================
" ConfiguracionBasica - https://github.com/mhinz/vim-galore/blob/master/static/minimal-vimrc.vim
" A (not so) minimal vimrc.
" 2021-06-05 10:38

set nocompatible           "You want Vim, not vi. When Vim finds a vimrc, 'nocompatible' is set anyway. We set it explicitely to make our position clear!

filetype plugin indent on  " Load plugins according to detected filetype.
syntax on                  " Enable syntax highlighting.

set autoindent             " Indent according to previous line.
set expandtab              " Use spaces instead of tabs.
set softtabstop =2         " Tab key indents by 4 spaces.
set shiftwidth  =2         " >> indents by 4 spaces.
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

" set cursorline             " Find the current line quickly.
set wrapscan               " Searches wrap around end-of-file.
set report      =0         " Always report changed lines.
set synmaxcol   =200       " Only highlight the first 200 columns.

set list                   " Show non-printable characters.

" show sides in characters format
if has('multi_byte') && &encoding ==# 'utf-8'
  let &listchars = 'tab:▸ ,extends:❯,precedes:❮,nbsp:±'
else
  let &listchars = 'tab:> ,extends:>,precedes:<,nbsp:.'
endif

" set number               " Show line numbers
set nowrap               " Not cut lines
set wildmenu             " Show suggest in cmd
set nofoldenable      "" disable folding

" NetrwConfig
" let g:netrw_use_noswf= 1
let g:netrw_list_hide= '\(^\|\s\s\)\zs\.\S\+.swp'
" let g:netrw_banner = 1
" let g:netrw_liststyle = 3
" let g:netrw_browse_split = 4
" let g:netrw_altv = 1
" let g:netrw_winsize = 20
" augroup ProjectDrawer
"   autocmd!
"   autocmd VimEnter * :Vexplore
" augroup END


" MisFunciones
function! IfIsVueForm(text, alternative)
  "return match(a:fileName, "Form.vue")
  if match(expand('%'), "Form.vue") != -1
    return a:text
  endif
  return a:alternative
endfunction

function! CustomFormatCode()
  let file_type = expand('%:e')
  execute "Format"
  " if file_type == 'vue'
  "   execute "Prettier"
  " elseif file_type == 'js'
  "   execute "Prettier"
  "  elseif file_type == 'html'
  "    execute "Prettier"
  " else
  "   execute "Format"
  " endif
endfunction

function! CopyToClipboard()
  call system('xclip -sel c', @0)
  echo 'copied to clipboard!'
endfunction

" function! VterminalInVsplit()
"   execute 'terminal'
"   let currentBuffer = buffer_number()
"   execute 'vert sb ' . currentBuffer
" endfunction

function! GoToVSplitView()
  let currentBuffer = buffer_number()
  execute 'BufSurfBack'
  execute 'vert sb ' . currentBuffer
endfunction

function! InsertCurrentDateTime()
  execute 'r !printf $(date +\%Y-\%m-\%d_\%H:\%M)'
endfunction

" VUE DEFAULT ENV
autocmd BufNewFile .prettierrc.json 0r ~/.vim/skeletons/.prettierrc.json
autocmd BufNewFile jsconfig.json 0r ~/.vim/skeletons/jsconfig.json
autocmd BufNewFile vue.config.js 0r ~/.vim/skeletons/vue.config.js

" Skeleton files
autocmd BufNewFile *.sh 0r ~/.vim/skeletons/skeleton.sh
autocmd BufNewFile *.php 0r ~/.vim/skeletons/skeleton.php
autocmd BufNewFile *.vue 0r ~/.vim/skeletons/vue-skeleton.txt
autocmd BufNewFile *.js 0r ~/.vim/skeletons/skeleton.js

" INSERT DATETIME CREATED
" Source: https://vim.fandom.com/wiki/Use_eval_to_create_dynamic_templates
autocmd BufNewFile * %substitute#\[:VIM_EVAL:\]\(.\{-\}\)\[:END_EVAL:\]#\=eval(submatch(1))#ge

" Keymaps
" nmap <F1> :bp<CR>
" nmap <F2> :bn<CR>
" nmap <F3> :Bclose<CR>
" nmap <F4> :NERDTreeToggle<CR>
" nmap <F4> :edit .<CR>
" nmap <F4> :Explore<CR>
nmap <F5> :call CustomFormatCode()<CR>
" nmap <F6> :NERDTreeFind<CR>
" nmap <F6> :Explore<CR>
" nmap <F7> :vsplit<CR>
" nmap <F8> :split<CR>
" nmap <F9> :close<CR>
" nmap <F10> :w!<CR>
"<F11> FullScreenToggle
" nnoremap <F12> "=strftime("%Y-%m-%d %H:%M")<CR>p
nmap <C-\> :call GoToVSplitView()<CR>
nmap <silent> <A-left> :BufSurfBack<CR>
nmap <silent> <A-right> :BufSurfForward<CR>

" " Removida funcion de f1 en el explorador de vim
" augroup netrw_mapping
"     autocmd!
"     autocmd filetype netrw call NetrwMapping()
" augroup END

" function! NetrwMapping()
"     noremap <buffer> <F1> :bp<CR>
" endfunction

" Comandos
command CopyToClipboard call CopyToClipboard()
command! CloseAllInBuffer execute '%bdelete|edit #|normal `"'
command! ExecuteCurrentLineInBash execute '.w !bash'
command PutDateTime execute 'r !printf $(date "+\%Y-\%m-\%d_\%H:\%M")'
" command Vterminal call VterminalInVsplit()
" InteracionConClipboard
" noremap <Leader>y "*y
" noremap <Leader>p "*p
" noremap <Leader>Y "+y
" noremap <Leader>P "+p

" RuntimePath
set runtimepath^=~/.vim/_plugins/bclose
"set runtimepath^=~/.vim/_plugins/vim-autocomplpop
"set runtimepath^=~/.vim/_plugins/vim-l9
"set runtimepath^=~/.vim/_plugins/vim-fuzzyfinder " depende de vim-l9
"let g:fuf_coveragefile_exclude = '\v\~$|\.(o|exe|dll|bak|orig|swp)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])|(^|[/\\])(vendor|node_modules)'

" Auto install Plug
" if empty(glob('~/.vim/autoload/plug.vim'))
"   silent execute "!curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
"   autocmd VimEnter * PlugInstall | source $MYVIMRC
" endif

" ###### PlugConfig ##############
let s:is_win = has('win32')
let $v = $HOME.(s:is_win ? '\vimfiles' : '/.vim')
let s:bundle_dir = $v.'/bundle'
call plug#begin(s:bundle_dir)
  Plug 'vim-scripts/vim-auto-save'
  Plug 'xolox/vim-misc'
  Plug 'xolox/vim-session'
  " Plug 'preservim/nerdtree'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  " Plug 'terryma/vim-multiple-cursors' "Deprecated
  Plug 'mg979/vim-visual-multi'
  Plug 'mattn/emmet-vim'
  Plug 'Shougo/unite.vim'
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'prettier/vim-prettier'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'ton/vim-bufsurf'
  Plug 'preservim/nerdcommenter'
  Plug 'adelarsq/vim-matchit' " Extend % operator
  Plug 'jiangmiao/auto-pairs'
  Plug 'jlanzarotta/bufexplorer'
  " Plug 'junegunn/fzf.vim' "para buscar en todos los archivos"
  " Plug 'airblade/vim-gitgutter'

  " COLOR THEMES ########################################
  Plug 'NLKNguyen/papercolor-theme'
  Plug 'rakr/vim-one'
  Plug 'whatyouhide/vim-gotham'
  Plug 'tomasiser/vim-code-dark'
  Plug 'ericbn/vim-solarized'
  " Plug 'joshdick/onedark.vim'
  Plug 'tomasr/molokai'
  Plug 'sickill/vim-monokai'
  " Plug 'chriskempson/base16-vim'
  Plug 'morhetz/gruvbox'
  Plug 'mhinz/vim-janah'
  " Plug 'jpo/vim-railscasts-theme'
  Plug 'kabbamine/yowish.vim'
  " Plug 'gosukiwi/vim-atom-dark'
  " Plug 'nanotech/jellybeans.vim'
  " Plug 'arcticicestudio/nord-vim'
  Plug 'hzchirs/vim-material'
  " Plug 'jaredgorski/SpaceCamp'
  Plug 'sonph/onehalf', { 'rtp': 'vim' }
  Plug 'dracula/vim', { 'as': 'dracula' }
  Plug 'ayu-theme/ayu-vim'
  " Plug 'ciaranm/inkpot'
  " Plug 'connorholyday/vim-snazzy'
  Plug 'sainnhe/sonokai'
  Plug 'nordtheme/vim'
  Plug 'notpratheek/vim-luna'
  Plug 'sheerun/vim-wombat-scheme'
  Plug 'baskerville/bubblegum'
  Plug 'dunstontc/vim-vscode-theme'
  " END COLOR THEMES ######################################

  "# LANGUAGE SUPPORT =========================================
  Plug 'StanAngeloff/php.vim'
  Plug 'posva/vim-vue'
  Plug 'othree/es.next.syntax.vim'
  Plug 'othree/javascript-libraries-syntax.vim'
  Plug 'plasticboy/vim-markdown'
  Plug 'elzr/vim-json'
  Plug 'vim-python/python-syntax'
  Plug 'digitaltoad/vim-pug'

  " Entorno de Javascript
  " ref: https://thoughtbot.com/blog/modern-typescript-and-react-development-in-vim
  Plug 'pangloss/vim-javascript'
  Plug 'leafgarland/typescript-vim'
  Plug 'MaxMEllon/vim-jsx-pretty'
  " Plug 'peitalin/vim-jsx-typescript'
  " Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
  " Plug 'jparise/vim-graphql'

  "# END LANGUAGE SUPPORT =====================================
  
  Plug 'junegunn/goyo.vim'
call plug#end()

" Install if bundle not exists
if empty(glob(s:bundle_dir))
  " autocmd VimEnter * PlugInstall | source $MYVIMRC
  exec "PlugInstall"
endif

" JavaHighlightsPerform
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

" Theme And Compatibility config ==================================

"base16 theme
" let base16colorspace=256  " Access colors present in 256 colorspace

set termguicolors     " enable true colors support
set background=dark
colorscheme codedark
" let g:airline_theme='material'
" Resolve problems with mingw shell and emulated shells
if !has('gui_running')
  set t_Co=256
endif

" Ayu theme
" https://github.com/ayu-theme/ayu-vim#installation
" 'light' | 'mirage' | 'dark'
let ayucolor='dark' 

" Autosave
" ref: https://github.com/vim-scripts/vim-auto-save
let g:auto_save=1
let g:auto_save_in_insert_mode = 0  " do not save while writing in insert mode
let g:auto_save_no_updatetime = 1

" Session
if !has('nvim')
  let g:session_autosave='yes'
  let g:session_autoload='yes'
  let g:session_default_name='.session'
else
  let g:session_default_name='.session'
  let g:session_autosave='no'
  let g:session_autoload='no'
endif
let g:session_directory='./'
let g:session_default_overwrite='yes'
set sessionoptions-=options,curdir,folds,buffers

" Airline
let g:airline#extensions#tabline#enabled = 1
" Check if it'snt a ssh conection and if have powerline script to enable powerline fonts
if strlen($SSH_TTY) == 0 && filereadable(expand('/usr/share/fonts/opentype/PowerlineSymbols.otf'))
  " let g:airline_powerline_fonts = 1
endif

" nerdcommenter config
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'

" Emmet config
let g:user_emmet_leader_key=','

" Wildignore
"set wildignore+=*/vendor/*,*/node_modules/*

" CtrlPConfig
let g:ctrlp_by_filename = 1
let g:ctrlp_show_hidden = 1
let g:ctrlp_custom_ignore = {
  \ 'dir': '\v[\/](vendor|node_modules|dist|venv|python-env|.git|.venv)$',
  \ 'file': '\v\.(swp)$'
  \ }
let g:ctrlp_working_path_mode = ''

" Do we have local vimrc?
if filereadable('.vimrc.local')
  " If so, go ahead and load it.
  source .vimrc.local
endif

" Visual Multi
let g:VM_mouse_mappings = 1
let g:VM_theme = 'iceblue'
let g:VM_maps = {}
let g:VM_maps["Undo"] = 'u'
let g:VM_maps["Redo"] = '<C-r>'


" ==========================================================
" COC CONFIG
" ==========================================================
source ~/.vim/coc-config.vim
if filereadable(expand('~/.vim/coc-extensions.vim'))
  source ~/.vim/coc-extensions.vim
endif
source ~/.vim/coc-snippets.vim

" =========================
" NVIM
" =========================
if has('nvim')
  set pyxversion=3
endif

" ### MACROS ######################################
let @r = "I$item->\<esc>lveyA = $request->input(\"\<esc>pA;\<esc>"
