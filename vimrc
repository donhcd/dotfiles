set nocp
filetype off
syntax off
call plug#begin('~/.vim/plugged')
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'mileszs/ack.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-obsession'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-rhubarb'
Plug 'airblade/vim-gitgutter'
Plug 'altercation/vim-colors-solarized'
Plug 'rust-lang/rust.vim'
" Plug 'Valloric/YouCompleteMe'
Plug 'vim-scripts/closetag.vim'
Plug 'w0rp/ale'
Plug 'govim/govim'
call plug#end()

nmap <C-;> :Buffers<CR>
nmap <Leader>t :Files<CR>
nmap <Leader>r :Tags<CR>

" set rtp+=~/.vim/bundle/vundle/
" " set rtp+=$GOROOT/misc/vim
" let $PATH = $PATH . ':' . expand("~/.cabal/bin")
" " let g:ale_emit_conflict_warnings = 0
" call vundle#rc()
" let g:solarized_termcolors=256
" Bundle 'gmarik/vundle'
" " Bundle!
" " Bundle 'mattn/emmet-vim'
" Bundle 'mattn/webapi-vim'
" " Bundle 'scrooloose/nerdcommenter'
" Bundle 'scrooloose/nerdtree'
" Bundle 'tpope/vim-fugitive'
" Bundle 'tpope/vim-eunuch'
" " Bundle 'scrooloose/syntastic'
" Bundle 'tpope/vim-repeat'
" Bundle 'tpope/vim-surround'
" Bundle 'tpope/vim-unimpaired'
" Bundle 'tpope/vim-endwise'
" Bundle 'tpope/vim-obsession'
" " Bundle 'Shougo/neocomplcache'
" Bundle 'Shougo/vimproc'
" Bundle 'fatih/vim-go'
" " Bundle 'dgryski/vim-godef'
" " Bundle 'mileszs/ack'
" " Bundle 'msanders/snipmate.vim'
" Bundle 'gerw/vim-latex-suite'
" " Bundle 'vim-scripts/taglist.vim'
" Bundle 'kien/ctrlp.vim'
" Bundle 'mileszs/ack.vim'
" " Bundle 'walm/jshint.vim'
" Bundle 'altercation/vim-colors-solarized'
" Bundle 'vim-scripts/matchit.zip'
" Bundle 'pangloss/vim-javascript'
" " Bundle 'mxw/vim-jsx'
" Bundle 'tpope/vim-rails'
" Bundle 'vim-scripts/vimwiki'
" Bundle 'vim-scripts/closetag.vim'
" Bundle 'tpope/vim-commentary'
" Bundle 'kchmck/vim-coffee-script'
" " Bundle 'lukerandall/haskellmode-vim'
" Bundle 'eagletmt/ghcmod-vim'
" Bundle 'ujihisa/neco-ghc'
" " Bundle 'nsf/gocode', {'rtp': 'vim/'}
" Bundle 'majutsushi/tagbar'
" Bundle 'rust-lang/rust.vim'
" Bundle 'Valloric/YouCompleteMe'
" Bundle 'racer-rust/vim-racer'
" Bundle 'tpope/vim-rhubarb'
" " Bundle 'othree/yajs.vim'
" " Bundle 'othree/es.next.syntax.vim'
" Bundle 'flowtype/vim-flow'
" Bundle 'w0rp/ale'
"
"
" " vim-flow type checking is slow AF
" let g:flow#enable = 0
" let g:flow#autoclose = 1
" let g:flow#timeout = 5
" " Use locally installed flow
" let local_flow = finddir('node_modules', '.;') . '/.bin/flow'
" if matchstr(local_flow, "^\/\\w") == ''
"     let local_flow= getcwd() . "/" . local_flow
" endif
" if executable(local_flow)
"   let g:flow#flowpath = local_flow
" endif
"
" " let local_eslint = finddir('node_modules', '.;') . '/.bin/eslint'
" " if matchstr(local_eslint, "^\/\\w") == ''
" "     let local_eslint= getcwd() . "/" . local_eslint
" " endif
" " if executable(local_eslint)
" "   let g:ale_javascript_eslint_executable = local_eslint
" " endif
"
" au FileType javascript nm gd :FlowJumpToDef<CR>
" au FileType javascript nm gs :split<CR>:FlowJumpToDef<CR>
" au FileType javascript nm gx :vsplit<CR>:FlowJumpToDef<CR>
"
"
" let g:ycm_filetype_specific_completion_to_disable = {
" \ 'javascript': 1
" \}
"
" " call pathogen#infect()
" " possible tips: http://statico.github.com/vim.html
"
" let g:neocomplcache_enable_at_startup = 1
" let g:syntastic_always_populate_loc_list = 1
" filetype plugin indent on
" color solarized
" set background=dark
"
" " Highlight characters after 80
" " set colorcolumn=81,101 " absolute columns to highlight "
" " set colorcolumn=+1,+21 " relative (to textwidth) columns to highlight "
"
" " make tabs show up red
" syn match tab display "\t"
" hi link tab Error
"
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
" au BufNewFile,BufRead *.c0,*.h0 set filetype=c
" au BufNewFile,BufRead *.cm,*.sig,*.lex set filetype=sml
" au BufNewFile,BufRead *.less set filetype=css
" filetype plugin on           " plugins are enabled
" filetype indent on           " indentation is enabled
" set ofu=syntaxcomplete#Complete
" let g:netrw_list_hide='^\..*'
" let g:netrw_fastbrowse=2
" let g:netrw_keepdir=0
" let g:pyflakes_use_quickfix = 0
" let vimclojure#HighlightBuiltins=1
" let vimclojure#ParenRainbow=1
" let g:Tex_DefaultTargetFormat = "pdf"
" au BufNewFile,BufRead *.html,*.js set textwidth=0
" au BufNewFile,BufRead *.S set filetype=ia64
cnoremap w!! w !sudo tee % >/dev/null
set wmh=0
set wmw=0
cabbrev Q quit!
cabbrev W write
set ignorecase
set smartcase
"
" " IMPORTANT: grep will sometimes skip displaying the file name if you
" " search in a singe file. This will confuse Latex-Suite. Set your grep
" " program to always generate a file-name.
" set grepprg=grep\ -nH\ $*
"
" " OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" " 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" " The following changes the default filetype back to 'tex':
" let g:tex_flavor='latex'
"
" autocmd FileType tex nmap <F5> :!pdflatex %:p -output-directory=%:p:h<cr>
nm <leader>nt :tabnew<CR>
"map <C-J> <C-W>j<C-W>_
"map <C-K> <C-W>k<C-W>_
nm \l :setlocal number!<CR>
nm \o :set paste!<CR>
" "cnoremap <C-a> <Home>
" "cnoremap <C-b> <Left>
" "cnoremap <C-f>  <Right>
" "cnoremap <C-d>  <Delete>
" "cnoremap <M-b>  <S-Left>
" "cnoremap <M-f>  <S-Right>
" "cnoremap <M-d>  <S-right><Delete>
" "cnoremap <C-g>  <C-c>
"
map Y y$
map <C-H> :tabp<CR>
map <C-L> :tabn<CR>
" "map - <C-W>-
" "map + <C-W>+
" map <F12> <C-W>_<C-W><Bar>
" nmap K :!man -S 2:3 <cword><CR>
" nmap t% :tabedit %<CR>
" nmap td :tabclose<CR>
"
set clipboard=unnamed
" "
" "ctags stuff
" nmap ,t :!(cd %:p:h;ctags *.[ch])&
" set tags=./tags
" let Tlist_Ctags_Cmd = system('which ctags')
" let Tlist_Ctags_Cmd = strpart(Tlist_Ctags_Cmd, 0, strlen(Tlist_Ctags_Cmd)-1)
" let Tlist_Inc_Winwidth = 0
" "let Tlist_WinWidth = 50
" map <F4> :TlistToggle
" set wildignore+=deps,target,node_modules
"
" helptags ~/.vim/doc
"
" nmap ,t :!(cd %:p:h;ctags *.[ch])&
"
" set ls=2                    " Always show status bar
" set ruler                   " Always show cursor position
"
" ",~/project/tags
"
" " let Tlist_Ctags_Cmd = "/usr/bin/ctags"
" " let Tlist_WinWidth = 50
" " map <F4> :TlistToggle
" " if has('cscope')
" "   set cscopetag cscopeverbose
" "
" "   if has('quickfix')
" "     set cscopequickfix=s-,c-,d-,i-,t-,e-
" "   endif
" "
" "   cnoreabbrev csa cs add
" "   cnoreabbrev csf cs find
" "   cnoreabbrev csk cs kill
" "   cnoreabbrev csr cs reset
" "   cnoreabbrev css cs show
" "   cnoreabbrev csh cs help
" "
" "   command -nargs=0 Cscope cs add $VIMSRC/src/cscope.out $VIMSRC/src
" " endif
"
" fun! <SID>StripTrailingWhitespaces()
"     let l = line(".")
"     let c = col(".")
"     %s/\s\+$//e
"     call cursor(l, c)
" endfun
"
" " kill any trailing whitespace on save
" "autocmd BufWritePre <buffer>
" "  \ :call <SID>StripTrailingWhitespaces()
"
" autocmd FileType c,cpp,java,php,sml,tex autocmd BufWritePre <buffer> :%s/\s\+$//e
"
" nm <leader>t :CtrlP .<cr>
" " let g:ctrlp_map='<leader>t'
"
" " django stuff
" let s:selectregexs={
"   \'htmljinja':  '\{\%\s*(extends|block|macro|set|if|for|include|trans)>',
"   \'htmldjango': '\{\%\s*(extends|block|comment|ssi|if|for|blocktrans)>',
"   \'mako':       '\<\%(def|inherit)',
"   \'genshi':     'xmlns:py|py:(match|for|if|def|strip|xmlns)',
" \}
" function! s:SelectHTML()
"     " I know about items() function, but this variant will make it easier to add
"     " an iteration over ordered list which is the only way to reliably put
"     " htmldjango before htmljinja
"     for type in keys(s:selectregexs)
"         let regex=s:selectregexs[type]
"         if search('\v'.regex.'%<50l', 'nw')
"             return type
"         endif
"     endfor
"     return 'html'
" endfunction
"
" autocmd BufNewFile,BufRead *.html,*.htm let &filetype=<SID>SelectHTML()
"
" let g:syntastic_mode_map={ 'mode': 'active',
"       \ 'active_filetypes': [],
"       \ 'passive_filetypes': ['html'] }
"
" " enable powerline vim plugin
" "source ~/dotfiles/powerline/powerline/ext/vim/powerline.vim
" "python from powerline.ext.vim import source_plugin; source_plugin()
"
" " for crontab -e
" au BufEnter /private/tmp/crontab.* setl backupcopy=yes
"
" highlight ExtraWhitespace ctermbg=red guibg=red
"
" "Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" " Disable AutoComplPop.
" let g:acp_enableAtStartup = 0
" " Use neocomplcache.
" " let g:neocomplcache_enable_at_startup = 1
" " Use smartcase.
" " let g:neocomplcache_enable_smart_case = 1
" " Set minimum syntax keyword length.
" " let g:neocomplcache_min_syntax_length = 3
" " let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
" let g:necoghc_enable_detailed_browse = 1
"
" " let g:tagbar_type_go = {
" "     \ 'ctagstype' : 'go',
" "     \ 'kinds'     : [
" "         \ 'p:package',
" "         \ 'i:imports:1',
" "         \ 'c:constants',
" "         \ 'v:variables',
" "         \ 't:types',
" "         \ 'n:interfaces',
" "         \ 'w:fields',
" "         \ 'e:embedded',
" "         \ 'm:methods',
" "         \ 'r:constructor',
" "         \ 'f:functions'
" "     \ ],
" "     \ 'sro' : '.',
" "     \ 'kind2scope' : {
" "         \ 't' : 'ctype',
" "         \ 'n' : 'ntype'
" "     \ },
" "     \ 'scope2kind' : {
" "         \ 'ctype' : 't',
" "         \ 'ntype' : 'n'
" "     \ },
" "     \ 'ctagsbin'  : 'gotags',
" "     \ 'ctagsargs' : '-sort -silent'
" " \ }
"
" " nmap <F8> :TagbarToggle<CR>
"
" let g:godef_split=0
" let g:go_fmt_command='supergofmt'
" set wildignore+=*/bin/*,*/dist/*,*/build/*,*/shellbins/*
"
" set hidden
" let g:racer_cmd = expand("~/.cargo/bin/racer")
" " rustc --print sysroot
" let $RUST_SRC_PATH = expand("~/.rustup/toolchains/nightly-x86_64-apple-darwin/lib/rustlib/src/rust/src")
" let g:ycm_rust_src_path = expand("~/.rustup/toolchains/nightly-x86_64-apple-darwin/lib/rustlib/src/rust/src")
" let $CARGO_HOME = expand("~/.cargo")
" let g:racer_experimental_completer = 1
"
" let g:rustfmt_autosave=1
" au FileType rust nmap gd <Plug>(rust-def)
" au FileType rust nmap gs <Plug>(rust-def-split)
" au FileType rust nmap gx <Plug>(rust-def-vertical)
" au FileType rust nmap <leader>gd <Plug>(rust-doc)
"
"
" " this makes syntax highlighting work with flow??
" let g:javascript_plugin_flow = 1
" " Map keys to navigate between lines with errors and warnings.
" augroup vimrc
"    au!
"    " au VimEnter * unmap <C-j>
"    au VimEnter * nnoremap <C-j> :ALENextWrap<cr>
" augroup END
" nnoremap <C-K> :ALEPreviousWrap<cr>
" " nnoremap <C-J> :ALENextWrap<cr>
"
if executable('rg')
  let g:ackprg = 'rg --vimgrep'
