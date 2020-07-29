" syntax off
filetype plugin indent on

set shell=/bin/bash


" -------------------- NAVIGATION --------------------
"
" leave insert mode
imap jk <esc>
" faster navigation through file
nmap 9j 18j
nmap 9k 18k
vmap 9j 18j
vmap 9k 18k
" move through tabs
noremap <C-H> <C-W>h
noremap <C-L> <C-W>l
noremap <C-J> <C-W>j
noremap <C-K> <C-W>k


" -------------------- SPACES/TABS --------------------
"
" 2 spaces for tabs
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set smarttab


" -------------------- COLOURS/APPEARANCE --------------------
"
" set colorcolumn=120
hi ColorColumn ctermbg=lightgray
hi Search cterm=NONE ctermfg=235 ctermbg=48
hi Visual cterm=NONE ctermfg=235 ctermbg=49
set ruler
set guifont=Ubuntu\ Mono\ 11
set hlsearch
set number
" highlight column as grey
" hi LineNr term=NONE
set t_Co=256
set background=light
"
hi SpellBad ctermfg=235 ctermbg=167
hi SpellCap ctermfg=235 ctermbg=167


" -------------------- MACROS --------------------
"
" allow backspace at newline for use in macro scripting
set backspace=indent,eol,start
" macro to make javascript comment blocks quickly at 2 spaces in.
nmap <C-C> i  /*   *   */


" set runtimepath^=~/.vim/c.vim
" set runtimepath^=~/.vim/cpp.vim
" source ~/.vim/abstract.vim


" -------------------- VIM-PLUG --------------------
"
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/vim-plug-plugins')

" Nice JSON formatting, like hiding the quotes around string keys and values.
Plug 'elzr/vim-json'

" css/scss/sass linting
Plug 'stylelint/stylelint'

" Javascript indentation and highlighting (not linting AFAICT)
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'

" Linting
Plug 'w0rp/ale'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'branch': 'release/1.x',
  \ 'for': [
    \ 'javascript',
    \ 'css',
    \ 'json',
    \ 'graphql',
    \ 'markdown',
    \ 'python',
    \ 'html',
    \ 'swift' ] }

call plug#end()


" -------------------- ALE --------------------
"
let b:ale_fixers = {'javascript': ['prettier', 'eslint'], 'json': ['prettier']}
let b:ale_linters = {'javascript': ['prettier', 'eslint'], 'json': ['prettier']}
let g:ale_fix_on_save = 1
