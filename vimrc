set scrolloff=8
set number
set relativenumber
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim' 
Plug 'lifepillar/vim-solarized8'
Plug 'morhetz/gruvbox'
call plug#end()


set background=dark
" set the theme
autocmd vimenter * ++nested colorscheme gruvbox

" set the leader to a space
let mapleader = " "

" press leader then p v to get a file tree
nnoremap <leader>pv :Vex<CR>

" press ;; to exit insert mode
inoremap ;; <ESC>

" source the vimrc file when pressing space enter
nnoremap <leader><CR> :so ~/.vimrc<CR>

" edit the vimrc file
nnoremap <leader>vr :e ~/.vimrc<CR>

" press CTRL + p to go into a fuzzy-finder
nnoremap <C-p> :GFiles<CR>  

" if not in a git repo, press SPACE + pf to go into the file finder
nnoremap <leader>pf :Files<CR>

" set the background to light
nnoremap <leader>bl :set background=light<CR>
"
" set the background to dark
nnoremap <leader>bd :set background=dark<CR>

