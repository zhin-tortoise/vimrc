" 基本
set number
set ambiwidth=double

" 検索
set ignorecase
set smartcase
set wrapscan
set incsearch
set hlsearch

" 表示
set noerrorbells
set showmatch matchtime=1
set laststatus=2
set display=lastline
set history=10000
set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set guioptions+=a
set showmatch
set smartindent
set noswapfile
set title
syntax on
set colorcolumn=80,100,120
highlight ColorColumn guibg=#202020 ctermbg=lightgray
augroup HighlightTrailingSpaces
  autocmd!
  autocmd VimEnter,WinEnter,ColorScheme * highlight TrailingSpaces term=underline guibg=Blue ctermbg=Blue
  autocmd VimEnter,WinEnter * match TrailingSpaces /\s\+$/
augroup END

" 折り畳み
:set foldmethod=indent

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
" }}}
