set ofu=syntaxcomplete#Complete
set number
let mapleader = ","
set history=1000
set ignorecase
set smartcase
set title
set ruler
set number


set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

" Allow switching edited buffers without saving
set hidden

" Intuitive backspacing in insert mode
 set backspace=indent,eol,start
  
" File-type highlighting and configuration.
" Run :filetype (without args) to see what you may have
" to turn on yourself, or just set them all to be sure.
syntax on
filetype on
filetype plugin on
filetype indent on
   
" Highlight search terms...
set hlsearch
set incsearch " ...dynamically as they are typed.
set visualbell

autocmd BufRead *.qcf set filetype=lisp
autocmd BufRead qpx.inc set filetype=make
autocmd BufRead letter* set filetype=mail
autocmd Filetype mail set fo -=l autoindent spell

" ITA indenting style
autocmd Filetype c,cpp,h set tabstop=4 softtabstop=4 shiftwidth=4 expandtab
" JSH indenting style
autocmd Filetype c,cpp,h set tabstop=8 softtabstop=4 shiftwidth=4 noexpandtab
" Wimba indenting style, sort-of
autocmd Filetype c,cpp,h set tabstop=2 softtabstop=2 shiftwidth=2 expandtab
" Viewglob
autocmd Filetype c,cpp,h,sh set cindent autoindent

 autocmd Filetype sh set ts=4 shiftwidth=2 expandtab
 autocmd Filetype lisp,ruby,xml,html set ts=8 shiftwidth=2 expandtab
 autocmd Filetype python set ts=4 shiftwidth=4 expandtab
 autocmd Filetype xml,xslt,diff,ruby color desert
 autocmd Filetype xml,xslt,diff,ruby set expandtab
 autocmd BufReadPre viper,.viper set filetype=lisp

 autocmd BufRead ~/stellar/* set lbr formatoptions=l

" a.vim
 nmap <silent> <Leader>h :A<CR>

" Indent XML readably
function! DoPrettyXML()
 1,$!xmllint --format --recover -
endfunction
command! PrettyXML call DoPrettyXML()
" Disable login in javasctip intent plugin
let g:js_indent_log=0

set background=dark
colorscheme inkpot

set wildmenu
set showcmd
set cursorline
" set foldmethod=indent
set spellfile=~/.vim/dict.add

" jquery syntax
au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery
au BufRead,BufNewFile *.handlebars,*.hbs set ft=handlebars

map <silent> <leader>ff :% !python ~/js-beautify/python/js-beautify -i -j -d
imap hh <Esc>
" map + - a cambiar tamaño ventana
if bufwinnr(1)
  map + <C-W>+
  map - <C-W>-
endif
highlight clear SignColumn
