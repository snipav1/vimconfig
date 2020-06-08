set nocompatible
set rnu nu
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'klen/python-mode'
Plugin 'Chiel92/vim-autoformat'
Plugin 'tpope/vim-fugitive'
Plugin 'jedi-vim'
Plugin 'blueshirts/darcula'
Plugin 'ThePrimeagen/vim-be-good'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'valloric/youcompleteme'
Plugin 'tpope/vim-surround'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/nerdcommenter'
Plugin 'kien/ctrlp.vim'
call vundle#end()
filetype plugin indent on
syntax enable
colorscheme darcula
imap jj <Esc>
"nmap <C-[> {<CR>
"nmap <C-]> }<CR>
let mapleader = " "
set tabstop=4
set softtabstop=4
set shiftwidth=4
" NERDTree
nmap <C-n> :NERDTreeToggle<CR>
" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_loc_list_height=3
let g:syntastic_python_checkers=['flake8']
map <F2> :<SyntasticCheck flake8 pylint<CR>
" Autoformat
noremap <F1> :Autoformat<CR>
" Python-Mode
let g:pymode_lint_on_fly = 0
" YCM
nnoremap <leader>d :YcmCompleter GoTo<CR>
" Jedi Vim
"let g:jedi#goto_command = "<leader>d"
let g:jedi#force_py_version=3
" Powerline
set rtp+=/usr/local/lib/python3.8/site-packages/powerline/bindings/vim
set laststatus=2
set t_Co=256
