 call plug#begin('~/.local/share/nvim/plugged')

 " FastFolding 
 Plug 'Konfekt/FastFold'

 " Folding for python
 Plug 'tmhedberg/SimpylFold'

 " Neovim language server
 Plug 'neovim/nvim-lspconfig'
 Plug 'nvim-lua/completion-nvim'
 Plug 'nvim-lua/diagnostic-nvim'
 Plug 'nvim-lua/lsp-status.nvim'

 "Better highligth
 Plug 'nvim-treesitter/nvim-treesitter'

 " Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
 Plug 'junegunn/vim-easy-align'

 "Latex plugins
 Plug 'lervag/vimtex'
 Plug 'gerw/vim-tex-syntax'

 "Git integration 
 Plug 'tpope/vim-fugitive'
 Plug 'https://github.com/junegunn/vim-github-dashboard.git'

 " Status bar 
 Plug 'liuchengxu/eleline.vim'

 " Seamless tmux navigation
 Plug 'christoomey/vim-tmux-navigator'

 " Thresaurus synonyms dictionary (http:thesauarus.com/)
 "Plug 'benshuailyu/online-thesaurus-vim'

 "Assyncrounous grammar checker
 Plug 'dpelle/vim-LanguageTool'

 "IndentLine (show vertical lines on indents)
 Plug 'Yggdroot/indentLine'

 " Insert or delete brakets, parens, quotes in pair. 
 Plug 'jiangmiao/auto-pairs'

 " Neovim repl
 Plug 'kassio/neoterm'

 " Python auto-formater
 Plug 'python/black'

" Add plugins to &runtimepath
 call plug#end()
 
source $HOME/.config/nvim/basic.vim
source $HOME/.config/nvim/vim-tmux-navigator.vim
source $HOME/.config/nvim/eleline.vim
source $HOME/.config/nvim/vim-easy-align.vim
source $HOME/.config/nvim/identLine.vim
source $HOME/.config/nvim/FastFold.vim
source $HOME/.config/nvim/SimpylFold.vim
source $HOME/.config/nvim/Vimtex.vim
source $HOME/.config/nvim/Neoterm.vim
source $HOME/.config/nvim/black.vim
source $HOME/.config/nvim/LanguageTool.vim

lua require("lsp_config")
