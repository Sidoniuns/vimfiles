set rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim/
set laststatus=2

source ~/.vim/neobundle.vim

scriptencoding utf8

set encoding=utf8 fileencoding=utf8 termencoding=utf8 nobomb

set showmatch

runtime macros/matchit.vim

set confirm

set shortmess=atTI

set splitright splitbelow

set incsearch hls ignorecase smartcase

set cursorline colorcolumn=80

set showcmd

set switchbuf=useopen,usetab,newtab

set list listchars=tab:▸\ ,trail:·,nbsp:·

set virtualedit=block

set diffopt+=iwhite

set nowrap wrapscan showbreak=..

set undolevels=1000

set title

set number numberwidth=3

set autoread autowrite

set autoindent copyindent cindent smartindent

set tabstop=4 shiftwidth=0 softtabstop=4

set noexpandtab

set smarttab shiftround

set backspace=indent,eol,start

set mousehide mouse=a ttymouse=xterm2

set sessionoptions+=globals

set fileformats+=mac

let mapleader=','

" Automatic realoading of .vimrc
autocmd! bufwritepost .vimrc source %

autocmd Filetype ruby,rb,rails,eruby set tw=110 formatoptions=tcq

syntax enable
set t_Co=256
set term=screen-256color
set list
set listchars=tab:▸\ ,eol:¬
set background=dark

let g:solarized_termcolors=256

colorscheme solarized
"colorscheme railscasts
set synmaxcol=500
"set ts=2 sw=2 et
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1

" Make Y like D
nnoremap Y y$

" Make <C-l> clear the highlight
nnoremap <silent> <C-l> :nohls<CR>

" Indent all file
noremap <silent> <leader>ff :call Preserve('normal gg=G')<CR>

" Quicksave command
noremap <C-Z> :update<CR>
vnoremap <C-Z> <C-C>:update<CR>
inoremap <C-Z> <C-O>:update<CR>

" Quick quit command
noremap <Leader>e :quit<CR> " Quit current window
noremap <Leader>E :qa!<CR>  " Quit all windows

" Easier moving between tabs
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>
map <Leader>t <esc>:tabnew<CR>

" Map sort function to a key
vnoremap <Leader>s :sort<CR>

" Easier moving of code blocks
vnoremap < <gv " better indentation
vnoremap > >gv " better indentation

" Ctrlp settings
let g:ctrlp_max_height = 30
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=*/coverage/*

" fixing some commands
cab W  w
cab Wq wq
cab wQ wq
cab WQ wq
cab Q  q

" NERDTree
let NERDTreeWinPos="right"
let NERDTreeHighlightCursorline=1
let NERDTreeAutoDeleteBuffer=1
let NERDTreeMinimalUI=1

" If possible open a NERDTreeMirror
function! OpenNERDTreeMirror()
  try
    :NERDTreeToggle | NERDTreeMirror
  catch /^Vim\%((\a\+)\)\=:E121/
    :NERDTree
  catch
    redraw
  endtry
endfunction

nmap <silent> <F5> :call OpenNERDTreeMirror()<CR>
nnoremap <silent> <leader>fl :NERDTreeFind<CR>
command! E exec ":NERDTree ".expand('%:p')

autocmd BufReadPost,BufNewFile *_feature.rb set syntax=rspec

let g:syntastic_check_on_open = 1
let g:syntastic_enable_balloons = 0
let g:syntastic_auto_jump = 0
let g:syntastic_error_symbol = 'e:'
let g:syntastic_warning_symbol = 'w:'
let g:syntastic_mode_map = { 'mode': 'active', 'active_filetypes': [
      \ 'ruby',
      \ 'elixir',
      \ 'js',
      \ 'css',
      \ 'vim' ] }

hi! link SyntasticWarningSign Search
hi! link SyntasticErrorSign ErrorMsg
let g:syntastic_stl_format = ""
      \ . "%W{"
      \ . "%#STLWarningAlert#"
      \ . "\ [".g:syntastic_warning_symbol." %fw(%w)]"
      \ . "}"
      \ . "%B{\ }"
      \ . "%E{"
      \ . "%#STLErrorAlert#"
      \ . "\ [".g:syntastic_error_symbol." %fe(%e)]"
      \ . "}\ "
      \ . "%*"

nnoremap <leader>sc :Errors<CR>

vnoremap ,a= :Tabularize /=<CR>
nnoremap ,a= :normal vir,a=<CR>
cnoreabbrev Tab Tabularize

let g:keep_trailing_spaces = 0
command! -nargs=? KeepTrailingSpaces
      \ if <q-args> == "" |
      \   let g:keep_trailing_spaces = 1 |
      \ else |
      \   let g:keep_trailing_spaces = str2nr(<q-args>) |
      \ endif

aug remove_trailing_spaces
  au!
  au BufWritePre *
        \ if ! g:keep_trailing_spaces |
        \   call Preserve('%s/\s\+$//e') |
        \   call Preserve('%s/\v($\n\s*)+%$//e') |
        \ endif
aug END

" Executes a command and keeps the current view
function! Preserve(command)
  setlocal lazyredraw
  let last_search=@/

  let last_view = winsaveview()
  silent execute a:command
  call winrestview(last_view)

  let @/=last_search
  redraw
  setlocal nolazyredraw
endfunction

" Executes a global function and keeps the current view
function! PreserveFN(fn, ...)
  if a:0
    let args = "(".join(a:000, ",").")"
  else
    let args = "()"
  end
  let func = string(function(a:fn))

  call Preserve("let g:preservedReturn =
  ".func.args)

  return g:preservedReturn
endfunction
