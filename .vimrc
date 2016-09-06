" Vim config

" Plug
    " Setting up Plug - A minimalist Vim plugin manager
        if empty(glob('~/.vim/autoload/plug.vim'))
            silent !curl -sfLo ~/.vim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
            autocmd VimEnter * PlugInstall | source ~/.vimrc
        endif
        set nocompatible              " be iMproved, required
        call plug#begin('~/.vim/plugged')
    " Setting up Plug end
        " General Vim
        Plug 'tpope/vim-sensible'
        Plug 'tpope/vim-fugitive'
        Plug 'airblade/vim-gitgutter'
        Plug 'tpope/vim-surround'
        Plug 'tpope/vim-abolish'
        Plug 'wincent/command-t', { 'do': 'cd ruby/command-t && ruby extconf.rb && make' } "Post install hooks
        Plug 'vim-airline/vim-airline'
        Plug 'scrooloose/syntastic'
        Plug 'Valloric/YouCompleteMe', { 'do' : '~/.vim/plugged/YouCompleteMe/install.py --gocode-completer' } "Post install hooks
        Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries', 'for' : ['go', 'markdown'] } "Loads only when editing golang files
        " General Vim end
    " Plugs end

" Plug end

" Vim Plug Configs
    call plug#end()
" Vim Plug Configs end
