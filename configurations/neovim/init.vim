" #########################
" # Plugins Configuration #
" #########################
call plug#begin()
Plug 'bkad/CamelCaseMotion'
Plug 'kien/ctrlp.vim'
Plug 'zchee/deoplete-jedi'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'scrooloose/nerdtree'
Plug 'bling/vim-airline'
Plug 'altercation/vim-colors-solarized'
Plug 'arugifa/vim-flake8'
" Plug 'airblade/vim-gitgutter'
Plug 'jparise/vim-graphql'
Plug 'sickill/vim-monokai'
Plug 'hashivim/vim-terraform'
call plug#end()

" Deoplete
" ========
" Activate plugin.
let g:deoplete#enable_at_startup = 1
" Use locally installed version of Python Neovim.
let g:python3_host_prog = '/usr/bin/python3'
" Close preview window of function definition after auto-completion is done.
autocmd CompleteDone * silent! pclose!

" CamelCaseMotion
" ===============
" Use default mappings.
call camelcasemotion#CreateMotionMappings('<leader>')

" NERD Tree
" =========
" Open/close the three panel.
map <C-n> :NERDTreeToggle<CR>
" Find the currently opened file in the tree panel.
map <C-f> :NERDTreeFind<CR>
" Show dot files.
let NERDTreeShowHidden=1

" CtrlP
" =====
" Set local working directory to one of the ancestors of the current file.
let g:ctrlp_working_path_mode = 'ra'
" Set the maximum number of results to display.
let g:ctrlp_match_window = 'max:50'
" Start CtrlP in find buffer mode.
map <C-b> :CtrlPBuffer<CR>

" Flake8
" ======
" Display error markers in gutter.
let g:flake8_show_in_gutter=1
" Display error locations in file.
let g:flake8_show_in_file=1
" Do not show error descriptions in a new window.
let g:flake8_show_quickfix=0

" VIM Colors Solarized
" ====================
" Use Solarized theme.
colorscheme solarized
" Default background.
set background=dark
" Change theme's color.
call togglebg#map("<F2>")


" ########################
" # Global Configuration #
" ########################

" Layout
" ======
" Show the status bar as the second last line in the editor window.
set laststatus=2

" Displaying
" ==========
" Enable syntax colorization.
syntax enable
" Display line numbers.
set number
" Display tabs and spaces.
set list
" Characters used to display tabs and spaces.
set listchars=tab:>.,trail:.
" Highlight the maximum line length column.
set colorcolumn=+1

" Editing
" =======
" Replace tabs by spaces.
set expandtab
" Number of spaces to use for indentation.
set shiftwidth=4
" Number of spaces to use for tabulations (not for indentation).
set tabstop=4

" Search
" ======
" Ignore upper/lower case when searching.
set ignorecase
" Show partial matches for a search phrase.
set incsearch
" Highlight all matching phrases.
set hlsearch


" ########################
" # Custom Configuration #
" ########################

" Import custom configuration if exists.
if filereadable(glob("~/.config/nvim/custom.vim"))
    source ~/.config/nvim/custom.vim
endif
