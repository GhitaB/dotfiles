syntax on

set belloff=all
set noerrorbells
set expandtab
set tabstop=2   " not liking big tabs
set shiftwidth=2
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set hlsearch        " highlight search matches

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
Plug 'ap/vim-css-color'

" Show indent guides
Plug 'Yggdroot/indentLine'
let g:indentLine_fileTypeExclude = ['json', 'markdown', 'rst']

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

let g:indentLine_char = '│'
let g:indentLine_color_term = 239

" strips trailing whitespace at the end of files. this
" is called on buffer write in the autogroup above.
function! <SID>StripTrailingWhitespaces()
  " save last search & cursor position
  let _s=@/
  let l = line(".")
  let c = col(".")
  %s/\s\+$//e
  let @/=_s
  call cursor(l, c)
endfunction

augroup configgroup
  autocmd!
  autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

  autocmd FileType python setlocal commentstring=#\ %s
  autocmd Filetype python setlocal tabstop=4 shiftwidth=4 expandtab colorcolumn=89
augroup END

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
" https://github.com/tiberiuichim/yadm-dotfiles/blob/master/.config/nvim/init.vim
