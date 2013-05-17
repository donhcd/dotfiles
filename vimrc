set nocp
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
" Bundle!
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/syntastic'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-surround'
" Bundle 'msanders/snipmate.vim'
Bundle 'gerw/vim-latex-suite'
Bundle 'vim-scripts/taglist.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'walm/jshint.vim'
Bundle 'altercation/vim-colors-solarized'
Bundle 'tsaleh/vim-matchit'
Bundle 'pangloss/vim-javascript'
Bundle 'tpope/vim-rails'
Bundle 'vim-scripts/vimwiki'
Bundle 'vim-scripts/closetag.vim'
Bundle 'tpope/vim-commentary'
Bundle 'kchmck/vim-coffee-script'

" call pathogen#infect()
" possible tips: http://statico.github.com/vim.html

filetype plugin indent on
color solarized
set background=dark

" Highlight characters after 80
" set colorcolumn=81,101 " absolute columns to highlight "
" set colorcolumn=+1,+21 " relative (to textwidth) columns to highlight "

" make tabs show up red
syn match tab display "\t"
hi link tab Error

set backspace=indent,eol,start
set virtualedit=all
set autoindent smartindent number incsearch
set isfname-==
set expandtab
set showmatch
set shiftwidth=2
set vb t_vb=
set textwidth=80
set undofile
set undodir=~/.vimundos
syntax on
filetype on
au BufNewFile,BufRead *.c0,*.h0 set filetype=c
au BufNewFile,BufRead *.cm,*.sig,*.lex set filetype=sml
filetype plugin on           " plugins are enabled
filetype indent on           " indentation is enabled
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
nm <leader>nt :tabnew<CR>
"map <C-J> <C-W>j<C-W>_
"map <C-K> <C-W>k<C-W>_
nm \l :setlocal number!<CR>
nm \o :set paste!<CR>
"cnoremap <C-a> <Home>
"cnoremap <C-b> <Left>
"cnoremap <C-f>  <Right>
"cnoremap <C-d>  <Delete>
"cnoremap <M-b>  <S-Left>
"cnoremap <M-f>  <S-Right>
"cnoremap <M-d>  <S-right><Delete>
"cnoremap <C-g>  <C-c>

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
let Tlist_Ctags_Cmd = system('which ctags')
let Tlist_Ctags_Cmd = strpart(Tlist_Ctags_Cmd, 0, strlen(Tlist_Ctags_Cmd)-1)
let Tlist_Inc_Winwidth = 0
"let Tlist_WinWidth = 50
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
"autocmd BufWritePre <buffer>
"  \ :call <SID>StripTrailingWhitespaces()

autocmd FileType c,cpp,java,php,sml,tex autocmd BufWritePre <buffer> :%s/\s\+$//e

let g:ctrlp_map='<leader>t'

" django stuff
let s:selectregexs={
  \'htmljinja':  '\{\%\s*(extends|block|macro|set|if|for|include|trans)>',
  \'htmldjango': '\{\%\s*(extends|block|comment|ssi|if|for|blocktrans)>',
  \'mako':       '\<\%(def|inherit)',
  \'genshi':     'xmlns:py|py:(match|for|if|def|strip|xmlns)',
\}
function! s:SelectHTML()
    " I know about items() function, but this variant will make it easier to add
    " an iteration over ordered list which is the only way to reliably put
    " htmldjango before htmljinja
    for type in keys(s:selectregexs)
        let regex=s:selectregexs[type]
        if search('\v'.regex.'%<50l', 'nw')
            return type
        endif
    endfor
    return 'html'
endfunction

autocmd BufNewFile,BufRead *.html,*.htm let &filetype=<SID>SelectHTML()

let g:syntastic_mode_map={ 'mode': 'active',
      \ 'active_filetypes': [],
      \ 'passive_filetypes': ['html'] }

" enable powerline vim plugin
"source ~/dotfiles/powerline/powerline/ext/vim/powerline.vim
"python from powerline.ext.vim import source_plugin; source_plugin()

" for crontab -e
au BufEnter /private/tmp/crontab.* setl backupcopy=yes

highlight ExtraWhitespace ctermbg=red guibg=red
