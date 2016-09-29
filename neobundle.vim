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

call neobundle#end()

filetype plugin indent on
NeoBundleCheck
