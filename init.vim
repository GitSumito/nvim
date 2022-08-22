"  ~/.config/nvim/init.vim
set shell=/bin/zsh
set shiftwidth=4
set tabstop=4
set expandtab
set textwidth=0
set autoindent
set hlsearch
set clipboard=unnamed
syntax on

call plug#begin()
  Plug 'ntk148v/vim-horizon'
  Plug 'preservim/nerdtree'
" https://github.com/junegunn/fzf#as-vim-plugin
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" https://github.com/sheerun/vim-polyglot#installation
  Plug 'sheerun/vim-polyglot'
" https://github.com/neoclide/coc.nvim#quick-start
  Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

" https://github.com/ntk148v/vim-horizon
" if you don't set this option, this color might not correct
set termguicolors

colorscheme horizon

" lightline
let g:lightline = {}
let g:lightline.colorscheme = 'horizon'

" or this line
let g:lightline = {'colorscheme' : 'horizon'}

" https://github.com/preservim/nerdtree#how-can-i-map-a-specific-key-or-shortcut-to-open-nerdtree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

" https://github.com/airblade/vim-gitgutter#to-turn-on-line-highlighting-by-default
let g:gitgutter_highlight_lines = 1
