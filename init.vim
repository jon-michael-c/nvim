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
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'scrooloose/NERDTree'
Plug 'nvim-telescope/telescope.nvim'
Plug 'gruvbox-community/gruvbox'
Plug 'tpope/vim-surround' "Surround Command
Plug 'vim-syntastic/syntastic'
Plug 'neomake/neomake'

"{{Styling and Colors}}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install --frozen-lockfile --production',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }
Plug 'ryanoasis/vim-devicons' "File Icons
Plug 'ap/vim-css-color' "Color Preview

"{{Syntax Support}}
Plug 'mxw/vim-jsx' "JSX higlighting
Plug 'pangloss/vim-javascript' "JS higlighting

"{{ Colorschemes }}
Plug 'Mofiqul/vscode.nvim'
Plug 'lunarvim/darkplus.nvim'
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}

"{{TabBar}}
Plug 'kyazdani42/nvim-web-devicons'
Plug 'romgrk/barbar.nvim'


"{{Misc}}
Plug 'webdevel/tabulous'

call plug#end()

colorscheme darkplus
highlight Normal ctermbg=0xfafafa
hi Normal guibg=NONE ctermbg=NONE

let mapleader = " "
nnoremap <leader>e :NERDTree
nnoremap <leader>p
nnoremap <leader>l :tabn
nnoremap <leader>h :tabp
nnoremap <leader>n :tabnew

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


" When writing a buffer (no delay).
call neomake#configure#automake('w')
" When writing a buffer (no delay), and on normal mode changes (after 750ms).
call neomake#configure#automake('nw', 750)
" When reading a buffer (after 1s), and when writing (no delay).
call neomake#configure#automake('rw', 1000)
" Full config: when writing or reading a buffer, and on changes in insert and
" normal mode (after 500ms; no delay when writing).
call neomake#configure#automake('nrwi', 500)
