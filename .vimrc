set term=xterm-256color
syntax on
colorscheme dark-ruby

" Colors
hi Directory ctermfg=3 ctermbg=4 

" Options.

filetype plugin indent on
set autoindent
set mouse=a		" I don't like the mouse in VIM
set backup		" use a backup file (also see writebackup)
set backupdir=~/.vim/backups " save backups to this directory
set dir=~/tmp 		" directory for swap files
set ruler		" Show the line position at the bottom of the window
set scrolloff=1		" Minimum lines between cursor and window edge
set shiftwidth=2	" Indent by 4 columns (for C functions, etc).
set showcmd		" Show partially typed commands
set showmatch		" Show parentheses matching
set smartindent		" Indent settings (really only the cindent matters)
set textwidth=80	" Maximum line width
set viminfo='0,\"100,	" Stay at the start of a file when opening it
set writebackup		" Write temporary backup files in case we crash
set number

let g:rubycomplete_rails = 1

"ruby
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
"improve autocomplete menu color
highlight Pmenu ctermbg=238 gui=bold

"auto-open NERDtree
au VimEnter *  NERDTree
