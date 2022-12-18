:echo ">^.^<"
" Comments in Vimscript start with a `"`.

" If you open this file in Vim, it'll be syntax highlighted for you.

" Return to last edit position when opening files (You want this!)
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" enable filetype plugins
filetype plugin on
set clipboard+=unnamed

" set auto read when a file is changed from outside
set autoread


" Set regular expression engine automatically
set regexpengine=0

"""""Encoding"""""""
set encoding=utf-8
set fileencodings=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936,utf-16,big5,euc-jp,latin1

"""""Interface"""""""""
" Vim is based on Vi. Setting `nocompatible` switches from the default
" Vi-compatibility mode and enables useful Vim functionality. This
" configuration option turns out not to be necessary for the file named
" '~/.vimrc', because Vim automatically enters nocompatible mode if that file
" is present. But we're including it here just in case this config file is
" loaded some other way (e.g. saved as `foo`, and then Vim started with
" `vim -u foo`).
set nocompatible

" Turn on syntax highlighting.
syntax on
" Tell Vim to always use your color scheme.
colorscheme desert

" Disable the default Vim startup message.
set shortmess+=I

" 3lines of distance
set scrolloff=3

" Add a bit extra margin to the left
set foldcolumn=1

" Show line numbers.
set number
" empashsis certain line
set cursorline
" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" right condition
set ruler
" condition
set showmode
" Always show the status line at the bottom, even if you only have one window open.
set laststatus=2

"""""Edit""""""
" autoindent
set autoindent
set smartindent
" tab lenth
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
" set tab to space
set noexpandtab
" break line automatically
set wrap
set iskeyword+=_,$,@,%,#,-
" The backspace key has slightly unintuitive behavior by default. For example,
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

" This enables relative line numbering mode. With both number and
" relativenumber enabled, the current line shows the true line number, while
" all other lines (above and below) are numbered relative to the current line.
" This is useful because you can tell, at a glance, what count is needed to
" jump up or down to a particular line, by {count}k to go up or {count}j to go
" down.
set relativenumber

" By default, Vim doesn't let you hide a buffer (i.e. have a buffer that isn't
" shown in any window) that has unsaved changes. This is to prevent you from "
" forgetting about unsaved changes and then quitting e.g. via `:qa!`. We find
" hidden buffers helpful enough to disable this protection. See `:help hidden`
" for more information on this.
set hidden

"""""Search"""""""
" This setting makes search case-insensitive when all characters in the string
" being searched are lowercase. However, the search becomes case-sensitive if
" it contains any capital letters. This makes searching more convenient.
set ignorecase
set smartcase
" Enable searching as you type, rather than waiting till you press enter.
set incsearch
" This switches on the 'hlsearch' option, telling Vim to highlight matches with
" the last used search pattern.
if &t_Co > 2 || has("gui_running")
  set hlsearch
endif
" match brakets
set showmatch
set matchtime=2

" For regular expressions turn magic on
set magic

" Display completion matches in a status line.  That is when you type <Tab> and
" there is more than one match.  See 'wildmenu'.
set wildmenu
" Display an incomplete command in the lower right corner of the Vim window,
" left of the ruler
set showcmd

" Keep 200 commands and 200 search patterns in the history.  Use another number
" if you want to remember fewer or more lines.  See 'history'.
set history=200

" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>

" Unbind some useless/annoying default key bindings.
nmap Q <Nop> " 'Q' in normal mode enters Ex mode. You almost never want this.

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Enable mouse support. You should avoid relying on this too much, but it can
" sometimes be convenient.
set mouse+=a
set selection=exclusive
set selectmode=mouse,key

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let maplocalleader = "-"

" Try to prevent bad habits like using the arrow keys for movement. This is
" not the only possible bad habit. For example, holding down the h/j/k/l keys
" for movement, rather than using more efficient movement commands, is also a
" bad habit. The former is enforceable through a .vimrc, while we don't know
" how to prevent the latter.
" Do this in normal mode...
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

" Smart way to move between iwindows (<ctrl>j etc.):
noremap \j <C-W>j
noremap \k <C-W>k
noremap \h <C-W>h
noremap \l <C-W>l
noremap \s <C-W>s
noremap \v <C-W>v
noremap \n <C-W>n
" easily window acttion
noremap \= <C-W>=
noremap \+ <C-W>+
noremap \- <C-W>-
noremap \_ <C-W>_
noremap \< <C-W><
noremap \> <C-W>>
noremap \H <C-W>H
noremap \J <C-W>J
noremap \K <C-W>K
noremap \L <C-W>L
noremap \P <C-W>P
noremap \T <C-W>T
noremap \W <C-W>W
noremap \w <C-W>w

" surround the visual selection in parenthesis/brackets/etc.:
" vnoremap $1 <esc>`>a)<esc>`<i(<esc>
" vnoremap $2 <esc>`>a]<esc>`<i[<esc>
" vnoremap $3 <esc>`>a}<esc>`<i{<esc>
" vnoremap $$ <esc>`>a"<esc>`<i"<esc>
" vnoremap $q <esc>`>a'<esc>`<i'<esc>
" vnoremap $e <esc>`>a`<esc>`<i`<esc>

" Quickly insert parenthesis/brackets/etc.:
" inoremap $1 ()<esc>i
" inoremap $2 []<esc>i
" inoremap $3 {}<esc>i
" inoremap $4 {<esc>o}<esc>O
" inoremap $q ''<esc>i
" inoremap $e ""<esc>i
" inoremap $t <><esc>i

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
nnoremap -- $
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
