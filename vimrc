" My .vimrc
" Used mainly for PHP, HTML and Javascript work. 
"
:source $VIMRUNTIME/macros/matchit.vim

"let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8
set cursorline
execute pathogen#infect()
" Taglist
filetype plugin on
set omnifunc=syntaxcomplete#Complete
runtime macros/matchit.vim
autocmd FileType php set keywordprg=pman

 set undofile " Maintain undo history between sessions
 set undodir=~/.vim/undodir

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
NeoBundle 'leafOfTree/vim-vue-plugin'
NeoBundle 'jvanja/vim-bootstrap4-snippets'
NeoBundle 'morhetz/gruvbox'
NeoBundle 'NLKNguyen/papercolor-theme'


NeoBundle 'tpope/vim-fugitive'
NeoBundle 'posva/vim-vue'
NeoBundle 'tpope/vim-repeat'
NeoBundle 'Valloric/YouCompleteMe'
NeoBundle 'zxqfl/tabnine-vim'
NeoBundle 'posva/vim-vue'
NeoBundle 'tpope/vim-fugitive'
"NeoBundle 'Valloric/YouCompleteMe'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'vim-airline/vim-airline'
NeoBundle 'vim-airline/vim-airline-themes'
"NeoBundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
NeoBundle 'nishigori/vim-php-dictionary'
NeoBundle 'SirVer/ultisnips'
NeoBundle 'ervandew/screen'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'tpope/vim-surround'
NeoBundle 'valloric/MatchTagAlways'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'craigemery/vim-autotag'
NeoBundle 'scrooloose/nerdtree.git'
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }
NeoBundle 'corntrace/bufexplorer'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'blueyed/smarty.vim'
NeoBundle 'algotech/ultisnips-php'
NeoBundle 'tobyS/vmustache'
NeoBundle 'pangloss/vim-javascript'  
NeoBundle 'maxmellon/vim-jsx-pretty'
NeoBundle 'maksimr/vim-jsbeautify'
"NeoBundle 'mscrooloose/nerdcommenter'

" Required:
call neobundle#end()



" Configure JS Beautify
autocmd FileType javascript vnoremap <buffer>  <c-f> :call RangeJsBeautify()<cr>
autocmd FileType json vnoremap <buffer> <c-f> :call RangeJsonBeautify()<cr>
autocmd FileType jsx vnoremap <buffer> <c-f> :call RangeJsxBeautify()<cr>
autocmd FileType html vnoremap <buffer> <c-f> :call RangeHtmlBeautify()<cr>
autocmd FileType css vnoremap <buffer> <c-f> :call RangeCSSBeautify()<cr>

"Configure pdv template dir
let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"
"nnoremap <buffer> <C-i> :call pdv#DocumentWithSnip()<CR>

set wildignore+=*platforms/*,*/tmp/*,*/node_modules/*,*/templates_c/*,*/bower_components/*,*/vendor/*,*.min.js*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'SOME_BAD_SYMBOLIC_LINKS',
  \ }
let g:ctrlp_map = '<leader>p'
let g:ctrlp_cmd = 'CtrlPMRU'
nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l



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
"let g:airline_powerline_fonts = 1

" Airline configuration ends ---------------------------
" PHP mode settings and search settings
set ignorecase
set smartcase
set incsearch
set so=999 


" This is for matching those chars normally vim does not match
for char in [ '_', '.', ':', ',', ';', '<bar>', '/', '<bslash>', '#', '*', '+', '%' ]
    execute 'xnoremap i' . char . ' :<C-u>normal! T' . char . 'vt' . char . '<CR>'
    execute 'onoremap i' . char . ' :normal vi' . char . '<CR>'
    execute 'xnoremap a' . char . ' :<C-u>normal! F' . char . 'vf' . char . '<CR>'
    execute 'onoremap a' . char . ' :normal va' . char . '<CR>'
endfor

" Ultisnippet
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
 
"let g:UltiSnipsSnippetsDir        = '~/.vim/mysnippets/'
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
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

" Configure scrolling inactive window up and down
" ,cd changes to file directory
nmap ,cd :cd %:p:h<CR>:pwd<CR>
nmap ,d <C-W>W<C-D><C-W>W
nmap ,u <C-W>W<C-U><C-W>W
nmap <a-j> <c-w>w<c-e><c-w>w
nmap <a-k> <c-w>w<c-y><c-w>w

map ,e :e <C-R>=expand("%:p:h") . "/" <CR>
map ,t :tabe <C-R>=expand("%:p:h") . "/" <CR>
map ,s :split <C-R>=expand("%:p:h") . "/" <CR>

" Add session saving/loading
"Quick write session with F2
map <F2> :mksession! ~/.vim_session <cr> 
"And load session with F3
map <F3> :source ~/.vim_session <cr>

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

" ,cd changes to file directory
nnoremap ,cd :cd %:p:h<CR>:pwd<CR>

set wildmode=longest,list,full
set wildmenu

" Set numbering to hybrid
:set number relativenumber

:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)
 

"colo seoul256
set background=dark
colorscheme PaperColor
