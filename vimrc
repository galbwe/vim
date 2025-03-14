set scrolloff=8
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
" show line numbers
set number
" highlight search results
set hls
" ignore case when searching
set ic
" match case when searching for strings that contain capital letters
set smartcase
" highlight the line the cursor is on
set cursorline
" do not save backup files
set nobackup
" do not wrap lines
set nowrap
" increase the number of lines saved during a search
set history=1000
" enable auto completion menu after pressing TAB
set wildmenu
" make wildmenu behave similar to bash completion
set wildmode=list:longest
" ignore file types we would never want to edit with vim
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx,node_modules/**
" set default fold method to indent
set foldmethod=indent
set foldcolumn=2
" ensure all folds are open when opening a file
set foldlevelstart=99
" reread open files when they change from another process
set autoread


" PLUGINS ----------------------------------------------------------------------- {{{
" detect the filetype and load plugins for the specific filetype
filetype on
filetype plugin on
filetype plugin indent on

call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'lifepillar/vim-solarized8'
Plug 'morhetz/gruvbox'
Plug 'TheNiteCoder/mountaineer'
Plug 'axelf4/vim-strip-trailing-whitespace'
Plug 'preservim/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/ctrlp'
Plug 'tpope/vim-commentary'
Plug 'sheerun/vim-polyglot'

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

Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'

" Python development plugins
Plug 'vim-scripts/indentpython.vim'
Plug 'davidhalter/jedi-vim'
call plug#end()

" do not use vi compatibility mode
set nocp
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

" toggle the current fold
nnoremap <space> za

" split the current window vertically
nnoremap <leader>vs :vsplit<CR>

" navigate bewteen windows by holding control while using movement keys
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" asynccomplete.vim autocompletion for lsp servers
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr>    pumvisible() ? asyncomplete#close_popup() : "\<cr>"

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

"VIMSCRIPT --------------------------------------------------------------- {{{

au User lsp_setup call lsp#register_server({
      \ 'name': 'clojure-lsp',
      \ 'cmd': {server_info->[&shell, &shellcmdflag, '$HOME/.local/share/vim-lsp-settings/servers/clojure-lsp/clojure-lsp']},
      \ 'allowlist': ['clojure', 'clojurescript']
      \ })

" if executable('pylsp')
"     au User lsp_setup call lsp#register_server({
"         \ 'name': 'pylsp',
"         \'cmd': {server_info->['pylsp']},
"         \ 'allowlist: ['python'],
"         \ })
" endif

" asyncomplete configuration
au User asyncomplete_setup call asyncomplete#register_source({
    \ 'name': 'async_clj_omni',
    \ 'whitelist': ['clojure'],
    \ 'completor': function('async_clj_omni#sources#complete'),
    \ })


" set up windows when starting vim and run a filetree and terminal
au VimEnter * :NERDTree
au VimEnter * wincmd w
au VimEnter * :term
au VimEnter * :resize 15
au VimEnter * wincmd r
au VimEnter * wincmd k
au VimEnter * :vsplit

" reread open files after inactivity
au CursorHold * checktime

" Python configuration
augroup python_settings
    autocmd!
    autocmd FileType python setlocal foldmethod=indent
    au FileType python setlocal encoding=utf-8
    " Flag unnecessary whitespace
augroup END

" }}}
