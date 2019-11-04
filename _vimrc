" vi互換
set nocompatible

" 基本
set ambiwidth=double
set number
syntax on

" エンコード
set encoding=utf-8

" 検索
set hlsearch
set ignorecase
set incsearch
set wrapscan
set smartcase

" 表示
set colorcolumn=80,100,120
set display=lastline
set guioptions+=a
set history=10000
set laststatus=2
set noerrorbells
set noswapfile
set ruler
set showcmd
set showmatch
set showmatch matchtime=1
set smartindent
set tabstop=2
set title
highlight ColorColumn guibg=#202020 ctermbg=lightgray
augroup HighlightTrailingSpaces
  autocmd!
  autocmd VimEnter,WinEnter,ColorScheme * highlight TrailingSpaces term=underline guibg=Blue ctermbg=Blue
  autocmd VimEnter,WinEnter * match TrailingSpaces /\s\+$/
augroup END

" 折り畳み
set foldmethod=indent
set foldlevel=100
set foldcolumn=5

" 空白文字
set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=4

" カラースキーマ
" set termguicolors
" set background=light
set background=dark
" let g:solarized_termcolors=256
" let ayucolor="light"
" let ayucolor="mirage"
" let ayucolor="dark"
colorscheme gruvbox
highlight Normal ctermbg=none
highlight NonText ctermbg=none
highlight LineNr ctermbg=none
highlight Folded ctermbg=none
highlight EndOfBuffer ctermbg=none

" プラグイン
" Vundlw
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

call vundle#end()
filetype plugin indent on

" マークダウン
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
""" markdown {{{
  let g:vim_markdown_folding_disabled=1
  let g:previm_enable_realtime = 1
"s }}}
