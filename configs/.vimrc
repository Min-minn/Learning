:echo "<=^.^=>"
" If you open this file in Vim, it'll be syntax highlighted for you.

" Return to last edit position when opening files (You want this!)
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

set nocompatible

" Plugins
""""""""""""""""""""""""""""""""""""
call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
call plug#end()

" UI Config
"""""""""""""""""""""""""""""""""
syntax on " Turn on syntax highlighting.
set number              " show line numbers
set relativenumber      " show relative numbering
set showcmd             " show command in bottom bar
set cursorline          " highlight current line
filetype indent on      " load filetype-specific indent files
filetype plugin on      " load filetype specific plugin files
set wildmenu            " visual autocomplete for command menu
set showmatch           " highlight matching [{()}]
set laststatus=2        " Show the status line at the bottom
set t_Co=256      "color
set mouse+=a            " A necessary evil, mouse support
set selection=exclusive
set selectmode=mouse,key
set noerrorbells visualbell t_vb=    "Disable annoying error noises
set splitbelow          " Open new vertical split bottom
set splitright          " Open new horizontal splits right
set linebreak           " Have lines wrap instead of continue off-screen
set scrolloff=12        " Keep cursor in approximately the middle of the screen
set background=dark    " Setting dark mode
" set background=light   " Setting light mode

set clipboard+=unnamed
set autoread " set auto read when a file is changed from outside
set regexpengine=0 " Set regular expression engine automatically

set shortmess+=I " Disable the default Vim startup message.
set foldcolumn=1 " Add a bit extra margin to the left
set ruler " right condition
set showmode " condition


"""""Encoding"""""""
set encoding=utf-8
set fileencodings=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936,utf-16,big5,euc-jp,latin1



" Colorscheme
"""""""""""""""""""""""""""""""
" colorscheme desert
colorscheme gruvbox


" Airline
"""""""""""""""""""""""""""""""
" let g:airline_theme=
" open tabline, check and change Buffer
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

" Change Between Buffer
nnoremap <C-tab> :bn<CR>
nnoremap <C-s-tab> :bp<CR>


"Edit
"""""""
" Spaces & Tabs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set shiftwidth=4    " Insert 4 spaces on a tab
set expandtab       " tabs are spaces, mainly because of python
set autoindent		" Auto indent
set smartindent
set noexpandtab		" set tab to space
set wrap " break line automatically

set iskeyword+=_,$,@,%,#,-
" The backspace key has slightlunintuitive behavior by default. For example,
" by default, you can't backspace before the insertion point set with 'i'.
" This configuration makes backspace behave more reasonably, in that you can
" backspace over anything.
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" auto fill text
set completeopt=preview,menu

" show exclusive spaces
set listchars=tab:»■,trail:■
set list

" Turn backup off, since most stuff is in SVN, git etc. anyway...
set nobackup
set nowb
set noswapfile

" This makes typing Esc take effect more quickly.  Normally Vim waits a second
" to see if the Esc is the start of an escape sequence.  I
set ttimeout


" By default, Vim doesn't let you hide a buffer (i.e. have a buffer that isn't
" shown in any window) that has unsaved changes. This is to prevent you from "
" forgetting about unsaved changes and then quitting e.g. via `:qa!`. We find
" hidden buffers helpful enough to disable this protection. See `:help hidden`
" for more information on this.
set hidden

"Search
"""""""""""""""""""""""
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set ignorecase          " Ignore case in searches by default
set smartcase           " But make it case sensitive if an uppercase is entered
" turn off search highlight
vnoremap <C-h> :nohlsearch<cr>
nnoremap <C-h> :nohlsearch<cr>

" For regular expressions turn magic on
set magic

" Keep 200 commands and 200 search patterns in the history.  Use another number
" if you want to remember fewer or more lines.  See 'history'.
set history=200

" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>

" Unbind some useless/annoying default key bindings.
nmap Q <Nop> " 'Q' in normal mode enters Ex mode. You almost never want this.


" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let maplocalleader = "-"

" Try to prevent bad habits like using the arrow keys for movement
nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>
" ...and in visual mode
vnoremap <Left>  <ESC>:echoe "Use h"<CR>
vnoremap <Right> <ESC>:echoe "Use l"<CR>
vnoremap <Up>    <ESC>:echoe "Use k"<CR>
vnoremap <Down>  <ESC>:echoe "Use j"<CR>

" Fast saving and fast quiting
nnoremap <leader>w :w!<cr>

"  ;  --   FZF
nmap <Leader>; :Buffers<CR>

"  <Space>  --  <leader><leader> toggles between buffers
nnoremap <Leader><Leader> <c-^>

" Disable highlight when <leader><cr> is pressed
noremap <silent> <leader><cr> :noh<cr>

" Close the current buffer
noremap <leader>bd :Bclose<cr>:tabclose<cr>gT
" Close all the buffers
noremap <leader>ba :bufdo bd<cr>
noremap <leader>l :bnext<cr>
noremap <leader>ls :ls<cr>
noremap <leader>h :bprevious<cr>

" useful mappings for managing tabs
noremap <leader>tn :tabnew<cr>
noremap <leader>to :tabonly<cr>
noremap <leader>tc :tabclose<cr>
noremap <leader>tm :tabmove
noremap <leader>t<leader> :tabnext<cr>

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
noremap <leader>te :tabedit <C-r>=escape(expand("%:p:h"), " ")<cr>/

" Pressing ,ss will toggle and untoggle spell checking
noremap <leader>ss :setlocal spell!<cr>

""""""Exercises""""""""""""
"""map
nnoremap <Space> o<esc>
nnoremap <BS> 0k
nnoremap H ^
nnoremap L $
" move vertically by visual line
nnoremap j gj
nnoremap k gk
" Something do with $MYVIMRC
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
