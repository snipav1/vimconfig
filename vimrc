set nocompatible
filetype off
" Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" Let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'klen/python-mode'
Plugin 'Chiel92/vim-autoformat'
Plugin 'tpope/vim-fugitive'
Plugin 'jedi-vim'
Plugin 'blueshirts/darcula'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'valloric/youcompleteme'
" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on
" Plugins
Syntax enable
colorscheme darcula
" NerdTree
map <C-n> :NERDTree<CR>
" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers=['flake8']
" Autoformat
noremap <F1> :Autoformat<CR>
" Jedi-vim
" Python-mode
let g:pymode_lint_on_fly = 0
let g:jedi#force_py_version=3
" Map jj to esc
imap jj <Esc>
" Powerline
set rtp+=/usr/local/lib/python3.8/site-packages/powerline/bindings/vim
set laststatus=2
set t_Co=256
