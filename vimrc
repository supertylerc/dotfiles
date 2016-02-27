set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Vundle
" let Vundle manage Vundle
Bundle 'gmarik/vundle'
"" Additional Bundles
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/nerdtree'
Bundle 'klen/python-mode'
Bundle 'davidhalter/jedi-vim'
Bundle 'christoomey/vim-tmux-navigator'
Bundle 'stephenmckinney/vim-solarized-powerline'

" Indention based on filetype
filetype plugin indent on

" Line numbers
set number

" Syntax Highlighting
syntax on

" Indicate cursor location
set cursorline

" Keep 3 lines for context
set scrolloff=3

" Case sensitivity
set ignorecase
set smartcase

" Spaces > Tabs
set tabstop=4
set shiftwidth=4
set expandtab

" Highlight characters past column 99
augroup vimrc_autocmds
  autocmd!
  autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=Black
  autocmd FileType python match Excess /\%99v.\+/
  autocmd FileType python set nowrap
  augroup END

" Powerline setup
set guifont=Sauce\ Code\ Powerline\ Regular\ 14
set laststatus=2
let g:Powerline_theme='short'
let g:Powerline_colorscheme='solarized256_dark'

" Key mappings
"" Map NerdTree to F2
map <F2> :NERDTreeToggle<CR>
"" Toggle display of whitespace
nmap <leader>l :set list!<CR>
"" Toggle relative line numbers
nmap <C-N><C-N> :set invrelativenumber<CR>
"" Sane split navigation (better tmux integration, too)
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" python-mode
let g:pymode_rope = 0
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'
let g:pymode_lint = 1
let g:pymode_lint_checker = ["pyflakes", "pep8"]
let g:pymode_lint_write = 1
let g:pymode_virtualenv = 1
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = '<leader>b'
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all
let g:pymode_folding = 0
let g:pymode_lint_config = '$HOME/.pylint.rc'
let g:pymode_options_max_line_length=79

" ruby
