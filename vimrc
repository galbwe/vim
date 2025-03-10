set scrolloff=8
set number
set relativenumber
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set hls ic

call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'lifepillar/vim-solarized8'
Plug 'morhetz/gruvbox'
Plug 'axelf4/vim-strip-trailing-whitespace'
Plug 'preservim/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/ctrlp.vim'

" clojure development plugins
Plug 'guns/vim-clojure-highlight'
Plug 'guns/vim-clojure-static'
Plug 'luochen1990/rainbow'
Plug 'guns/vim-sexp'
Plug 'tpope/vim-sexp-mappings-for-regular-people'

Plug 'clojure-vim/vim-jack-in'
Plug 'radenling/vim-dispatch-neovim'
Plug 'SevereOverfl0w/vim-replant', { 'do': ':UpdateRemotePlugins' }
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-fireplace'

Plug 'clojure-vim/async-clj-omni'
Plug 'prabirshrestha/asyncomplete.vim'
call plug#end()


set background=dark
" set the theme
autocmd vimenter * ++nested colorscheme gruvbox

" set the leader to a comma
let mapleader = ","

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

" Quickfix List navigation
nnoremap <leader>co :copen<CR>
nnoremap <leader>cp :cprev<CR>
nnoremap <leader>cn :cnext<CR>

" Open NERDTree
nnoremap <leader>nt :NERDTree<CR>

" ripgrep config
let g:ackprg = 'rg --vimgrep'
let g:ack_autoclose = 1
cnoreabbrev Ack Ack!


" configure in editor terminal
" set termwinsize=30x200
" open a terminal
nnoremap <leader>tt :tab terminal<CR>
" create a terminal window with a horizontal split
nnoremap <leader>th :tab terminal<CR>

" asyncomplete configuration
au User asyncomplete_setup call asyncomplete#register_source({
    \ 'name': 'async_clj_omni',
    \ 'whitelist': ['clojure'],
    \ 'completor': function('async_clj_omni#sources#complete'),
    \ })
