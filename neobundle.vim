if has('vim_starting')
  set nocompatible
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'mileszs/ack.vim'
NeoBundle 'cohama/agit.vim'
NeoBundle 'w0rp/ale'
NeoBundle 'vim-scripts/bufexplorer.zip'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'Shougo/deoplete.nvim'
NeoBundle 'junegunn/goyo.vim'
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'vim-scripts/mru.vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'roxma/nvim-yarp'
NeoBundle 'amix/open_file_under_cursor.vim'
NeoBundle 'tomtom/tlib_vim'
NeoBundle 'garbas/vim-snipmate'
NeoBundle 'MarcWeber/vim-addon-mw-utils'
NeoBundle 'tpope/vim-commentary'
NeoBundle 'terryma/vim-expand-region'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'roxma/vim-hug-neovim-rpc'
NeoBundle 'michaeljsmith/vim-indent-object'
NeoBundle 'tpope/vim-markdown'
NeoBundle 'terryma/vim-multiple-cursors'
NeoBundle 'tpope/vim-rails'
NeoBundle 'tpope/vim-rake'
NeoBundle 'thoughtbot/vim-rspec'
NeoBundle 'slim-template/vim-slim'
NeoBundle 'tpope/vim-surround'
NeoBundle 'wakatime/vim-wakatime'
NeoBundle 'maxbrunsfeld/vim-yankstack'
NeoBundle 'amix/vim-zenroom2'
NeoBundle 'KabbAmine/zeavim.vim'
NeoBundle 'KabbAmine/yowish.vim'

call neobundle#end()

filetype plugin indent on
NeoBundleCheck
