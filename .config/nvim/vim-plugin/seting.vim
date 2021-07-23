" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'

call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'


" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-default branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }



" vim airline  
Plug 'vim-airline/vim-airline'

" gruvbox  
Plug 'gruvbox-material/vim', {'as': 'gruvbox-material'}

" syntastic chek 
Plug 'scrooloose/syntastic'

" vim Icon
Plug 'ryanoasis/vim-devicons'

" indent line
Plug 'yggdroot/indentline'

"comment 
Plug 'tomtom/tcomment_vim'

" auto {} 90 " "  
Plug 'jiangmiao/auto-pairs'


" git line 
Plug 'airblade/vim-gitgutter'

" project
Plug 'mhinz/vim-startify'

" " ''" 
Plug 'tpope/vim-surround'

" vim pop-up termail
Plug 'voldikss/vim-floaterm'


"Plug 'ycm-core/YouCompleteMe'
"
"vim plueing  LSP
" Plug 'prabirshrestha/vim-lsp'
" Plug 'mattn/vim-lsp-settings'

Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'

Plug 'majutsushi/tagbar'

Plug 'honza/vim-snippets'

"qqPlug 'sirver/ultisnips'

" If you don't have nodejs and yarn
" use pre build, add 'vim-plug' to the filetype list so vim-plug can update this plugin
" see: https://github.com/iamcco/markdown-preview.nvim/issues/50
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
" If you have nodejs and yarn
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

"nvim 0.5 lsp
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'

" nvim-telescope 
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'



" Initialize plugin system

call plug#end()
