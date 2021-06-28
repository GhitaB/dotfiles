syntax on

set belloff=all
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
Plug 'airblade/vim-gitgutter'
Plug 'dense-analysis/ale'
Plug 'preservim/nerdtree'
Plug 'flwyd/nerdtree-harvest'
Plug 'tomtom/tcomment_vim'
Plug 'ap/vim-buftabline'
Plug 'moll/vim-bbye'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'git@github.com:kien/ctrlp.vim.git'
" Plug 'ycm-core/YouCompleteMe'
Plug 'vim-airline/vim-airline'

call plug#end()

colorscheme gruvbox
set background=dark

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
let NERDTreeShowHidden=1

set hidden
nnoremap <C-right> :bnext<CR>
nnoremap <C-left> :bprev<CR>

:nnoremap Q :Bdelete<CR>

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
" pip install flake8

" CREDITS:
" https://youtu.be/n9k9scbTuvQ
" https://www.reddit.com/r/vim/comments/4hoa6e/what_do_you_use_for_your_listchars/
