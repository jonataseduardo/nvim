" === completion-nvim ===
au Filetype lua setl omnifunc=v:lua.vim.lsp.omnifunc

set completeopt=menuone,noinsert,noselect
set completeopt-=i,t,preview
set pumheight=10
set shortmess+=c

let g:completion_chain_complete_list = {
  \ 'default': [
  \    {'complete_items': ['lsp']},
  \    {'complete_items': ['buffers']}
  \  ]}
let g:completion_matching_smart_case = 1

" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

