set nocompatible
call plug#begin('~/.config/nvim/plugged')
Plug 'sheerun/vim-polyglot'
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter' 
Plug 'vim-airline/vim-airline'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
" Plug 'HerringtonDarkholme/yats.vim'
" or Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'jparise/vim-graphql'
" Plug 'styled-components/vim-styled-components'
Plug 'jiangmiao/auto-pairs'
Plug 'airblade/vim-gitgutter'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Yggdroot/indentLine'
Plug 'styled-components/vim-styled-components'
call plug#end()

" CoC extensions if we never need to reinstall. needs manually updating
let g:coc_global_extensions = [
  \ 'coc-json',
  \ 'coc-tsserver',
  \ 'coc-css',
  \ 'coc-snippets',
  \ 'coc-prettier',
  \ 'coc-eslint',
  \ ]

" specify path to python 3. make sure this matches python alias in zshrc
let g:python3_host_prog = '/usr/local/bin/python3'

" misc settings
set mouse=a " mouse god mode
set number " display line numbers
set splitbelow " more natty default splits
set splitright
set linebreak " dont linebreak in the middle of a word
" plugin cfgs
source ~/.config/nvim/plug-config/fzf.vim
source ~/.config/nvim/theme.vim
source ~/.config/nvim/coc.vim

" plugin specific settings
let g:indentLine_enabled = 0 " off by default
let g:indentLine_char = '|'
let NERDTreeShowHidden=1 " show .files
let g:NERDTreeMouseMode=3 " always allow mouse in nerdtree
let NERDTreeIgnore=['.DS_Store']
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif " exit vim if last & only buffer is nerdtree

" keybinds
map <Space> <leader>
map <C-n> :NERDTreeToggle<CR>
map <leader><Tab> :NERDTreeToggle<CR>
map <leader>§ :NERDTreeToggle<CR>
