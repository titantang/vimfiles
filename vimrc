" global settings {{{
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
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*        " Linux/MacOSX
" }}}

" Bundles {{{
call plug#begin('~/.vim/bundle')

" required! 

" Plugins listing
Plug 'mileszs/ack.vim'
Plug 'kchmck/vim-coffee-script', { 'for': 'coffee' }
Plug 'kien/ctrlp.vim'
Plug 'othree/html5.vim'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'ervandew/supertab'
Plug 'godlygeek/tabular'
Plug 'altercation/vim-colors-solarized'
Plug 'Lokaltog/vim-powerline'
Plug 'tpope/vim-rails', { 'for': 'ruby' }
Plug 'tpope/vim-repeat'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'tpope/vim-surround'
Plug 'mattn/emmet-vim'
Plug 'pangloss/vim-javascript'
Plug 'Lokaltog/vim-easymotion'
Plug 'python-mode/python-mode', { 'branch': 'develop', 'for': 'python' }
Plug 'leafgarland/typescript-vim', { 'for': 'typescript' }
Plug 'jiangmiao/auto-pairs'
Plug 'davidhalter/jedi-vim', { 'for': 'python' }
Plug 'mechatroner/rainbow_csv'


call plug#end()

" }}}

" preference settings {{{
set background=light
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
set colorcolumn=120
highlight ColorColumn ctermbg=lightgrey guibg=lightgrey


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

let g:ackprg="ag -H --nocolor --nogroup --column"

set foldmethod=marker

set list
set listchars=tab:▸\ ,eol:¬,trail:.
noremap <silent><leader>s :set nolist!<CR>
noremap <leader>r :%s/\s\+$//<cr>
:imap jj <Esc>

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

" NerdTree {{{
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
" }}}
"
" snippets support {{{
" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<tab>"
" let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
" let g:snippets_dir = '~/.vim/bundle/vim-snippets/snippets'
" }}}

" python-mode {{{
let g:pymode_rope_complete_on_dot = 0
let g:pymode_python = 'python3'
" }}}
