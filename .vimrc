" filetype off
" syntax off
filetype plugin indent on


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
noremap <C-H> <C-W>h<C-W>_
noremap <C-L> <C-W>l<C-W>_
noremap <C-J> <C-W>j<C-W>_
noremap <C-K> <C-W>k<C-W>_


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
set colorcolumn=120
hi ColorColumn ctermbg=lightgray
hi Search cterm=NONE ctermfg=NONE ctermbg=48
hi Visual cterm=NONE ctermfg=NONE ctermbg=49
set ruler
set guifont=Ubuntu\ Mono\ 11
set hlsearch
set number
" highlight column as grey
" hi LineNr term=NONE
" set t_Co=0


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

Plug 'pangloss/vim-javascript'
Plug 'elzr/vim-json'
Plug 'mxw/vim-jsx'
Plug 'w0rp/ale'
Plug 'skywind3000/asyncrun.vim'
Plug 'elixir-editors/vim-elixir'
Plug 'tell-k/vim-autopep8'

call plug#end()

" -------------------- ALE --------------------
"
" Linter configuration
let g:ale_linters = {
\ 'javascript': ['eslint'],
\ 'elixir': ['credo'],
\ 'python': ['Autopep8'],
\}



" -------------------- ESLINT HACK --------------------
"
autocmd BufWritePost *.js AsyncRun -post=checktime ~/covault/frontend-app/node_modules/.bin/eslint --fix %
autocmd BufWritePost *.jsx AsyncRun -post=checktime ~/covault/frontend-app/node_modules/.bin/eslint --fix %

set shell=/bin/bash
