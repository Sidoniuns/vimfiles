if has('vim_starting')
  set nocompatible
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'tpope/vim-rails'
NeoBundle 'tpope/vim-surround'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'othree/html5.vim'
NeoBundle 'godlygeek/tabular'
NeoBundle 'groenewege/vim-less'
NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'mhinz/vim-signify'
NeoBundle 'thoughtbot/vim-rspec'
NeoBundle 'ervandew/supertab'
NeoBundle 'KabbAmine/zeavim.vim'
NeoBundle 'docunext/closetag.vim'
NeoBundle 'leshill/vim-json'
NeoBundle 'hdima/python-syntax'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'mileszs/ack.vim'
NeoBundle 'ngmy/vim-rubocop'
NeoBundle 'KeitaNakamura/neodark.vim'
NeoBundle 'ecomba/vim-ruby-refactoring'
NeoBundle 'tpope/vim-rake'
NeoBundle 'tpope/vim-rvm'
NeoBundle 'skwp/vim-spec-finder'
NeoBundle 'ck3g/vim-change-hash-syntax'
NeoBundle 'tpope/vim-bundler'
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'chrisbra/color_highlight'
NeoBundle 'morhetz/gruvbox'
NeoBundle 'chriskempson/base16-vim'
NeoBundle 'austintaylor/vim-indentobject'
NeoBundle 'coderifous/textobj-word-column.vim'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'wellle/targets.vim'
NeoBundle 'AndrewRadev/splitjoin.vim'
NeoBundle 'Raimondi/delimitMate'
NeoBundle 'Shougo/neocomplete.git'
NeoBundle 'briandoll/change-inside-surroundings.vim'
NeoBundle 'tpope/vim-surround'

call neobundle#end()

filetype plugin indent on
NeoBundleCheck
