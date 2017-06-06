filetype off
syntax off
filetype plugin indent on

imap jk <esc>
vmap ht <esc>

noremap <C-H> <C-W>h<C-W>_
noremap <C-L> <C-W>l<C-W>_
noremap <C-J> <C-W>j<C-W>_
noremap <C-K> <C-W>k<C-W>_


set tabstop=2
set shiftwidth=2
set expandtab

set hlsearch

set smarttab
set number

highlight LineNr ctermfg=brown ctermbg=white

highlight Normal ctermfg=black ctermbg=white

set shell=/bin/bash\ -i