endif
" autocmd!

" ycm mappings
" nm <tab><tab> :YcmCompleter FixIt<CR>
" nm <tab>d :YcmDiags<CR>
" nm gd :YcmCompleter GoTo<CR>
" nm gt :YcmCompleter GetType<CR>
" nm gr :YcmCompleter GoToReferences<CR>
"
" end recommended coc settings
" " let g:ycm_always_populate_location_list = 1
" " let g:ycm_always_populate_location_list = 1
" " rust-analyzer seems unusably slow
" " https://rust-analyzer.github.io/
" let g:ycm_language_server =
" \ [
" \   {
" \     'name': 'rust',
" \     'cmdline': ['rust-analyzer'],
" \     'filetypes': ['rust'],
" \     'project_root_files': ['Cargo.toml']
" \   }
" \ ]
" " let g:ycm_open_loclist_on_ycm_diags = 1
" let g:ycm_disable_for_files_larger_than_kb = 1000
" ycm mappings end


" recommended coc settings
" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

nmap <leader>ac  <Plug>(coc-codeaction)

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" XXX(don) not sure what this is
" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of LS, ex: coc-tsserver
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>
" END recommended Coc settings

" nvm doesn't play well with a lot of things, so hardcode the path :/
let g:coc_node_path = "/Users/don/.nvm/versions/node/v12.16.0/bin/node"

