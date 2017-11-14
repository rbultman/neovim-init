call plug#begin('~/.local/share/nvim/plugged')

" misc stuff used by other plugins from xolox
Plug 'xolox/vim-misc'

" git plugin
Plug 'tpope/vim-fugitive'

" put a list of the current tags in a sidebar
Plug 'majutsushi/tagbar'

" automatic closing of quotes, parenthesis, brackets, etc.
Plug 'Raimondi/delimitMate'

" plugin to make handle comments easier
Plug 'tomtom/tcomment_vim'

" presents a tree for opening files
Plug 'scrooloose/nerdtree'

" workspace management
Plug 'thaerkh/vim-workspace'

" make node programming easier.
Plug 'moll/vim-node'

" Enhanced JavaScript Syntax for Vim
Plug 'jelera/vim-javascript-syntax'

" Syntastic
Plug 'scrooloose/syntastic'

" the framework
Plug 'roxma/nvim-completion-manager'

" Colors
Plug 'altercation/vim-colors-solarized'

" tab stuff
Plug 'mkitt/tabline.vim'

" vim defaults from Tim Pope
Plug 'tpope/vim-sensible'

" Smart Tabline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

filetype plugin indent on

set mouse=a

syntax enable

" set-related settings
set showtabline=2
set history=500
set ruler
set laststatus=2
set cursorline cursorcolumn
" Highlight all words from the last search
set incsearch
set showmatch
set hls
" keep some lines above and below the cursor
set scrolloff=3
set showmode
set showcmd
set hidden
set modelines=0

" vim-session
let g:session_autosave='yes'
let g:session_autoload = 'yes'
let g:session_directory='./'

" Appearance
set background=dark
set t_Co=256
" let g:solarized_termtrans=1
let g:solarized_termcolors=256
colorscheme solarized
let g:airline_theme='solarized'

" Mappings
" map <C-t> :tabnew <Enter> <- conflicts with return from tab stack
let mapleader=","
" Map :Q map to :q and :W to :w
command! Q q
command! W w
map <C-o> :NERDTree<Enter>
map <leader>b :TagbarToggle<Enter>
map <leader>n :tabnew<cr>
map <leader>x :q<cr>
map <leader>o :NERDTree<cr>
map <leader>f :CommandT<cr>

" Junk for vim-workspace
nnoremap <leader>s :ToggleWorkspace<CR>
