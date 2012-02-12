set nocompatible	" no compatible with VI

set nu 				" Turn on numeration of lines
let python_highlight_all=1	" Python highlighting
syntax on 			" Syntax highlihting
set hlsearch 		" highlight searched pattern

set vb t_vb=			" Be quiet for gvim
set noerrorbells 		" Be quiet

set wildmenu 			" Enhanced command line completion mode
set autoread 			" Automatically re-read files changed outside of vim
set autowrite 			" Automatically save file before calling external commands
set display+=uhex,lastline 	" Display unprintable characters in hex as <xx>,
set showmode 			" Show current mode in the last screen line
set showcmd 			" Show command on the last screen line
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
set textwidth=170		" minimum line width to wrap it


set noautoindent
filetype plugin indent on

" feature to use systags as tag file for autocompletion
set tags+=~/.vim/tags/python.tags
set tags+=tags,../tags,../../tags,../../../tags,../../../../tags
set path+=.,..,../..,../../..,../../../..

" make C-Space for autocompletion
inoremap <C-Space> <C-x><C-o>



" // The switch of the Source Explorer
nmap <F7> :SrcExplToggle<CR>

" // Set the height of Source Explorer window
let g:SrcExpl_winHeight = 8

" // Set 100 ms for refreshing the Source Explorer
let g:SrcExpl_refreshTime = 100

" // Set "Enter" key to jump into the exact definition context
" let g:SrcExpl_jumpKey = "<ENTER>"

" // Set "Space" key for back from the definition context
let g:SrcExpl_gobackKey = "<SPACE>"

" // In order to Avoid conflicts, the Source Explorer should know what plugins
" // are using buffers. And you need add their bufname into the list below
" // according to the command ":buffers!"
let g:SrcExpl_pluginList = [
        \ "__Tag_List__",
        \ "_NERD_tree_",
        \ "Source_Explorer"
    \ ]

" // Enable/Disable the local definition searching, and note that this is not
" // guaranteed to work, the Source Explorer doesn't check the syntax for now.
" // It only searches for a match with the keyword according to command 'gd'
let g:SrcExpl_searchLocalDef = 1

" // Do not let the Source Explorer update the tags file when opening
let g:SrcExpl_isUpdateTags = 0

" // Use 'Exuberant Ctags' with '--sort=foldcase -R .' or '-L cscope.files' to
" //  create/update a tags file
let g:SrcExpl_updateTagsCmd = "ctags --sort=foldcase -R ."

" // Set "<F12>" key for updating the tags file artificially
let g:SrcExpl_updateTagsKey = "<F12>" 


" Open and close all the three plugins on the same time
nmap <F8>   :TrinityToggleAll<CR>
"
" " Open and close the srcexpl.vim separately
nmap <F9>   :TrinityToggleSourceExplorer<CR>
"
" " Open and close the taglist.vim separately
nmap <F10>  :TrinityToggleTagList<CR>
"
" " Open and close the NERD_tree.vim separately
nmap <F11>  :TrinityToggleNERDTree<CR> 


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


" F8 - try using Taglist
nnoremap <silent> <F8> :TlistToggle<CR>

" locals for minibufexplorer.vim
" let g:miniBufExplMapWindowNavVim = 1
" let g:miniBufExplMapWindowNavArrows = 1
" let g:miniBufExplMapCTabSwitchBufs = 1
" let g:miniBufExplModSelTarget = 1

" Buffer navigation (Ctrl+Tab / Ctrl+Shift+Tab)
" sadly, but works only in gvim
"nnoremap <C-Tab> :bnext<CR>

nnoremap <F3> :bprevious<CR>
nnoremap <F4> :bnext<CR>
"nnoremap <C-S-Tab> :bprevious<CR>


" < & > - делаем отступы для блоков
vmap < <gv
vmap > >gv

" Выключаем ненавистный режим замены
imap <Ins> <Esc>i


