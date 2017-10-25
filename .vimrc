" Use Vim settings rather than Vi settings - must be first!
set nocompatible


" General config
set number
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=1000
set showmode                    "Show current mode at bottom
set showcmd                     "Showw incomplete commands at bottom
set gcr=a:blinkon0              "Disable cursor blink
set visualbell                  "No sounds
set autoread                    "Reload files changed outside of vim
set hidden                      "Buffers exist in background without being in a windoww
set background=dark
colorscheme slate
syntax on                       "Turn on syntax highlighting

" Indentation
set shiftwidth=2 softtabstop=2 tabstop=2
set autoindent smartindent smarttab expandtab
set nowrap                      "Dont wrap lines
set linebreak                   "Wrap lines at convenient points
set list listchars=tab:\ \ ,trail:. "Display tabs and trailing spaces


" Disable swap files
set noswapfile nobackup nowb


" Persistent undo - Keep undo history across sessions by storing in file
if has('persistent_undo') && !isdirectory(expand('~').'/.vim/backups')
    silent !mkdir/.vim/backups > /dev/null 2>&1
    set undodir=~/.vim/backups
    set undofile
endif


" Search
set incsearch                   "Find the next match as search is typed
set hlsearch                    "Highlight searches
set ignorecase smartcase        "Ignore case, unless a capital is typed


" Mouse
set mouse=a


" Scrolling
set scrolloff=8                 "Start scrolling 8 lines away from margins
set sidescrolloff=15
set sidescroll=1


" Shortcuts
"Tab switches between split panes
nnoremap <Tab> <C-W>w
" Use jk as Escape
imap jk <Esc>


" VimPlug Plugins
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-unimpaired'
Plug 'scrooloose/syntastic'
Plug 'sheerun/vim-polyglot'
" File browsing
Plug 'scrooloose/nerdtree'
" Status line
Plug 'bling/vim-airline'
Plug 'edkolev/tmuxline.vim'
" Version control
Plug 'tpope/vim-fugitive'
Plug 'vim-scripts/vcscommand.vim'
Plug 'airblade/vim-gitgutter'
Plug 'godlygeek/tabular'
Plug 'mileszs/ack.vim'
Plug 'motus/pig.vim'
" Languages
Plug 'fatih/vim-go'
Plug 'klen/python-mode'
Plug 'othree/html5.vim'
Plug 'Chiel92/vim-autoformat'
Plug 'leafgarland/typescript-vim'
Plug 'Quramy/tsuquyomi'
call plug#end()


" vim-go
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"
autocmd BufRead *.go set nu


" python
autocmd BufRead *.py set tabstop=4 shiftwidth=4	softtabstop=4 nu
let g:pymode_indent = 1
let g:pymode_lint = 0
let g:pymode_folding = 0
