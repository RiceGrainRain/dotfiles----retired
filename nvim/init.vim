" startup
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

call plug#begin()

" don't feel like catagorizing... 
Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }
Plug 'ryanoasis/vim-devicons'
Plug 'mhinz/vim-startify'
Plug 'neoclide/coc.nvim'

" nerdtree
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'PhilRunninger/nerdtree-buffer-ops'
Plug 'PhilRunninger/nerdtree-visual-selection'


" treesitter + telescope
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
Plug 'nvim-treesitter/playground'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'nvim-lua/plenary.nvim'

" cpp
Plug 'bfrg/vim-cpp-modern'
Plug 'octol/vim-cpp-enhanced-highlight'

" functionalities
Plug 'rktjmp/lush.nvim'
Plug 'romgrk/barbar.nvim'
Plug 'wellle/visual-split.vim'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'kartikp10/noctis.nvim'
Plug 'bluz71/vim-moonfly-colors', { 'branch': 'cterm-compat' }
Plug 'Mofiqul/dracula.nvim'
Plug 'ellisonleao/gruvbox.nvim'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'mhinz/vim-signify'
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-abolish'
Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdcommenter'
Plug 'Yggdroot/indentLine'
Plug 'chrisbra/Colorizer'
Plug 'KabbAmine/vCoolor.vim'
Plug 'dkarter/bullets.vim'
Plug 'wellle/context.vim'
Plug 'antoinemadec/FixCursorHold.nvim'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'junegunn/limelight.vim'
Plug 'junegunn/vim-journal'
Plug 'arcticicestudio/nord-vim'

call plug#end()



" color/customization
let g:airline_theme='nord'

" airline
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" keybinds
nnoremap <C-n> :NERDTreeToggle <CR>
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
nnoremap <S-c> :Commands <CR>
nnoremap <S-w> :Windows <CR>
nnoremap <S-f> :Telescope find_files <CR>
nnoremap <C-t> :enew <CR>
inoremap <C-u> :u <CR>
nnoremap <C-u> :u <CR>
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
" telescope config
" nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <C-g> :Telescope live_grep<cr>
nnoremap <C-b> :Telescope buffers<cr>
nnoremap <C-/> :Telescope help_tags<cr>

" other settings
filetype plugin indent on
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab smarttab autoindent
set incsearch ignorecase smartcase hlsearch
set wildmode=longest,list,full wildmenu
set ruler laststatus=2 showcmd showmode
set wrap breakindent
set encoding=utf-8
set textwidth=0
set hidden
set number
set title


" vim startify header
let g:startify_custom_header = [
\'        _   __                _   ',
\'       / | / /__  ____ _   __(_)___ ___   ',
\'      /  |/ / _ \/ __ \ | / / / __ `__ \  ',
\'     / /|  /  __/ /_/ / |/ / / / / / / /  ',
\'    /_/ |_/\___/\____/|___/_/_/ /_/ /_/   ',
\'                ',
\'                ',
\]

" theme
set background=dark
colorscheme nord
syntax on
