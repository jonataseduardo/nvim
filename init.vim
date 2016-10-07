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

 "Ipython Plugin
 Plug 'bfredl/nvim-ipy'

 "Git integration 
 Plug 'tpope/vim-fugitive'

 " eye candy
 Plug 'vim-airline/vim-airline'

 " Add plugins to &runtimepath
 call plug#end()


 "Plugins configuration
  
 "airline use poweline fonts
 let g:airline_powerline_fonts=1

 "R plugin vertival split
 let R_vsplit=1
