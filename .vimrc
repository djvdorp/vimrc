call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-abolish'
Plug 'wincent/command-t'
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/syntastic'
Plug 'Valloric/YouCompleteMe', { 'do' : '~/.vim/plugged/YouCompleteMe/install.py --all' } "Post install hooks
Plug 'fatih/vim-go', { 'for' : ['go', 'markdown'] } "Loads only when editing golang files

" Add plugins to &runtimepath
call plug#end()
