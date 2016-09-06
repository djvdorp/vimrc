call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-abolish'
Plug 'wincent/command-t', { 'do': 'cd ruby/command-t && ruby extconf.rb && make' }
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/syntastic'
Plug 'Valloric/YouCompleteMe', { 'do' : '~/.vim/plugged/YouCompleteMe/install.py --gocode-completer' } "Post install hooks
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries', 'for' : ['go', 'markdown'] } "Loads only when editing golang files

" Add plugins to &runtimepath
call plug#end()
