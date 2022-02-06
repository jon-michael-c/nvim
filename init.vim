set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set exrc
set relativenumber
set nu
set nohlsearch 
set hidden
set incsearch
set scrolloff=8
set signcolumn=yes
set t_Co=256

call plug#begin('~/.config/vim/plugged')
"{{ The Basics }} 
Plug 'ryanoasis/vim-devicons'    
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'scrooloose/NERDTree'
Plug 'nvim-telescope/telescope.nvim'
Plug 'gruvbox-community/gruvbox'
Plug 'tpope/vim-surround' 

"{{Styling}}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install --frozen-lockfile --production',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }
Plug 'ryanoasis/vim-devicons'
Plug 'ap/vim-css-color' 
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
"{{ Colorschemes }}
Plug 'Mofiqul/vscode.nvim'
Plug 'lunarvim/darkplus.nvim'
Plug 'webdevel/tabulous'
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}

"{{TabBar}}
Plug 'kyazdani42/nvim-web-devicons'
Plug 'romgrk/barbar.nvim'


call plug#end()
colorscheme darkplus
highlight Normal ctermbg=0xfafafa
hi Normal guibg=NONE ctermbg=NONE

let mapleader = " "
nnoremap <leader>e :NERDTree
nnoremap <leader>p


let g:lightline = {
      \ 'colorscheme': 'darkplus',
      \ }

