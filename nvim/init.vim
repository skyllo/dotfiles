call plug#begin('~/.vim/plugged')

" Sensible defaults
Plug 'tpope/vim-sensible'

" Vim tree
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
autocmd StdinReadPre * let s:std_in=1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <C-l> :NERDTreeToggle<CR>

" Git
Plug 'tpope/vim-fugitive'

" Status bar
Plug 'bling/vim-airline'

" Multiple cursors
Plug 'terryma/vim-multiple-cursors'

" Autocomplete
Plug 'Valloric/YouCompleteMe'

" Syntastic
Plug 'scrooloose/syntastic'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1

" Fuzzy file finder
Plug 'kien/ctrlp.vim'

call plug#end()
