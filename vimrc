set nu!

set nocompatible
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on
set guioptions+=m  
set guioptions+=T  
set nobackup
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
color solarized
set background=dark
syntax enable 
syntax on
set nocp
set backspace=indent,eol,start
set guifont=Source\ Code\ Pro\ for\ Powerline\ 13

set fillchars+=stl:\ ,stlnc:\ 
let g:airline_powerline_fonts = 1
let g:Powerline_symbols = 'fancy'
set t_Co=256 
let g:Powerline_cache_enabled = 1
set laststatus=2   " Always show the statusline
let NERDTreeIgnore = ['\~$','\.pyc$','\*NTUSER*','\*ntuser*','\NTUSER.DAT','\ntuser.ini']

set completeopt=longest,menu

let g:miniBufExplMapCTabSwitchBufs = 1

let g:DoxygenToolkit_authorName="jimx, develorcer@gmail.com"
let s:licenseTag = "GPL"
let g:DoxygenToolkit_licenseTag = s:licenseTag
let g:DoxygenToolkit_briefTag_funcName="yes"
let g:doxygen_enhanced_color=1

let g:multi_cursor_next_key='<C-d>' 
" If the current buffer has never been saved, it will have no name,
" call the file browser to save it, otherwise just save it.
nnoremap <silent> <C-S> :if expand("%") == ""<CR>browse confirm w<CR>else<CR>confirm w<CR>endif<CR>

set autoindent
set incsearch

" CTRL-C and CTRL-Insert are Copy
vnoremap <C-C> "+y
vnoremap <C-Insert> "+y

" CTRL-V and SHIFT-Insert are Paste
map <C-V>		"+gP
map <S-Insert>		"+gP

"noremap <C-S>		:update<CR>
"vnoremap <C-S>		<C-C>:update<CR>
inoremap <C-S>		<C-O>:update<CR>

" Switch between .c and .h
nnoremap <silent> <F12> :A<CR>
nnoremap <silent> <F3> :Grep<CR>

" Compile
map <C-F9> :!make<CR>
map <F8> :!python %<CR>
map <F9> :!python3 %<CR>
map <C-F8> :!python main.py<CR>
map <F7> :!g++ --std=c++0x -o vim_out %<CR>
map <F5> :!./vim_out<CR>

" Tab
map <C-l> :tabn<cr> 
map <C-h> :tabp<cr>
map <C-n> :tabnew<cr>
map <C-k> :bn<cr>
map <C-j> :bp<cr>
