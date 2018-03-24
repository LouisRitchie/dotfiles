" filetype off
" syntax off
" filetype plugin indent on

imap jk <esc>
vmap ht <esc>
nmap 9j 18j
nmap 9k 18k
vmap 9j 18j
vmap 9k 18k

noremap <C-H> <C-W>h<C-W>_
noremap <C-L> <C-W>l<C-W>_
noremap <C-J> <C-W>j<C-W>_
noremap <C-K> <C-W>k<C-W>_

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

set colorcolumn=110
highlight ColorColumn ctermbg=darkgray


set hlsearch

set smarttab
set number

" set t_Co=0
set backspace=indent,eol,start

set shell=/bin/bash\ -i

set ruler

" hi LineNr term=NONE

set guifont=Ubuntu\ Mono\ 11

set runtimepath^=~/.vim/c.vim
set runtimepath^=~/.vim/cpp.vim

" source ~/.vim/abstract.vim

" macro to make javascript comment blocks quickly at 2 spaces in.
nmap <C-C> i  /*   *   */


