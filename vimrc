" load pathogen plugin manager
call pathogen#infect()

" global settings
syntax on
set nocompatible
set backspace=2
let mapleader=","
set autoindent
set smartindent
set smarttab
set hidden
set number
set visualbell t_vb=					" disable error bell sound
filetype plugin indent on

"=====================


" preference settings
colorscheme solarized
set background=dark
let g:solarized_termcolors=256
if has("win32")
	set guifont=Anonymous\ Pro:h11
elseif has("macunix")
	set guifont=Monaco\:h14
else
	set guifont=Monaco\ 11
endif
set colorcolumn=80

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

let g:ackprg="ack -H --nocolor --nogroup --column"

set list
set listchars=tab:▸\ ,eol:¬
noremap <silent><leader>s :set nolist!<CR>

"=====================


" encoding settings for support chinese
set fileencodings=ucs-bom,utf-8,cp936
if has("win32")
	set fileencoding=chinese
else
	set encoding=utf-8
	set fileencoding=utf-8
endif

"====================


" keymappings
noremap <a-1> 1gt<cr>
noremap <a-2> 2gt<cr>
noremap <a-3> 3gt<cr>
noremap <a-4> 4gt<cr>
noremap <a-5> 5gt<cr>
noremap <a-6> 6gt<cr>
noremap <a-7> 7gt<cr>
noremap <a-8> 8gt<cr>
noremap <a-9> 9gt<cr>

set pastetoggle=<f2> " do not auto indent when pasting code
nnoremap j gj
nnoremap k gk
nnoremap <leader>a :Ack

inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>
"noremap <c-V> <esc>"+gP

"vmap <C-c> "+yi
"vmap <C-x> "+c
"vmap <C-v> c<ESC>"+p
"imap <C-v> <ESC>"+pa

" Pressing < or > will let you indent/unident selected lines
vnoremap < <gv
vnoremap > >gv
"====================


" Functions
if has("win32")
	command Preview :!firefox %<CR>
else
	command Preview :!xdg-open %<CR>
endif

"===================


" code folding
set foldmethod=syntax
"set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
"set foldlevel=1         "this is just what i use

"==================

" zencoding
"==================
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

"==================

" taglist
"==================
let Tlist_Show_One_File = 1				"不同时显示多个文件的tag，只显示当前文件的
let Tlist_Exit_OnlyWindow = 1			"如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Use_Right_Window = 1			"在右侧窗口中显示taglist窗口
let Tlist_Sort_Type = 'name'			"使taglist以tag名字进行排序
let Tlist_Close_On_Select = 1			"选择了tag后自动关闭taglist窗口
let Tlist_GainFocus_On_ToggleOpen = 1	"TlistToggle时,输入焦点在taglist窗口中
map <silent> <leader>tl :TlistToggle<cr>
map <silent> <leader>nt :NERDTreeToggle<cr>

" ctrlp
let g:ctrlp_user_command = 'find %s -type f'       " MacOSX/Linux
let g:ctrlp_dotfiles = 1
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*  " Linux/MacOSX

nnoremap <silent> <D-t> :CommandT<CR>

