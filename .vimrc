" =============================================================================
"                                  VUNDLE
" ============================================================================ 

" ================================Set up==================================

set nocompatible              " be iMproved, required
set autowrite

" handles confirmation dialogs
set confirm

filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" =================================Plugins================================

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" My favourite theme
" Plugin 'flazz/vim-colorschemes'

" Alternate theme
Plugin 'gkapfham/vim-vitamin-onec'

" To easily browse files 
Plugin 'scrooloose/nerdtree'

" Autocomplete enclosures
Plugin 'jiangmiao/auto-pairs'

" Vue
" Plugin 'posva/vim-vue'

" Syntax highlighting and improved indentation for JavasScript
Plugin 'pangloss/vim-javascript'

" Asynchronous Linting Enginer
Plugin 'w0rp/ale'

" Status Line plugin
Plugin 'vim-airline/vim-airline'

" Nice start screen plus session support
Plugin 'mhinz/vim-startify'

" Pep 8ing Python
Plugin 'nvie/vim-flake8'

" Autofix pip8 errors
Plugin 'tell-k/vim-autopep8'

" For linting
" Plugin 'scrooloose/syntastic'

" For syntax 
" Plugin 'vim-syntastic/syntastic'

" For asynchronous syntax
" Plugin '

" To do git stuff inside vim
" Plugin 'tpope/vim-fugitive'

" Treat jsx files as js files for linting
Plugin 'mxw/vim-jsx'

" Easily toggle comments
Plugin 'scrooloose/nerdcommenter'

" Easy surround with braces/paranthesis
Plugin 'tpope/vim-surround'

Plugin 'neovimhaskell/haskell-vim'
" Code completion as you type
" Plugin 'Valloric/YouCompleteMe'

" Show Git diff
" Plugin 'airblade/vim-gitgutter'

" Use eslint in node_modules instead of global
" Plugin 'mtscout6/syntastic-local-eslint.vim'

" Mostly because I want to see the git branch on the status line
" Plugin 'vim-airline/vim-airline'

" For tsuquyomi
" Plugin 'Shougo/vimproc.vim'

" Turn vim into a typescript ide
" Plugin 'Quramy/tsuquyomi'

" Syntax highlighting for Typescript
" Plugin 'leafgarland/typescript-vim'

" Proper indentation for tsx files
" Plugin 'ianks/vim-tsx'

" Elixir support
" Plugin 'elixir-lang/vim-elixir'

" Fuzzy Finder Ctrl-p for searching for files
" Plugin 'ctrlpvim/ctrlp.vim'

" Tagbar plugin for browsing ctags
Plugin 'majutsushi/tagbar'

" =================================Finish up==============================

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" =============================================================================
"                                  VUNDLE
" ============================================================================ 

" =============================================================================
"                             MY COMMANDS
" =============================================================================

" ============================Change Defaults=============================

" Make backspace work normally when in insert mode
set backspace=indent,eol,start

" Don't automatically insert comments, messes up copy paste
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" ============================File Indentation============================

" By default, the indent is 2 spaces
set shiftwidth=2
set softtabstop=2

" replace tabs with spaces 
set expandtab

" set tabstop=2

" Display tabs so you don't forget to remove them
set list

" ============================Set up the UI===============================

" Set colour scheme
syntax on
" set termguicolors
" colorscheme evening
colorscheme vitaminonec

" Show line numbers by default
set number

" Indicate 80 characters mark
set colorcolumn=80

" 80 characters column colour
highlight ColorColumn ctermbg=DarkGrey

" EOL character's colour
" highlight NonText ctermfg=Cyan

" ============================Code Folding================================

" Fold based on indentation
set foldmethod=indent

" Don't fold by default
set nofoldenable

" ============================Movements===================================

" Move to the beginning/end of line
nnoremap bl ^
nnoremap el $

" ============================Shortcuts===================================

" Change the mapleader from \ to '
let mapleader="'"

" nm is <escape> when in insert and visual mode
inoremap nm <esc>
vnoremap nm <esc>

" Easily display NerdTree 
map <F3> :NERDTreeToggle<CR>

" Easily shift between panes 
nnoremap <F8> <C-w>w 

" Easily save changes to file 
map <leader>s :up<CR>

" Autoformat current file
nnoremap <leader>f mkgg=G'k

" map <F2> to tagbar toggle in normal mode
nmap <F2> :TagbarToggle<CR>

" Save and quit
map <leader>wq :wq<CR>

" Quit without saving
map <leader>q :q!<CR>

" Replace tabs with spaces
map <leader>ts  mk:%s/\t/  /g<CR>'k

" Quick access to Fugitives
map <leader>gs :Gstatus<CR>
map <leader>gc :Gcommit<CR>
map <leader>gp :! git push

" Toggle comments
map <leader>c :call NERDComment(0,"toggle")<CR>

" Refresh current buffer if it has been externally modified
map <leader>r :edit! <CR>

" Toggle code fold for current block
nnoremap f za

" Unfold all folded blocks 
nnoremap uf zO

" Lint typescript files
map <leader>tl :let g:syntastic_typescript_checkers = ['tslint'] <CR>

" Check for typescript compilation errors
map <leader>tc :let g:syntastic_typescript_checkers = ['tsuquyomi'] <CR>

" ============================Configure Nerd Tree=========================


" ============================Configure Ctrl-p=========================
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'



" ============================Configure vim autosave=========================
let g:auto_save = 1
let g:auto_save_no_updatetime = 1
let g:auto_save_in_insert_mode = 0
" Show hidden files by default
let NERDTreeShowHidden=1

" ============================Configure Nerd Commenter====================

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" ============================Configure Syntastic=========================

" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_loc_list_height = 5
" let g:syntastic_auto_loc_list = 0
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 1
" let g:syntastic_check_on_up = 1
" let g:syntastic_javascript_checkers = ['eslint']
" let g:syntastic_typescript_checkers=['tsuquyomi']

" let g:syntastic_error_symbol = '❌'
" let g:syntastic_style_error_symbol = '🔴'
" let g:syntastic_warning_symbol = '⚠️'
" let g:syntastic_style_warning_symbol = '💩'

" highlight link SyntasticErrorSign SignColumn
" highlight link SyntasticWarningSign SignColumn
" highlight link SyntasticStyleErrorSign SignColumn
" highlight link SyntasticStyleWarningSign SignColumn

" Dont show quick fix window, it's annoying
let g:tsuquyomi_disable_quickfix = 1

" ============================Configure YCM===============================

" The preview window is too distracting
set completeopt-=preview

" Use eslint linter with javascript
let g:ale_linters = {'javascript': ['prettier', 'eslint']}

" Add fixer
let g:ale_fixers = ['prettier', 'eslint']

" show linting errors on status line
let g:airline#extensions#ale#enabled = 1

" keep gutter sign always open
let g:ale_sign_column_always = 1

" let g:ale_javascript_prettier_options = ' --stdin\ --parser\ flow\ --single-quote\ --trailing-comma\ all\ --no-bracket-spacing'

" Remap vim-autopep8 autofix key
autocmd FileType python noremap <buffer> <F9> :call Autopep8()<CR>
set shiftwidth=4

" persist startify sessions
" let g:startify_session_persistence = 1


map <leader>f :ALEFix<CR>

set vb t_vb=
" =============================================================================
"                             MY COMMANDS 
" =============================================================================
