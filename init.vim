call plug#begin('~/.config/nvim/plugged')
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter' 
Plug 'vim-airline/vim-airline'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'HerringtonDarkholme/yats.vim'
" or Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'jparise/vim-graphql'
Plug 'styled-components/vim-styled-components'
Plug 'jiangmiao/auto-pairs'
call plug#end()

source ~/.config/nvim/theme.vim
source ~/.config/nvim/coc.vim

map <Space> <leader>
map <C-n> :NERDTreeToggle<CR>

set mouse=a " mouse god mode
set number " display line numbers
let g:NERDTreeMouseMode=3 " always allow mouse in nerdtree
