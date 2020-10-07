"Genaral settings
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
noremap <leader>lp :setlocal spell! spelllang=pt<cr>
noremap <leader>le :setlocal spell! spelllang=en<cr>

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

" Adding a colorscheme to Slim
au BufNewFile,BufRead *.slim set filetype=c
