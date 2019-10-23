 call plug#begin('~/.config/nvim/plugged')

 " Make sure you use single quotes

 " Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
 Plug 'junegunn/vim-easy-align'

 " Any valid git URL is allowed
 Plug 'https://github.com/junegunn/vim-github-dashboard.git'

 " Group dependencies, vim-snippets depends on ultisnips
 "Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

 "R-vim plugin
 Plug 'jalvesaq/Nvim-R'

 "Send lines to client in terminal 
 Plug 'jalvesaq/vimcmdline'

 "Latex plugin 
 Plug 'LaTex-Box-Team/LaTex-Box'

 "Git integration 
 Plug 'tpope/vim-fugitive'

 " eye candy
 Plug 'liuchengxu/eleline.vim'

 " Seamless tmux navigation
 Plug 'christoomey/vim-tmux-navigator'

 " Thresaurus synonyms dictionary (http:thesauarus.com/)
 Plug 'beloglazov/vim-online-thesaurus'

 " falcon colorscheme
 Plug 'fenetikm/falcon'

 " build coc from source code
 Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}

" Add plugins to &runtimepath
 call plug#end()



"Genaralsettings
set encoding=utf-8
set incsearch                           "find next match as we type the search
set hlsearch                            "highlight search
set tw=79                               "Break line on column 79
set visualbell                          "if an error occur the screen will flash
set termguicolors                       "allow better collor terminal 
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

let g:falcon_background = 0
let g:falcon_inactive = 1
colorscheme falcon

set laststatus=2 
"eleline use poweline fonts
let g:eleline_powerline_fonts = 1

"### Nvim-R  ### 
let R_assign=0                  "_ will not maps into <-  
let R_nvimpager='horizontal'   " open help with a horizontal split
let R_complete = 1 " Include names of objects if there is no argument
vnoremap <Space> <Plug>RDSendSelection
nnoremap <Space> <Plug>RDSendLine

" Easy Align
" Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" ### vimcmdline ### 
"
" vimcmdline mappings
let cmdline_map_start          = '<LocalLeader>'
let cmdline_map_send           = '<Space>'
let cmdline_map_send_and_stay  = '<LocalLeader><Space>'
let cmdline_map_source_fun     = '<LocalLeader>f'
let cmdline_map_send_paragraph = '<LocalLeader>p'
let cmdline_map_send_block     = '<LocalLeader>b'
let cmdline_map_quit           = '<LocalLeader>q'

" vimcmdline options
let cmdline_vsplit      = 1      " Split the window vertically
let cmdline_esc_term    = 1      " Remap <Esc> to :stopinsert in Neovim's terminal
let cmdline_in_buffer   = 1      " Start the interpreter in a Neovim's terminal
let cmdline_term_height = 15     " Initial height of interpreter window or pane
let cmdline_term_width  = 80     " Initial width of interpreter window or pane
let cmdline_tmp_dir     = '/tmp' " Temporary directory to save files
let cmdline_outhl       = 1      " Syntax highlight the output
let cmdline_auto_scroll = 1      " Keep the cursor at the end of terminal (nvim)

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

"Set ipython2 for python for now
let cmdline_app           = {}
let cmdline_app['python'] = 'ipython'

"" ### LatexBox ###
"let g:LatexBox_latexmk_async=1
"let g:LatexBox_quickfix=2
"let g:LatexBox_fold_text=1
"let g:LatexBox_fold_envs=1

" Adding a colorscheme to Slim
au BufNewFile,BufRead *.slim set filetype=c

" ######################"
" ### vim coc config ###"
" ######################"

"if hidden is not set, TextEdit might fail.
set hidden

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=2

" Smaller updatetime for CursorHold & CursorHoldI
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[c` and `]c` to navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add diagnostic info for https://github.com/itchyny/lightline.vim
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'cocstatus', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'cocstatus': 'coc#status'
      \ },
      \ }



" Using CocList
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

"Highlight json for coc 
autocmd FileType json syntax match Comment +\/\/.\+$+

" ref:https://github.com/neoclide/coc.nvim/wiki/Completion-with-sources
" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

" use <c-space>for trigger completion
inoremap <silent><expr> <c-space> coc#refresh()
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

" ref:https://github.com/neoclide/coc.nvim/wiki/Using-snippets
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : 
                                           \"\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'

let g:python3_host_prog = '/home/jonatas/.pyenv/versions/neovim3/bin/python'
let g:python_host_prog = '/home/jonatas/.pyenv/versions/neovim2/bin/python' 
