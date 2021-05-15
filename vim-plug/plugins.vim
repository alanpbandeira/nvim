" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    
    " OneDark Theme
    Plug 'joshdick/onedark.vim'
    
    " Stable version of coc
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    
    " Airline plugins
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    
    " Ranger
    Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}

    " FZF 
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'airblade/vim-rooter'

    " Git Integration
    Plug 'mhinz/vim-signify'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-rhubarb'
    Plug 'junegunn/gv.vim'    

    " Snippets
    Plug 'honza/vim-snippets'

    " Keybiding reminder
    Plug 'liuchengxu/vim-which-key'

    " Good comments
    Plug 'preservim/nerdcommenter'
    
    " Open things on floating windows
    Plug 'voldikss/vim-floaterm'

    " Text navigation
    Plug 'justinmk/vim-sneak'
    Plug 'unblevable/quick-scope'

    " Useful text coloring
    Plug 'norcalli/nvim-colorizer.lua'
    
    " Startscreen
    Plug 'mhinz/vim-startify'

call plug#end()

" Automatically install new plugins when neovim starts
autocmd VimEnter *
    \ if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
    \| PlugInstall --sync | q
    \| endif
