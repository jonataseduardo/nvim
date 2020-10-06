 call plug#begin('~/.local/share/nvim/plugged')

 " Make sure you use single quotes
 "
 "FastFolding 
 Plug 'Konfekt/FastFold'

 "Folding for python
 Plug 'tmhedberg/SimpylFold'

 " Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
 Plug 'junegunn/vim-easy-align'

 "Latex plugins
 Plug 'lervag/vimtex'
 Plug 'gerw/vim-tex-syntax'

 "Git integration 
 Plug 'tpope/vim-fugitive'
 Plug 'https://github.com/junegunn/vim-github-dashboard.git'

 " eye candy
 Plug 'liuchengxu/eleline.vim'
 " Seamless tmux navigation
 Plug 'christoomey/vim-tmux-navigator'

 " Thresaurus synonyms dictionary (http:thesauarus.com/)
 "Plug 'benshuailyu/online-thesaurus-vim'

 "Assyncrounous grammar checker
 " Plug 'vigoux/LanguageTool.nvim'

 "IndentLine (show vertical lines on indents)
 Plug 'Yggdroot/indentLine'

 " Insert or delete brakets, parens, quotes in pair. 
 Plug 'jiangmiao/auto-pairs'

 " nvim repl
 Plug 'kassio/neoterm'

" Add plugins to &runtimepath
 call plug#end()



"Genaralsettings
set relativenumber
set encoding=utf-8
set incsearch                           "find next match as we type the search
set hlsearch                            "highlight search
set tw=89                               "Break line on column 79
set formatoptions-=t
set visualbell                          "if an error occur the screen will flash
set termguicolors                       "allow better collor terminal 
set background=dark
set timeoutlen=1000 ttimeoutlen=0
set clipboard+=unnamedplus

set showcmd
set showmode

" Better visualization of tabset
set nolist                               "hide invisible characters

" Indent settings
set tabstop=2                           "tabspace = 2
set shiftwidth=2                        "spaces = 2 for >> or << or ==
set expandtab                           "insert tab as spaces

set viminfo='10,\"30,:100,%,n~/viminfo

" Accessibility and miscellaneous 
set history=200
set mouse=a

set wildmode=list:longest       "make cmdline tab completion similar to bash
set wildmenu                    "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~     "stuff to ignore when tab completing

" Allow backspacing on everything in insert mode
set backspace=indent,eol,start

" Save with w!! files with sudo permition
cnoremap w!! execute 'silent! write sudo tee % >/dev/null' <bar> edit!

" Spell
noremap <leader><F12> :setlocal spell! spelllang=pt<cr>
noremap <F12> :setlocal spell! spelllang=en<cr>

" Setting things to move around using vim spirit
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>

" Help to navigate on long lines
nnoremap j gj
nnoremap k gk

" Coping to the end of line
nnoremap Y y$

"Buffer navigation
nnoremap <leader>b :ls<cr>:buffer 
nnoremap <leader>q :bd<cr>

" from h terminal-input
" To map <Esc> to exit terminal-mode: >
tnoremap <Esc> <C-\><C-n>

"To simulate |i_CTRL-R| in terminal-mode: >
tnoremap <expr> <C-R> '<C-\><C-N>"'.nr2char(getchar()).'pi'

"To use `CTRL+{h,j,k,l}` to navigate windows from any mode: >
tnoremap <C-h> <C-\><C-N><C-w>h
tnoremap <C-j> <C-\><C-N><C-w>j
tnoremap <C-k> <C-\><C-N><C-w>k
tnoremap <C-l> <C-\><C-N><C-w>l
inoremap <C-h> <C-\><C-N><C-w>h
inoremap <C-j> <C-\><C-N><C-w>j
inoremap <C-k> <C-\><C-N><C-w>k
inoremap <C-l> <C-\><C-N><C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" #### Plugins configurations #####

"eleline use poweline fonts
set laststatus=2 
let g:eleline_powerline_fonts = 1

" Easy Align
" Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

"" ### Latex conceal  for indentLine###
let g:tex_conceal="" 

"Fast Fold 
nmap zuz <Plug>(FastFoldUpdate)
let g:fastfold_savehook = 1
let g:fastfold_fold_command_suffixes =  ['x','X','a','A','o','O','c','C']
let g:fastfold_fold_movement_commands = [']z', '[z', 'zj', 'zk']
let g:markdown_folding = 1
let g:tex_fold_enabled = 1
let g:vimsyn_folding = 'af'
let g:xml_syntax_folding = 1
let g:javaScript_fold = 1
let g:sh_fold_enabled= 7
let g:ruby_fold = 1
let g:perl_fold = 1
let g:perl_fold_blocks = 1
let g:r_syntax_folding = 1
let g:rust_fold = 1
let g:php_folding = 1

let g:SimpylFold_docstring_preview = 1
let g:SimpylFold_fold_import = 1

" Adding a colorscheme to Slim
au BufNewFile,BufRead *.slim set filetype=c

" Vimtex tex_flavor 
let g:tex_flavor = 'latex'

"Neoterm 
let g:neoterm_default_mod = 'vertical' 
" This is not working (dont know why)
" let g:neoterm_direct_open_repl = 1
" let g:neoterm_repl_python = 'ipython'
" let g:neoterm_repl_enable_ipython_paste_magic = 0

"Workaround to open ipython and r in the right split' 
au FileType python nnoremap <leader>s :T ipython --no-autoindent<CR><C-w>R
au FileType r nnoremap <leader>s :T R<CR><C-w>R
nnoremap <leader>q :Tclose<CR>
nnoremap <Space> :TREPLSendLine<CR>
vnoremap <Space> :TREPLSendSelection<CR> 

"let g:neoterm_size=40

""Grammar checker
" let g:languagetool_server='$HOME/languagetool/languagetool-standalone/target/LanguageTool-4.7-SNAPSHOT/LanguageTool-4.7-SNAPSHOT/languagetool-server.jar'
