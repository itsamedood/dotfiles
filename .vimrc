" === PLUGINS === "
call plug#begin()
    " Cool stuff.
    Plug 'vim-airline/vim-airline-themes'
    Plug 'nelstrom/vim-markdown-folding'
    Plug 'tpope/vim-markdown'
    Plug 'vim-airline/vim-airline'
    Plug 'preservim/nerdtree'
    Plug 'ctrlpvim/ctrlp.vim'
    Plug 'alvan/vim-closetag'
    Plug 'jiangmiao/auto-pairs'
    Plug 'christoomey/vim-tmux-navigator'
    Plug 'sonph/onehalf', { 'rtp': 'vim' }

    " Git.
    Plug 'tpope/vim-fugitive'
    Plug 'airblade/vim-gitgutter'
    Plug 'Xuyuanp/nerdtree-git-plugin'

    " Languages.
    Plug 'rust-lang/rust.vim' " Rust.
    Plug 'jdonaldson/vaxe' " Haxe.
    Plug 'editorconfig/editorconfig-vim' " EditorConfig (not really a language but shut up).

    " Themes.
    Plug 'morhetz/gruvbox'
    Plug 'dracula/vim', { 'as': 'dracula' }
call plug#end()

execute pathogen#infect()

" === OPTIONS === "
set guifont=Monaco:h14  " Set default font & size.
set background=dark     " Enable dark mode.
set nocompatible	    " Required for Vim coolness.
set autochdir           " Make Vim's CD follow you when you change directories.
set encoding=utf-8      " Uses UTF-8 encoding.
set nobk			    " Don't create backup files.
set ai				    " Turn on auto indentation.
set si				    " Turn on smart indent.
set ru				    " Turn on the ruler.
set sc				    " Show commands.
set smarttab		    " Turn on smart tabs.
set expandtab           " Expand tabs to spaces.
set tabstop=4			" TAB becomes X spaces.
set softtabstop=4		" TAB becomes X spaces in Vim operations.
set shiftwidth=4		" Number of spaces for indentation.
set bsdir=last			" Go to last folder when browsing.
set hlsearch			" Highlight search results.
set incsearch			" Turn on incremental searching.
set history=100			" Keep X commands in history.
set number			    " Turn on line numbers.
set t_Co=256			" Enable 256 colors.
set foldenable          " Enable Markdown folding.
set laststatus=2        " Make airline appear all the time.
set noswapfile          " This disables the swap file and puts all data in memory.
set lines=999 columns=9999 " Yes.
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" === MAPS === "
map <F6> :NERDTreeToggle<CR>
map <F7> <Esc>:setlocal spell spelllang=en_us<CR>
map <F8> <Esc>:setlocal nospell<CR>

" Gruvbox.
nnoremap <silent> [oh :call gruvbox#hls_show()<CR>
nnoremap <silent> ]oh :call gruvbox#hls_hide()<CR>
nnoremap <silent> coh :call gruvbox#hls_toggle()<CR>

nnoremap * :let @/ = ""<CR>:call gruvbox#hls_show()<CR>*
nnoremap / :let @/ = ""<CR>:call gruvbox#hls_show()<CR>/
nnoremap ? :let @/ = ""<CR>:call gruvbox#hls_show()<CR>?

" === OTHER === "
" Show word count.
let g:airline#extensions#wordcount#enabled = 1
let g:airline_left_sep=''
let g:airline_right_sep=''

" Syntastic.
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" NerdTree.
let NERDTreeIgnore = [ '__pycache__', '\.pyc$', '\.o$', '\.swp',  '*\.swp',  'node_modules/' ]

" You Complete Me.
let g:ycm_key_list_select_completion = [ '<C-n>', '<Down>' ]
let g:ycm_key_list_previous_completion = [ '<C-p>', '<Up>' ]
let g:SuperTabDefaultCompletionType = '<C-n>'
let g:ycm_global_ycm_extra_conf = "~/.ycm_extra_conf.py"
let g:ycm_clangd_binary_path = trim(system('brew --prefix llvm')).'/bin/clangd'

" Autopairs.
let g:closetag_filenames = '*.html,*.xhtml,*.xml,*.vue,*.phtml,*.js,*.jsx,*.coffee,*.erb'

" Molokai.
let g:molokai_original = 1

" === COMMANDS & AUTO-COMMANDS ===
"  command! -range=% TR let b:wv = winsaveview() |
"              \ keeppattern <line1>,<line2>s/\s\+$// |
"              \ call winrestview(b:wv)

" Force Airline to refresh after setup so settings work.
:autocmd!
:autocmd VimEnter * :AirlineRefresh

" NerdTree.
autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:stdn_in") | NERDTree | endif

" === OTHER === "
if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    set termguicolors
endif

syntax on
filetype plugin indent on

"   Themes I have:  "
" • gruvbox         "
" • molokai         "
" • onehalf         "
" • dracula         "
colorscheme onehalf
