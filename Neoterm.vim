"Neoterm  config
let g:neoterm_default_mod = 'vertical' 
" This is not working (dont know why)
" let g:neoterm_direct_open_repl = 1
" let g:neoterm_repl_python = 'ipython'
" let g:neoterm_repl_enable_ipython_paste_magic = 0
" let g:neoterm_size=40

"Workaround to open ipython and r in the right split' 
au FileType python nnoremap <leader>s :T ipython --no-autoindent<CR><C-w>R
au FileType r nnoremap <leader>s :T R<CR><C-w>R
au FileType sh nnoremap <leader>s :Tnew<CR><C-w>R
nnoremap <leader>q :Tclose<CR>
nnoremap <Space> :TREPLSendLine<CR>
vnoremap <Space> :TREPLSendSelection<CR> 
