call plug#begin()
" ==================================
"         Theme
" ==================================
 Plug 'bluz71/vim-nightfly-guicolors'
 Plug 'morhetz/gruvbox'
 Plug 'itchyny/lightline.vim'
 Plug 'chriskempson/base16-vim'
 Plug 'norcalli/nvim-colorizer.lua'
 Plug 'lifepillar/vim-solarized8'
 Plug 'sonph/onehalf', { 'rtp': 'vim' }
 Plug 'arcticicestudio/nord-vim'
 Plug 'drewtempelmeyer/palenight.vim'
 Plug 'NLKNguyen/papercolor-theme'
 Plug 'powerline/fonts'
 Plug 'gkjgh/cobalt'
 Plug 'sickill/vim-monokai'

 Plug 'yuttie/hydrangea-vim'

 Plug 'Mizux/vim-colorschemes'
 Plug 'tomasiser/vim-code-dark'
 Plug 'dracula/vim', { 'as': 'dracula' }
 Plug 'chriskempson/vim-tomorrow-theme'
 Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
 "==================================
 "         Utiltity
 " ==================================
 " fzf finder
 Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
 Plug 'junegunn/fzf.vim'
 " coc for completion 
 Plug 'neoclide/coc.nvim', {'branch': 'release'}
 " multiple cursors
 Plug 'terryma/vim-multiple-cursors'
 " neard tree
 Plug 'frazrepo/vim-rainbow'          " vim rainbow bracket color to show bracket color
 Plug 'ryanoasis/vim-devicons'        " Show folder and file icons  in nerd tree
 Plug 'jiangmiao/auto-pairs'          " Auto pairs for '(' '[' '{'
 Plug 'tpope/vim-fugitive'            " for git usage 
 Plug 'airblade/vim-gitgutter'
 Plug 'matze/vim-move'                " move line above or below Alt + jklh
 " tmux
 Plug 'tmux-plugins/vim-tmux'
 " show work space on open
" Plug 'glepnir/dashboard-nvim'
 Plug 'mhinz/vim-startify'
 Plug 'karb94/neoscroll.nvim'
 " nvim rename varaible
 Plug 'neovim/nvim-lspconfig'
 Plug 'glepnir/lspsaga.nvim'
 " floaterm open termainal above
 Plug 'voldikss/vim-floaterm'
 " color
 Plug 'norcalli/nvim-colorizer.lua'
 " vim game
 Plug 'ThePrimeagen/vim-be-good', {'do': './install.sh'}
 " Git lance
 Plug 'APZelos/blamer.nvim'
 " add telescope
 Plug 'nvim-lua/plenary.nvim'
 Plug 'nvim-telescope/telescope.nvim'
 " show tabs
 Plug 'kyazdani42/nvim-web-devicons'
 Plug 'romgrk/barbar.nvim'
 " change on surround
 Plug 'tpope/vim-surround'
 " color bracket
 Plug 'frazrepo/vim-rainbow'
 " ==================================
 "        NERD Tree
 " ==================================
 Plug 'preservim/nerdcommenter'
 Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle'  }
 Plug 'preservim/nerdtree'
 Plug 'Xuyuanp/nerdtree-git-plugin'
 Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
 " ==================================
 "        Vim snippets
 " ==================================
 Plug 'SirVer/ultisnips'
 Plug 'honza/vim-snippets'
 Plug 'natebosch/dartlang-snippets'
 " ==================================
 "        Dart and Flutter Language
 " ==================================
 Plug 'dart-lang/dart-vim-plugin'
 Plug 'thosakwe/vim-flutter'
 Plug 'natebosch/vim-lsc'
 Plug 'natebosch/vim-lsc-dart'
 " ==================================
 "         Javascript Language
 " ==================================
 Plug 'mlaursen/vim-react-snippets'
 Plug 'pangloss/vim-javascript'
 Plug 'leafgarland/typescript-vim'
 Plug 'maxmellon/vim-jsx-pretty'
 Plug 'prettier/vim-prettier', { 'do': 'yarn install', 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }

call plug#end()
