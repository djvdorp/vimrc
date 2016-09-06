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
            Plug 'vim-airline/vim-airline-themes'
            Plug 'scrooloose/syntastic'
            Plug 'Valloric/YouCompleteMe', { 'do' : '~/.vim/plugged/YouCompleteMe/install.py --gocode-completer' } "Post install hooks
        " General Vim end

        " Color Schemes
            Plug 'altercation/vim-colors-solarized'
        " Color Schemes end

        " Python
            "YouCompleteMe got me covered
            Plug 'jmcantrell/vim-virtualenv', { 'for': ['python', 'markdown'] }
        " Python end

        " Go
            Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries', 'for' : ['go', 'markdown'] } "Loads only when editing golang files
            Plug 'nsf/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh', 'for' : ['go', 'markdown'] }
        " Go end

        " Misc
            Plug 'Glench/Vim-Jinja2-Syntax', { 'for': ['jinja', 'jinja2']}
            Plug 'vim-scripts/nginx.vim', { 'for': ['nginx', 'markdown'] }
            Plug 'tmux-plugins/vim-tmux', { 'for': ['tmux', 'markdown'] }
            Plug 'pearofducks/ansible-vim', { 'for' : ['yaml', 'ansible', 'markdown'] }
            Plug 'docker/docker' , {'rtp': 'contrib/syntax/vim/'}
            Plug 'junkblocker/patchreview-vim', { 'on': ['CodeReview']}
            Plug 'codegram/vim-codereview', { 'on': ['CodeReview']}
        " Misc end
    " Plugs end

" Plug end

" Vim Plug Configs
    let g:airline_powerline_fonts   = 0
    let g:airline_left_sep          = ''
    let g:airline_right_sep         = ''
    " Activate Plug
    call plug#end()
    " Activate Plug end
" Vim Plug Configs end

" Set Vim defaults
    set nobackup
    syntax enable
    set background=dark
" Set Vim defaults end
