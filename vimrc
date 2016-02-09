" My .vimrc
" Used mainly for PHP, HTML and Javascript work. 
"
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8
execute pathogen#infect()
" Taglist
filetype plugin on
set omnifunc=syntaxcomplete#Complete

"NeoBundle Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath^=/home/jannunen/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('/home/jannunen/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'vim-airline/vim-airline'
NeoBundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
NeoBundle 'nishigori/vim-php-dictionary'
NeoBundle 'SirVer/ultisnips'

" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------

" Airline configuration -----------------------------
"
let g:airline_theme='molokai'
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
"let g:airline#extensions#tabline#fnamemod = ':t'
"let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

" Enable powerline fonts
let g:airline_powerline_fonts = 1

" Airline configuration ends ---------------------------
" PHP mode settings
set ignorecase
set smartcase
set incsearch

" Ultisnippet
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
 
" let g:UltiSnipsSnippetsDir        = '~/.vim/mysnippets/'
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
" let g:UltiSnipsSnippetDirectories=["UltiSnips", "snips"]
let g:UltiSnipsNoPythonWarning = 1

" settings for indent lines ==============================================
let g:indentLine_color_gui='#31373a'
let g:indentLine_char='│'
let g:indentLine_indentLevel=7
let g:indentLine_noConcealCursor=1

" Configure scrolling inactive window up and down
:nmap ,d <C-W>W<C-D><C-W>W
:nmap ,u <C-W>W<C-U><C-W>W

" Add tag closing
:iabbrev <// </<C-X><C-O>

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_html_tidy_exec = 'tidy5'
let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']
let g:syntastic_php_phpcs_args='--tab-width=0'

" YoucompleteMe
let g:ycm_key_list_select_completion=[]
let g:ycm_key_list_previous_completion=[]

" Tabstops
:set softtabstop=4 shiftwidth=4 expandtab
