if has('vim_starting')
  set nocompatible
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

"NeoBundle 'tpope/vim-fugitive'
"NeoBundle 'tpope/vim-repeat'
NeoBundle 'tpope/vim-rails'
NeoBundle 'tpope/vim-surround'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'othree/html5.vim'
NeoBundle 'godlygeek/tabular'
NeoBundle 'groenewege/vim-less'
"NeoBundle 'jpo/vim-railscasts-theme'
NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'bronson/vim-visual-star-search'
NeoBundle 'mhinz/vim-signify'
NeoBundle 'Keithbsmiley/rspec.vim'
NeoBundle 'thoughtbot/vim-rspec'
NeoBundle 'ervandew/supertab'
"NeoBundle 'MarcWeber/vim-addon-mw-utils'
"NeoBundle 'tomtom/tlib_vim'
"NeoBundle 'garbas/vim-snipmate'
NeoBundle 'KabbAmine/zeavim.vim'
NeoBundle 'lervag/vim-latex'
NeoBundle 'docunext/closetag.vim'
NeoBundle 'leshill/vim-json'
NeoBundle 'hdima/python-syntax'
"NeoBundle 'airblade/vim-gitgutter'
"NeoBundle 'klen/python-mode'
NeoBundle 'kien/ctrlp.vim'
"NeoBundle 'BtPht/python_editing'
NeoBundle 'kchmck/vim-coffee-script'
"NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'ciaranm/inkpot'
NeoBundle 'ekalinin/Dockerfile.vim'
NeoBundle 'altercation/vim-colors-solarized'

call neobundle#end()

filetype plugin indent on
NeoBundleCheck
