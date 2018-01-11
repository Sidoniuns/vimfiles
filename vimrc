source ~/.vim/neobundle.vim

set laststatus=2

let base16colorspace=256

scriptencoding utf8

set encoding=utf8 fileencoding=utf8 termencoding=utf8 nobomb

set showmatch

runtime macros/matchit.vim

set nocompatible
if has("autocmd")
  filetype indent plugin on
endif

set confirm

set shortmess=atTI

set splitright splitbelow

set incsearch hls ignorecase smartcase

set cursorline colorcolumn=80
set cursorline!
set lazyredraw
set synmaxcol=128
syntax sync minlines=256

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

set copyindent cindent smartindent

set tabstop=2 shiftwidth=2 softtabstop=2

set smarttab shiftround expandtab

set backspace=indent,eol,start

set mousehide mouse=a ttymouse=xterm2

set sessionoptions+=globals

set nobackup nowritebackup noswapfile

set fileformats+=mac

let mapleader=','

let g:ackprg = 'ag --nogroup --nocolor --column'

" Automatic realoading of .vimrc
autocmd! bufwritepost .vimrc source %

autocmd Filetype ruby,rb,rails,eruby,py set formatoptions=tcq

" Markdown preview
let vim_markdown_preview_hotkey='<C-m>'
let vim_markdown_preview_github=1

syntax enable
set t_Co=256
set term=screen-256color
set list
"set listchars=tab:▸\ ,eol:¬
set showbreak=↪\
set listchars=tab:→\ ,eol:↲,nbsp:␣,trail:•,extends:⟩,precedes:⟨

colo yowish
"colorscheme challenger_deep

let g:lightline = {
      \ 'colorscheme': 'yowish',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'pathname', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head',
      \   'pathname': 'PathFileName',
      \ },
      \ }

function! PathFileName ()
    return expand('%:p:h')
endfunction

let g:unite_force_overwrite_statusline = 0
let g:vimfiler_force_overwrite_statusline = 0
let g:vimshell_force_overwrite_statusline = 0

set synmaxcol=500
set ts=2 sw=2 et
let g:indent_guides_start_level = 2

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

" Create new tab
map <Leader>t <esc>:tabnew<CR>

" Divide tab
map <Leader>d <esc>:new<CR>
map <Leader>v <esc>:vnew<CR>

" Map sort function to a key
vnoremap <Leader>s :sort<CR>

" Easier moving of code blocks
vnoremap < <gv " better indentation
vnoremap > >gv " better indentation

" RSpec.vim mappings
map <Leader>r :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

" Ctrlp settings
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

let g:ctrlp_max_height = 30
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=*/coverage/*
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

" fixing some commands
cab W  w
cab Wq wq
cab wQ wq
cab WQ wq
cab Q  q

" NERDTree
let NERDTreeWinPos="left"
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

noremap <silent> <C-\> :call OpenNERDTreeMirror()<CR>
"nmap <silent> <F5> :call OpenNERDTreeMirror()<CR>
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
            \ 'vim',
            \ 'python'] }

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