" nm gs :split<CR>:FlowJumpToDef<CR>
" nm gx :vsplit<CR>:FlowJumpToDef<CR>

syntax on
filetype plugin indent on

" ALE
let g:ale_sign_warning = '▲'
let g:ale_sign_error = '✗'
highlight link ALEWarningSign String
highlight link ALEErrorSign Title
" rust-analyzer seems unusably slow
" https://rust-analyzer.github.io/
let g:ale_linters = {
\  'javascript': ['eslint'],
\  'typescript': ['eslint'],
\  'rust': ['analyzer'],
\  'go': ['gopls'],
\}

" turn off ale fixing/linting?
" " \  'rust': ['rls'],
" let g:ale_fixers = {
" \  'javascript': ['eslint'],
" \  'typescript': ['eslint'],
" \  'python': ['autopep8'],
" \}
" let g:ale_completion_enabled = 1
" let g:ale_fix_on_save = 1
" let g:ale_fix_buffer_data = {
"       \'1': {'done': 1,'should_save':1,'changes_made':0}
"       \}
" set omnifunc=ale#completion#OmniFunc
" nm <tab>n :ALENext<cr>

highlight clear ALEErrorSign " otherwise uses error bg color (typically red)
highlight clear ALEWarningSign " otherwise uses error bg color (typically red)
" " let g:ale_statusline_format = ['X %d', '? %d', '']
" " %linter% is the name of the linter that provided the message
" " %s is the error or warning message
let g:ale_echo_msg_format = '%linter% says %s'

