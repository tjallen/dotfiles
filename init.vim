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
Plug 'airblade/vim-gitgutter'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
call plug#end()

" plugin cfgs
source ~/.config/nvim/plug-config/fzf.vim
source ~/.config/nvim/theme.vim
source ~/.config/nvim/coc.vim

" keybinds
map <Space> <leader>
map <C-n> :NERDTreeToggle<CR>
map <leader>` :NERDTreeToggle<CR>

" misc settings
set mouse=a " mouse god mode
set number " display line numbers
let g:NERDTreeMouseMode=3 " always allow mouse in nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif " exit vim if last & only buffer is nerdtree
