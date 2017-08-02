" Turn on syntax highlighting 
syntax on
" Set colors to use 256 color palette
set t_Co=256
" Set colorscheme
colorscheme industry

filetype plugin indent on
" Show existing tab with 4 spaces width
set tabstop=4
" When indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

" Use system clipboard as default copy register
set clipboard=unnamed

" Highlight search terms instead of just moving cursor
set hlsearch
" Highlight search terms as they are typed
set incsearch

" Add command to override write permissions
cnoremap w!! w !sudo tee % >/dev/null
