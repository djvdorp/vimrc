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
            Plug 'wincent/command-t', { 'do': 'cd ~/.vim/plugged/command-t/ruby/command-t/ && ruby extconf.rb && make' } "Post install hooks
            Plug 'vim-airline/vim-airline'
            Plug 'vim-airline/vim-airline-themes'
            Plug 'scrooloose/syntastic'
            Plug 'Valloric/YouCompleteMe', { 'do' : '~/.vim/plugged/YouCompleteMe/install.py --gocode-completer' } "Post install hooks
        " General Vim end

        " Color Schemes
            Plug 'chriskempson/vim-tomorrow-theme'
            Plug 'altercation/vim-colors-solarized'
            Plug 'chriskempson/base16-vim'
        " Color Schemes end

        " Python
            "YouCompleteMe got me covered
            Plug 'jmcantrell/vim-virtualenv', { 'for': ['python', 'markdown'] }
        " Python end

        " Go
            Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries', 'for' : ['go', 'markdown'] } "Loads only when editing golang files
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
    let g:airline_enable_syntastic      = 1
    let g:airline_detect_modified       = 1
    let g:airline_detect_paste          = 1
    let g:aurline_enable_fugitive       = 1
    let g:airline_powerline_fonts       = 0
    let g:airline_left_sep              = ''
    let g:airline_right_sep             = ''
    let g:syntastic_check_on_open       = 1
    let g:syntastic_python_checkers     = ['flake8']
    let g:syntastic_javascript_checkers = ['jshint']

    " Activate Plug
    call plug#end()
    " Activate Plug end
" Vim Plug Configs end

" Set Vim defaults
    syntax on

    " No swap files next to original file
    set dir=~/.cache/vim-swap

    set expandtab
    set shiftwidth=4
    set tabstop=4
    set number
    set incsearch
    set t_Co=256
    set laststatus=2
    set cursorline
    set background=dark
    set mousehide
    set history=10000
    set showmatch
    set fileformat=unix
    set autoindent
    filetype plugin indent on

    colorscheme Tomorrow-Night-Eighties

    nnoremap <F2> :set nonumber!<CR>

    set pastetoggle=<F12>
    nnoremap <F12> :set invpaste paste?<CR>

    let mapleader=','
    map <leader>= <C-W>=
    map <leader>gd :Gdiff<CR>
    map <leader>gb :Gblame<CR>
    map <leader>gc :Gcommit<CR>
    map <leader>gs :Gstatus<CR>
    map <leader>gr :Gremove<CR>
    map <leader>gw :Gwrite<CR>
    map <leader>gn :GitGutterNextHunk<CR>
    map <leader>gp :GitGutterPrevHunk<CR>
    map <leader>w <C-W><C-O>
    map <leader>p :CtrlPBuffer<CR>
    map <leader>u :UndotreeToggle<CR>
    map <leader>e :SyntasticCheck<CR>:Errors<CR><C-W>j
    map <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
    map <leader>h <C-W>h
    map <leader>j <C-W>j
    map <leader>k <C-W>k
    map <leader>l <C-W>l

    if has('persistent_undo')
        set undofile
        set undodir=~/.cache/vim-undo
        set undolevels=1000
        set undoreload=10000
    endif

    highlight ExtraWhitespace ctermbg=red guibg=red ctermfg=white
    match ExtraWhitespace /\s\+$\| \+\ze\t\| [^\t]\zs\t\+\| ^\t*\zs \+\|\t/
" Set Vim defaults end
