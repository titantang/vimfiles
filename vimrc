" global settings {{{
syntax on
set nocompatible
set backspace=2
let mapleader=","
set autoindent
set smartindent
set smarttab
set expandtab
set hidden
set number
set visualbell t_vb=					" disable error bell sound
set mouse=a
filetype off
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*        " Linux/MacOSX
" }}}

" Bundles {{{
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

Bundle 'mileszs/ack.vim'
Bundle 'vim-coffee-script'
Bundle 'kien/ctrlp.vim'
Bundle 'delimitMate.vim'
Bundle 'othree/html5.vim'
Bundle 'matchit.zip'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'ervandew/supertab'
Bundle 'godlygeek/tabular'
Bundle 'taglist.vim'
Bundle 'altercation/vim-colors-solarized'
Bundle 'Lokaltog/vim-powerline'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-repeat'
"Bundle 'garbas/snipmate.vim'
Bundle 'SirVer/ultisnips'
Bundle 'honza/vim-snippets'
Bundle 'tpope/vim-surround'
Bundle 'mattn/emmet-vim'
Bundle "pangloss/vim-javascript"
Bundle 'aaronbieber/quicktask'
Bundle 'bufexplorer.zip'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'jade.vim'
Bundle 'scala.vim'
Bundle 'klen/python-mode'

" }}}

" preference settings {{{
filetype plugin indent on
set background=dark
colorscheme solarized
let g:solarized_termcolors=256
if has("win32")
	set guifont=Anonymous\ Pro:h11
elseif has("macunix")
	"set guifont=Monaco\:h14
    set guifont=Monaco\ for\ Powerline:h12
    let g:Powerline_symbols = 'fancy'
else
	set guifont=Monaco\ 11
endif
set colorcolumn=100

set tabstop=4
set shiftwidth=4

" search and replace
noremap / /\v
set incsearch
set hlsearch
set showmatch
set gdefault
set ignorecase
set smartcase
set laststatus=2

let g:ackprg="ack -H --nocolor --nogroup --column"

set foldmethod=marker

set list
set listchars=tab:▸\ ,eol:¬,trail:.
noremap <silent><leader>s :set nolist!<CR>
noremap <leader>r :%s/\s\+$//<cr>

au BufRead,BufNewFile *.scala set filetype=scala
au FileType c,cpp,java,php,ruby,html,javascript,css autocmd BufWritePre <buffer> :%s/\s\+$//e
" }}}

" encoding settings for support chinese {{{
set fileencodings=ucs-bom,utf-8,cp936
if has("win32")
	set fileencoding=chinese
else
	set encoding=utf-8
	set fileencoding=utf-8
endif

au FileType html let b:delimitMate_autoclose = 0 


"====================

set pastetoggle=<f2> " do not auto indent when pasting code
nnoremap j gj
nnoremap k gk
nnoremap <leader>a :Ack

inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>
"noremap <c-V> <esc>"+gP

" Pressing < or > will let you indent/unident selected lines
vnoremap < <gv
vnoremap > >gv
" }}}

" zencoding {{{
let g:user_zen_settings = {
\  'php' : {
\    'extends' : 'html',
\    'filters' : 'c',
\  },
\  'xml' : {
\    'extends' : 'html',
\  },
\  'haml' : {
\    'extends' : 'html',
\  },
\  'erb' : {
\    'extends' : 'html',
\  },
\}

if (has('macunix'))
	let g:user_zen_expandabbr_key = '<D-e>'
else
	let g:user_zen_expandabbr_key = '<c-e>'
endif
let g:use_zen_complete_tag = 1
" }}}

" taglist {{{
let Tlist_Show_One_File = 1				"不同时显示多个文件的tag，只显示当前文件的
let Tlist_Exit_OnlyWindow = 1			"如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Use_Right_Window = 1			"在右侧窗口中显示taglist窗口
let Tlist_Sort_Type = 'name'			"使taglist以tag名字进行排序
let Tlist_Close_On_Select = 1			"选择了tag后自动关闭taglist窗口
let Tlist_GainFocus_On_ToggleOpen = 1	"TlistToggle时,输入焦点在taglist窗口中
map <silent> <leader>tl :TlistToggle<cr>
map <silent> <leader>nt :NERDTreeToggle<cr>
" }}}

" ctrlp {{{
let g:ctrlp_dotfiles = 1
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*.swp,*.pyc  " Linux/MacOSX
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(pyc)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

nnoremap <silent> <D-t> :CommandT<CR>
nnoremap <silent> <leader>tt :CommandT<CR>
" }}}
"
" snippets support {{{
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
" let g:snippets_dir = '~/.vim/bundle/vim-snippets/snippets'
" }}}

" delimitMate {{{
let delimitMate_expand_cr = 1
" }}}

" python-mode {{{
let g:pymode_rope_complete_on_dot = 0
" }}}
