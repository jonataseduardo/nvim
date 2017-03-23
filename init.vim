 call plug#begin('~/.config/nvim/plugged')

 " Make sure you use single quotes

 " Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
 Plug 'junegunn/vim-easy-align'

 " Any valid git URL is allowed
 Plug 'https://github.com/junegunn/vim-github-dashboard.git'

 " Group dependencies, vim-snippets depends on ultisnips
 Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

 " On-demand loading
 Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

 "R-vim plugin
 Plug 'jalvesaq/Nvim-R'

 "Latex plugin 
 Plug 'LaTex-Box-Team/LaTex-Box'

 "Send lines to client in terminal 
 Plug 'jalvesaq/vimcmdline'

 "Git integration 
 Plug 'tpope/vim-fugitive'

 " eye candy
 Plug 'vim-airline/vim-airline'

 " Auto complete
 Plug 'Valloric/YouCompleteMe'

 " Seamless tmux navigation
 Plug 'christoomey/vim-tmux-navigator'

 " Thresaurus synonyms dictionary (http:thesauarus.com/)
 Plug 'beloglazov/vim-online-thesaurus'

 " Add plugins to &runtimepath
 call plug#end()


"Plugins configuration
 
"airline use poweline fonts
let g:airline_powerline_fonts=1

"R plugin vertival split
let R_vsplit=1
let R_assign=0

" Easy Align
" Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" vimcmdline options
let cmdline_vsplit = 1        " Split the window vertically
let cmdline_esc_term = 1      " Remap <Esc> to :stopinsert in Neovim terminal
let cmdline_in_buffer = 0     " Start the interpreter in a Neovim buffer
let cmdline_term_height = 15  " Initial height of interpreter window or pane
let cmdline_term_width = 80   " Initial width of interpreter window or pane
let cmdline_tmp_dir = '/tmp'  " Temporary directory to save files
let cmdline_outhl = 1         " Syntax highlight the output

if &t_Co == 256
  let cmdline_color_input = 247
  let cmdline_color_normal = 39
  let cmdline_color_number = 51
  let cmdline_color_integer = 51
  let cmdline_color_float = 51
  let cmdline_color_complex = 51
  let cmdline_color_negnum = 183
  let cmdline_color_negfloat = 183
  let cmdline_color_date = 43
  let cmdline_color_true = 78
  let cmdline_color_false = 203
  let cmdline_color_inf = 39
  let cmdline_color_constant = 75
  let cmdline_color_string = 79
  let cmdline_color_stderr = 33
  let cmdline_color_error = 15
  let cmdline_color_warn = 1
  let cmdline_color_index = 186
endif

"Genaralsettings
set encoding=utf-8
set incsearch                           "find next match as we type the search
set hlsearch                            "highlight search
set tw=79                               "Break line on column 79
set visualbell                          "if an error occur the screen will flash
set t_Co=256                            "allow 256 collor terminal 
set background=dark
set timeoutlen=1000 ttimeoutlen=0

set showcmd
set showmode

" Better visualization of tabset
set nolist                               "hide invisible characters
"set list                                "show invisible characters
"set listchars=tab:▸-,trail:¬
"set listchars=tab:▸-,eol:¬

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

" Spell
noremap <F12> :setlocal spell! spelllang=pt<cr>
noremap <leader><F12> :setlocal spell! spelllang=en<cr>

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

" Splitting Widows and Navigating
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" Coping to the end of line
nnoremap Y y$

"Buffer navigation
nnoremap <leader>b :ls<cr>:buffer 
nnoremap <leader>q :bd<cr>


"Make ultisnips and ycm compatible


" Vim  
"=============================================================================
augroup file_vim
    autocmd!
    autocmd Filetype vim
        \:set number
        \:set cindent                   "use cindent only on c or cpp files 
        \:set fdm=indent                "fold by indetention
        \:set foldcolumn=3
        \:match ErrorMsg '\%>80v.\+'    "Highlight lines longer than 80 columns 
augroup END
"=============================================================================


"  C, C++
"=============================================================================
augroup file_clike
    autocmd!
    autocmd Filetype c,cpp 
        \:set cindent                   "use cindent only on c or cpp files 
        \:set fdm=indent                "fold by indetention
        \:match ErrorMsg '\%>80v.\+'    "Highlight lines longer than 80 columns 
    "autocmd BufNewFile,BufRead *c,*cpp,*h,*hpp
        "\:normal gg=G
     autocmd Filetype c,cpp hi Conceal ctermbg=NONE ctermfg=White
     autocmd Filetype c,cpp set cole=1 " conceal level
     autocmd Filetype c,cpp set cocu=n " conceal cursor normal 
     " Conceal in tex file: admgs, a=accents, d=delimiters, m=math symbols,
     " g=Greek, s=superscripts/subscripts:
     autocmd Filetype c,cpp let g:tex_conceal="adgm"
augroup END
"=============================================================================



" Python
"=============================================================================
augroup python
    autocmd!
    autocmd Filetype py
        \:set smartindent,
        \:set fdm=indent,                "fold by indetention
        \:match ErrorMsg '\%>80v.\+',    "Highlight lines longer than 80 columns 
        \:let g:flake8_ignore="C901"
        "\:let g:flake8_max_complexity=10
augroup END
