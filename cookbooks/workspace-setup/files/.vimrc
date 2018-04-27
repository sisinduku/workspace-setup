set nocompatible  
set splitright
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'altercation/vim-colors-solarized'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'jiangmiao/auto-pairs'
Plugin 'henrik/vim-indexed-search'
Plugin 'tpope/vim-fugitive'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'mbbill/undotree'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'andrewradev/splitjoin.vim'
Plugin 'tmhedberg/simpylfold'
Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set backspace=indent,eol,start

" default indent settings
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent

" indentation for python
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

" Enable folding
set foldmethod=indent
set foldlevel=99

" enable ruler by default
set nu

" turn on syntax highlighting
syntax on

" solarized settings
syntax enable
let g:solarized_termcolors=256
set background=dark
colorscheme solarized
" end solarized settings

" some stuff to get the mouse going in term
set mouse=a
if !has("nvim")
    set ttymouse=xterm2
endif

" nerdtree settings
let g:NERDTreeMouseMode = 2
let g:NERDTreeWinSize = 40
let g:NERDTreeMinimalUI = 1
" end nerdtree settings

" syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_ruby_checkers = ['rubylint']
let g:syntastic_ruby_rubylint_exec = '~/.rbenv/versions/2.5.0/bin/ruby'
let g:syntastic_java_checkers=['javac']
let g:syntastic_java_javac_config_file_enabled = 1
" end syntastic settings

" simplyfold settings
let g:SimpylFold_docstring_preview=1
" end simplyfold settings

let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'
let g:ycm_python_binary_path = 'python'

" activate rainbow parens
autocmd syntax java,javascript,vim call s:ActivateRainbowParens()
function! s:ActivateRainbowParens() abort
    RainbowParenthesesToggle
    RainbowParenthesesLoadRound
    RainbowParenthesesLoadSquare
    RainbowParenthesesLoadBraces
endfunction

" use space as leader in sensible modes
nmap <space> <Leader>
vmap <space> <Leader>

" mapping explorer
nnoremap <leader>nt :NERDTreeToggle<cr>

" mapping fugitive
nnoremap <leader>gst :Gstatus<cr>
nnoremap <leader>gd :Gdiff<cr>
nnoremap <leader>glg :Glog<cr>
nnoremap <leader>gc :Gcommit<cr>

" mapping undotree
nnoremap <F5> :UndotreeToggle<cr>
