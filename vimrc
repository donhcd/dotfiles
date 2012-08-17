color xterm16
" color murphy

" Highlight characters after 80
" set colorcolumn=81,101 " absolute columns to highlight "
" set colorcolumn=+1,+21 " relative (to textwidth) columns to highlight "

" make tabs show up red
syn match tab display "\t"
hi link tab Error

set backspace=indent,eol,start
set virtualedit=all
set nocp autoindent smartindent number incsearch
set isfname-==
set expandtab
set showmatch
set shiftwidth=2
set vb t_vb=
set textwidth=80
syntax on
filetype on
au BufNewFile,BufRead *.c0,*.h0 set filetype=c
filetype plugin on           " plugins are enabled
set ofu=syntaxcomplete#Complete
let g:netrw_list_hide='^\..*'
let g:netrw_fastbrowse=2
let g:netrw_keepdir=0
let g:pyflakes_use_quickfix = 0
let vimclojure#HighlightBuiltins=1
let vimclojure#ParenRainbow=1
let g:Tex_DefaultTargetFormat = "pdf"
au BufNewFile,BufRead *.html,*.js set textwidth=0
au BufNewFile,BufRead *.S set filetype=ia64
set wmh=0
set wmw=0
cabbrev Q quit!
cabbrev W write

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

autocmd FileType tex nmap <F5> :!pdflatex %:p -output-directory=%:p:h<cr>
"map <C-J> <C-W>j<C-W>_
"map <C-K> <C-W>k<C-W>_
map Y y$
map <C-H> gT
map <C-L> gt
"map - <C-W>-
"map + <C-W>+
map <F12> <C-W>_<C-W><Bar>
nmap K :!man -S 2:3 <cword><CR>
nmap t% :tabedit %<CR>
nmap td :tabclose<CR>

set clipboard=unnamed
"
"ctags stuff
nmap ,t :!(cd %:p:h;ctags *.[ch])&
set tags=./tags,tags,~/project/tags
let Tlist_Ctags_Cmd = "/usr/bin/ctags"
let Tlist_WinWidth = 50
map <F4> :TlistToggle

helptags ~/.vim/doc

nmap ,t :!(cd %:p:h;ctags *.[ch])&
"set tags=./tags,tags

set ls=2                    " Always show status bar
set ruler                   " Always show cursor position

",~/project/tags
"set tags=./tags,./../tags,./../../tags,./../../../tags,tags

" let Tlist_Ctags_Cmd = "/usr/bin/ctags"
" let Tlist_WinWidth = 50
" map <F4> :TlistToggle
" if has('cscope')
"   set cscopetag cscopeverbose
"
"   if has('quickfix')
"     set cscopequickfix=s-,c-,d-,i-,t-,e-
"   endif
"
"   cnoreabbrev csa cs add
"   cnoreabbrev csf cs find
"   cnoreabbrev csk cs kill
"   cnoreabbrev csr cs reset
"   cnoreabbrev css cs show
"   cnoreabbrev csh cs help
"
"   command -nargs=0 Cscope cs add $VIMSRC/src/cscope.out $VIMSRC/src
" endif

fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun
 
" kill any trailing whitespace on save
autocmd FileType c,cabal,cpp,haskell,javascript,php,python,readme,text,make
  \ autocmd BufWritePre <buffer>
  \ :call <SID>StripTrailingWhitespaces()

call pathogen#infect()

"HIGHLIGHT POTENTIALLY UNWANTED WHITESPACE
highlight BadWhitespace term=standout ctermbg=red guibg=red
match BadWhitespace /[^* \t]\zs\s\+$\| \+\ze\t/
