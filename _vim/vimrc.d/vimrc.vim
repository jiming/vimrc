" = Origin Environment =

" All system-wide defaults are set in $VIMRUNTIME/debian.vim (usually just
" /usr/share/vim/vimcurrent/debian.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vim/vimrc), since debian.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing debian.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the
" following enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
  filetype plugin indent on
endif

set showcmd		" Show (partial) command in status line.
set showmode	" Show '-insert-' Mode at the lower left.
"set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden         " Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)
set mouse=nv		" Enable mouse usage (Normal + Visual modes)

" = Cutsom Main Environment =

set fileencodings=utf8
set hlsearch		" (hls) Hightlight in Search
set ignorecase		" (ic) Case sensitive searches
"set nobackup
set autochdir		" auto cd curent dir.

" - move swap and backup files from your working directory
set backupdir=~/tmp
set directory=~/tmp	

" - indent.
set autoindent		" (ai)
"set expandtab		"Set Tab to Space
set tabstop=4
set softtabstop=4	"Set Soft tab stop
set shiftwidth=4	"Set Soft tab width
filetype indent on

" - Wild Mode
"set wildmode=full,list
"set wildmode=list:full
set wildmode=longest,list	" 類似 bash 的自動補齊，有相同開頭才補，而不是自動填上第一個完整名稱。
set wildignore+=*.o,*.a,*.so,*.obj,*.exe,*.lib,*.ncb,*.opt,*.plg,.svn,.git
set wildignore+=*.png,*.jpg,*.gif,*.svg,*.xpm
" set wildoptions
"set  winaltkeys=no

" - Do not redraw while running macros (much faster).
set lazyredraw

" - Don't make noise
"set noerrorbells

" - Set Folding 
"set foldenable
"set foldmethod=indent
"set foldcolumn=3

"  - auto folds.
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview

" -----------------------------------
"  Author : Chu-siang Lai
"  E-mail : jonny (at) ubuntu-tw.org
"  Blog : http://jonny.ubuntu-tw.net
" -----------------------------------