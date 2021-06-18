syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

" https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
" Plug 'jremmen/vim-ripgrep'
" Plug 'tpope/vim-fugitive'
" Plug 'leafgarland/typescript-vim'
" Plug 'vim-utils/vim-man'
" Plug 'lyuts/vim-rtags'
" Plug 'git@github.com:kien/ctrlp.vim.git'
" Plug 'git@github.com:Valloric/YouCompleteMe.git'
" Plug 'mbbill/undotree'

call plug#end()

colorscheme gruvbox
set background=dark

"set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣
set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·
set list

" INSTALL:
" mkdir ~/.vim/undodir   in case it doen't exist
" :source %              when you edit this file
" :PlugInstall           to install the plugins
" cd ~/.vim/plugged/YouCompleteMe
" sudo apt-get install -y cmake
" ./install.py --ts-completer

" CREDITS:
" https://youtu.be/n9k9scbTuvQ
" https://www.reddit.com/r/vim/comments/4hoa6e/what_do_you_use_for_your_listchars/
