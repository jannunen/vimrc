" My .vimrc
" Used mainly for PHP, HTML and Javascript work. 
"
:source $VIMRUNTIME/macros/matchit.vim

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
NeoBundle 'Valloric/YouCompleteMe'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'vim-airline/vim-airline'
NeoBundle 'vim-airline/vim-airline-themes'
NeoBundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
NeoBundle 'nishigori/vim-php-dictionary'
NeoBundle 'SirVer/ultisnips'
NeoBundle 'ervandew/screen'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'tpope/vim-surround'
NeoBundle 'valloric/MatchTagAlways'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'mtth/scratch.vim'
"NeoBundle 'takeiteasy/tabline-powerline.vim'
" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }
NeoBundle 'corntrace/bufexplorer'
NeoBundle 'ctrlpvim/ctrlp.vim'
"NeoBundle 'tmhedberg/matchit'
"NeoBundle 'majutsushi/tagbar'

" Required:
call neobundle#end()


" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------

" Airline configuration -----------------------------
"
"let g:airline_theme='molokai'
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

" Enable powerline fonts
let g:airline_powerline_fonts = 1

" Airline configuration ends ---------------------------
" PHP mode settings and search settings
set ignorecase
set smartcase
set incsearch
set so=999 

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
" :iabbrev <// </<C-X><C-O>

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_tpl_tidy_exec = 'tidy5'
let g:syntastic_html_tidy_exec = 'tidy5'
let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']
let g:syntastic_php_phpcs_args='--tab-width=0'

" YoucompleteMe
let g:ycm_key_list_select_completion=[]
let g:ycm_key_list_previous_completion=[]

" Tabstops
set expandtab
set shiftwidth=2
set softtabstop=2
filetype plugin indent on


" Smarty file type
au BufRead,BufNewFile *.tpl set filetype=html

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" OPEN FILES IN DIRECTORY OF CURRENT FILE
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader=","

cnoremap <expr> %% expand('%:h').'/'
nnoremap <leader>. :CtrlPTag<cr>
nnoremap <silent> <Leader>b :TagbarToggle<CR>
map <leader>e :edit %%
map <leader>v :view %%

set t_Co=256
syntax on

" MatchTagsAlways
let g:mta_use_matchparen_group = 1

" Add row numbering
set number

" Set vim to make no swapfiles.
set noswapfile