" Lightline

" required to make it show when there are no splits
" https://github.com/itchyny/lightline.vim/issues/71
set laststatus=2
let g:lightline = {
\ 'colorscheme': 'wombat',
\ 'active': {
\   'left': [['mode', 'paste'], ['filename', 'modified']],
\   'right': [['lineinfo'], ['percent'], ['readonly', 'linter_warnings', 'linter_errors', 'linter_ok']]
\ },
\ 'component_expand': {
\   'linter_warnings': 'LightlineLinterWarnings',
\   'linter_errors': 'LightlineLinterErrors',
\   'linter_ok': 'LightlineLinterOK'
\ },
\ 'component_type': {
\   'readonly': 'error',
\   'linter_warnings': 'warning',
\   'linter_errors': 'error'
\ },
\ }

function! LightlineLinterWarnings() abort
  let l:counts = ale#statusline#Count(bufnr(''))
  let l:all_errors = l:counts.error + l:counts.style_error
  let l:all_non_errors = l:counts.total - l:all_errors
  return l:counts.total == 0 ? '' : printf('%d ◆', all_non_errors)
endfunction

function! LightlineLinterErrors() abort
  let l:counts = ale#statusline#Count(bufnr(''))
  let l:all_errors = l:counts.error + l:counts.style_error
  let l:all_non_errors = l:counts.total - l:all_errors
  return l:counts.total == 0 ? '' : printf('%d ✗', all_errors)
endfunction

function! LightlineLinterOK() abort
  let l:counts = ale#statusline#Count(bufnr(''))
  let l:all_errors = l:counts.error + l:counts.style_error
  let l:all_non_errors = l:counts.total - l:all_errors
  return l:counts.total == 0 ? '✓ ' : ''
endfunction

autocmd User ALELint call s:MaybeUpdateLightline()

" Update and show lightline but only if it's visible (e.g., not in Goyo)
function! s:MaybeUpdateLightline()
  if exists('#lightline')
    call lightline#update()
  end
endfunction

" Load all plugins now.
" Plugins need to be added to runtimepath before helptags can be generated.
packloadall
" Load all of the helptags now, after plugins have been loaded.
" All messages and errors will be ignored.
silent! helptags ALL
