syntax on
set hidden
set mouse=a
set noerrorbells
set shiftwidth=2
set tabstop=2
set expandtab
set smartindent
set number
filetype plugin indent on
set splitbelow splitright

set incsearch
set ignorecase
set clipboard=unnamedplus
set encoding=utf-8
set cursorline
set termguicolors

set colorcolumn=120
highlight ColorColumn ctermbg=0 guibg=lightgray

call plug#begin('~/.local/share/nvim/plugged')
" themes
Plug 'morhetz/gruvbox'
Plug 'ayu-theme/ayu-vim'
Plug 'joshdick/onedark.vim'

" visual
Plug 'yggdroot/indentline'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'leafgarland/typescript-vim'

" Functionality
Plug 'junegunn/fzf', { 'do': {-> fzf#install() }}
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'

" Code modification and autocomplete
Plug 'ddollar/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'mattn/emmet-vim'
Plug 'neoclide/coc.nvim', { 'branch': 'release'}

" Styled components
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

" React
Plug 'MaxMEllon/vim-jsx-pretty'

" Prettier
Plug 'prettier/vim-prettier'

" Tabs
Plug 'pacha/vem-tabline'
Plug 'ryanoasis/vim-devicons'


call plug#end()

set background=dark
let ayucolor="mirage"
let g:gruvbox_contrast_dark="hard"
colorscheme gruvbox


let g:coc_node_path = '/home/davisilva/.nvm/versions/node/v14.18.1/bin/node'
" coc plugins
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-actions',
  \ 'coc-lists',
  \ 'coc-tsserver',
  \ 'coc-html',
  \ 'coc-css',
  \ 'coc-prettier',
  \ 'coc-vimlsp',
  \ ]

" <Tab> para navegar e <Ctrl-Space> para abrir popup de sugestão:
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <c-space> coc#refresh()

" navegation coc
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Rename/Refactor
nmap <leader>rn <Plug>(coc-rename)

" Navegation in code
nmap <silent> gf <Plug>(coc-definition)

" Search
nnoremap <c-f> :Files<cr>

" Nerdtree toggle
nnoremap <C-b> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeShowLineNumbers=1

