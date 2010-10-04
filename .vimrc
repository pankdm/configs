set nu 				" Turn on numeration of lines
let python_highlight_all=1	" Python highlighting
syntax on 			" Syntax highlihting

set hlsearch 		" highlight searched pattern


set noerrorbells 		" Be quiet
set wildmenu 			" Enhanced command line completion mode
set autoread 			" Automatically re-read files changed outside of vim
set autowrite 			" Automatically save file before calling external commands
set display+=uhex,lastline 	" Display unprintable characters in hex as <xx>,
set showcmd 			" Show command on the last screen line
set showmode 			" Show current mode in the last screen line
set laststatus=2 		" All windows have a status line
set statusline=%<%f%h%m%r%=%b=0x%B\ \ %l,%c%V\ %P
set backspace=2 		" Allow backspacing over indent, EOL, start of insert
"set formatoptions+=r 		" Automatically continue comments after pressing <Enter>
set nobackup noswapfile viminfo="" " Don't create any kind of temporary files
set encoding=utf-8 		" Use utf-8 to represent text internally in vim
setglobal fileencoding=utf-8 	" Default file encoding for new files
set fileencodings=ucs-bom,utf-8,cp1251 " List of encodings to check when opening an existing file
set noexpandtab tabstop=4 sts=0 sw=4 " Default tab settings
set incsearch ignorecase smartcase hlsearch " Search options


"set nowrap 			" No wrapping by default
set wrap				" set wrapping
set textwidth=170



set noautoindent
set nocp
filetype plugin indent on

" feature to use systags as tag file for autocompletion
set tags+=~/.vim/systags



" tab settings for different filetypes
autocmd FileType c,cpp,java set sts=4 sw=4 et cindent
autocmd FileType asm set sts=4 sw=4 et autoindent
autocmd FileType python set sts=4 sw=4 et autoindent
autocmd FileType lua set sts=4 sw=4 et autoindent
autocmd FileType make set sts=0 sw=8 noet nowrap
autocmd FileType cmake set sts=4 sw=4 et nowrap

" Включаем "умные" отспупы ( например, автоотступ после {)
set smartindent

" F2 - быстрое сохранение
nmap <F2> :w<cr>
vmap <F2> <esc>:w<cr>i
imap <F2> <esc>:w<cr>i

" F3 - просмотр ошибок
nmap <F3> :copen<cr>
vmap <F3> <esc>:copen<cr>
imap <F3> <esc>:copen<cr>

" < & > - делаем отступы для блоков
vmap < <gv
vmap > >gv

" Выключаем ненавистный режим замены
imap >Ins> <Esc>i


