filetype off
syntax off
filetype plugin indent on

imap jk <esc>
vmap ht <esc>

noremap <C-H> <C-W>h<C-W>_
noremap <C-L> <C-W>l<C-W>_


set tabstop=8
set softtabstop=0
set expandtab
set shiftwidth=4

set hlsearch

set smarttab
set number

highlight LineNr ctermfg=brown ctermbg=white

highlight Normal ctermfg=black ctermbg=white

set shell=/bin/bash\ -i
