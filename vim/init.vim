" vim:foldmethod=marker:foldlevel=0

"{{{Misc
set rtp ^=~/.vim
let &packpath = &rtp
syntax enable
" To enable arbtt track what files I am working on.
set title
set clipboard+=unnamedplus
set listchars=tab:>-,trail:-
set iskeyword=@,48-57,_,192-255,-
set history=200
set relativenumber
set number

let maplocalleader=','
"}}}

" Backup {{{
" move swp files 
set backup
set backupdir=~/.config/nvim/backup
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.config/nvim/swap
set writebackup
" }}}

"{{{ Tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
" }}}

" {{{Splits
set splitbelow
set splitright
"}}}

"{{{Folding
set foldmethod=indent
set foldlevel=99
"}}}

"{{{Colorscheme
set termguicolors
hi Search cterm=None ctermfg=grey ctermbg=blue guifg=white guibg=blue
"{{{ gruvbox
colorscheme srcery
let g:gruvbox_italic=1
"}}}
"}}}

" Goyo {{{
function! s:goyo_enter()
    noremap j gj
    noremap k gk
    noremap 0 g0
    noremap ^ g^
    noremap $ g$
    noremap m gm
    set linebreak
endfunction

function! s:goyo_leave()
    noremap gj j
    noremap gk k
    noremap g0 0
    noremap g^ ^
    noremap g$ $
    noremap gm m
    set invlinebreak
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()"
"}}}

"{{{ Deoplete 
let g:python_host_prog = '$HOME/.virtualenvs/neovim-py2/bin/python'
let g:python3_host_prog = '$HOME/.virtualenvs/neovim/bin/python'
let g:deoplete#enable_at_startup = 1
"let g:deoplete#auto_complete_delay=100 " because semshi
packadd deoplete.nvim
call deoplete#custom#option('auto_complete_delay', 500)
"}}}

"{{{Airline
let g:airline_powerline_fonts=1
let g:airline_theme='simple'
"}}}

"{{{ jedi-vim
let g:jedi#completions_enabled = 0
set noshowmode
let g:jedi#show_call_signatures = 2
"let g:jedi#auto_initialization = 0
"}}}

"{{{ NERDTree 
let NERDTreeIgnore=['\.pyc$', '\~$'] " Hide .pyc files in NERDTree
"}}}

"{{{netrw
let g:netrw_banner=0
let g:netrw_browse_split=2
let g:netrw_winsize=25
let g:netrw_liststyle=3
"}}} 

"{{{vim-matchup
let g:matchup_surround_enabled = 1
"}}}

"{{{ALE
let g:ale_lint_on_enter = 0
let g:ale_lint_text_changed = 'insert'
let g:ale_python_pylint_options = '--rcfile ~/.pylintrc'
let g:ale_linters = {'python': ['pylint']}
let g:ale_fixers = {
            \ 'python' : ['black'],}
nmap <F9> <Plug>(ale_fix)
" set redrawtime=10000 " or could CTRL-L few times"
" let g:ale_fix_on_save = 1
" Map movement through errors without wrapping.
nmap <silent> <C-k> <Plug>(ale_previous)
nmap <silent> <C-j> <Plug>(ale_next)
" OR map keys to use wrapping.
"nmap <silent> <C-k> <Plug>(ale_previous_wrap)
"nmap <silent> <C-j> <Plug>(ale_next_wrap)
"}}}

"{{{MISC
" Flagging Unnecessary Whitespace
"highlight BadWhitespace ctermfg=16 ctermbg=253
"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
"}}}

"{{{Syntastic
"let g:syntastic_always_populate_loc_list = 1
""set statusline+=%#warningmsg#
""set statusline+=%{SyntasticStatuslineFlag()}
""set statusline+=%*
"}}}

"{{{iron
packadd iron.nvim
luafile $HOME/.config/nvim/plugins/iron.lua
"let g:iron_repl_open_cmd='split'
let g:iron_map_defaults = 0
let g:iron_map_extended = 0
nmap <localleader>t    <Plug>(iron-send-motion)
vmap <localleader>v   <Plug>(iron-visual-send)
nmap <localleader>r    <Plug>(iron-repeat-cmd)
nmap <localleader>l   <Plug>(iron-send-line)
nmap <localleader><CR> <Plug>(iron-cr)
nmap <localleader>i    <plug>(iron-interrupt)
nmap <localleader>q    <Plug>(iron-exit)
nmap <localleader>c    <Plug>(iron-clear)
"nnoremap yr :IronRepl<CR>
"nmap ,r <Plug>(iron-send-motion)
"xmap ,r <Plug>(iron-send-motion)
"nmap yR V,r
"}}}

"{{{ vimwiki
let g:vimwiki_list = [{'path': '~/Wiki/',
          \ 'template_path': '~/Wiki/templates/',
          \ 'template_default': 'basic',
          \ 'template_ext': '.html'}]
"let g:vimwiki_filetypes = ['markdown']
"let g:vimwiki_use_calendar = 1
"}}}


"{{{ asciidoc-folding
let g:asciidoc_fold_style = 'nested'
"}}}

"{{{indentLine
let g:indentLine_conceallevel = 1
"}}}

"{{{UltiSnips
let g:UltiSnipsExpandTrigger        = "<c-j>"
let g:UltiSnipsJumpForwardTrigger   = "<c-j>"
let g:UltiSnipsJumpBackwardTrigger  = "<c-p>"
let g:UltiSnipsListSnippets         = "<c-k>"
let g:UltiSnipsSnippetDirectories   = ['UltiSnips', $HOME.'/dev/vim-snippets']
" https://github.com/neovim/neovim/issues/5702#issuecomment-264457101
" https://github.com/SirVer/ultisnips/issues/593
augroup ultisnips_no_auto_expansion
    au!
    au VimEnter * au! UltiSnips_AutoTrigger
augroup END
"}}} 

"{{{auto save
let g:auto_save = 1
"}}} 

" vimtex {{{
let g:tex_flavor = 'latex'
packadd vimtex
call deoplete#custom#var('omni', 'input_patterns', {
            \ 'tex': g:vimtex#re#deoplete
            \})
let g:vimtex_compiler_latexmk = {
    \ 'build_dir': './build',
    \}
let g:vimtex_compiler_progname='nvr'
let g:vimtex_view_method = 'zathura'
" }}}

"{{{fzf
" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }
"}}}

"{{{jupytext.vim
" let g:jupytext_filetype_map = {'md': 'pandoc'}
let g:jupytext_fmt = 'py'
" let g:jupytext_print_debug_msgs = 1
"}}}

" Set autocommands

"{{{AUGROUP
augroup configgroup
    autocmd! 
    au FileType tex setlocal foldmethod=expr foldexpr=vimtex#fold#level(v:lnum) foldtext=vimtex#fold#text()
    au FileType tex setlocal foldlevel=0
    au FileType tex setlocal linebreak 
    au FileType tex nnoremap <buffer> j gj
    au FileType tex nnoremap <buffer> k gk
    au FileType vimwiki setlocal linebreak
    au FileType vimwiki nnoremap <Esc> :nohlsearch<CR>
    au FileType txt setlocal textwitdh=78
    au FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
    au TermOpen * set invnumber
    au TermClose * set number
    " au VimEnter * silent! !setxkbmap -option caps:ctrl_modifier
    " au VimLeave * silent! !setxkbmap -option 
    "au BufEnter * EnableAutocorrect
    au BufEnter * if &buftype == 'terminal' | :startinsert | endif
    au BufNewFile,BufRead ~/.config/i3/config set filetype=i3config
    au BufNewFile,BufRead *.py
        \ set tabstop=4       " insere 4 espaços para um tab
        \ set softtabstop=4   " insere/deleta 4 espaços quando teclar TAB/BACKSPACE
        \ set shiftwidth=4    " seta para 4 o número de espaços inseridos para identação
        \ set textwidth=88    " garante que nenhuma linha passe de 88 caracteres (editado para ficar de acordo com black e pylint)
        \ set expandtab       " insere caracteres de espaço sempre que a tecla <tab> é pressionada
        \ set shiftround      " round ident to multiple of 'shiftwidth'
        \ set autoindent      " copia a identação da linha anterior
        \ set fileformat=unix
    au BufNewFile,BufRead *.js;*.html;*.css;*.md;*.toml
        \ set tabstop=2
        \ set softtabstop=2
        \ set shiftwidth=2
        \ set expandtab

augroup END
"}}}

" Packages

" minpac {{{
function! PackInit() abort
  packadd minpac
  call minpac#init()
  " ---
  call minpac#add('k-takata/minpac', {'type': 'opt'})
  call minpac#add('tpope/vim-unimpaired')
  " call minpac#add('tpope/vim-projectionist')
  " call minpac#add('vim-syntastic/syntastic')
  " call minpac#add('neomake/neomake')
  call minpac#add('vim-airline/vim-airline')
  call minpac#add('vim-airline/vim-airline-themes')
  " --- fzf
  call minpac#add('junegunn/fzf')
  call minpac#add('junegunn/fzf.vim')
  " ---- closing
  call minpac#add('windwp/nvim-autopairs')
  " call minpac#add('jiangmiao/auto-pairs')
  " call minpac#add('alvan/vim-closetag')
  " ---- auto-complete 
  call minpac#add('Shougo/deoplete.nvim', {'type': 'opt'})
  " --- deoplete-plugins
  call minpac#add('deoplete-plugins/deoplete-jedi')
  call minpac#add('Shougo/deoplete-clangx')
  " ---- ipython
  call minpac#add('hkupty/iron.nvim', {'type': 'start'})
  " call minpac#add('thinca/vim-quickrun')
  "call minpac#add('sillybun/vim-repl')
  " ----
  call minpac#add('powerman/vim-plugin-autosess')
  " --- revisions "
  " call minpac#add('vim-scripts/savevers.vim')
  """" color scheme for vim """"
  call minpac#add('morhetz/gruvbox')
  call minpac#add('dikiaap/minimalist')
  """" semantic highlighting for python in neovim """"
  call minpac#add('numirias/semshi')
  " ---- asciidoc
  " call minpac#add('matcatc/vim-asciidoc-folding')
  " ---- js autocomplete
  " call minpac#add('ternjs/tern_for_vim')
  " call minpac#add('carlitux/deoplete-ternjs')
  call minpac#add('w0rp/ale')
  " --- helpers
  call minpac#add('Yggdroot/indentLine')
  " --- django
  " call minpac#add('tweekmonster/django-plus.vim')
  " --- vim-ledger
  call minpac#add('ledger/vim-ledger')
  " --- sudo in nvim
  call minpac#add('lambdalisue/suda.vim')
  " --- writing
  call minpac#add('junegunn/goyo.vim')
  call minpac#add('lifepillar/vim-solarized8')
  " --- i3config
  call minpac#add('mboughaba/i3config.vim')
  " --- dart-lang
  " call minpac#add('dart-lang/dart-vim-plugin')
  " --- latex ac
  call minpac#add('lervag/vimtex', {'type': 'opt'})
  " --- snippets
  call minpac#add('SirVer/ultisnips')
  call minpac#add('honza/vim-snippets')
  " --- auto save 
  call minpac#add('907th/vim-auto-save')
  " --- track coding time in vim
  call minpac#add('wakatime/vim-wakatime')
  " -- auto correct
  call minpac#add('sedm0784/vim-you-autocorrect')
  " --- vim wiki
  " call minpac#add('vimwiki/vimwiki')
  " call minpac#add('itchyny/calendar.vim')
  call minpac#add('vim-pandoc/vim-pandoc')
  call minpac#add('vim-pandoc/vim-pandoc-syntax')
  call minpac#add('Glench/Vim-Jinja2-Syntax')
  " ---
  call minpac#add('davidhalter/jedi-vim')
  call minpac#add('Vimjas/vim-python-pep8-indent')
  " --- html, js
  call minpac#add('mattn/emmet-vim')
  " ---
  call minpac#add('andymass/vim-matchup')
  call minpac#add('tpope/vim-surround')
  " ---
  " call minpac#add('jalvesaq/Nvim-R')
  " ---
  call minpac#add('goerz/jupytext.vim')
  "{{{colorscheme
  call minpac#add('liuchengxu/space-vim-dark')
  call minpac#add('srcery-colors/srcery-vim')
  "}}}
  call minpac#add('sk1418/HowMuch')
  "
  call minpac#add('numirias/semshi')
  " ---
  "
endfunction

command! PackUpdate call PackInit() | call minpac#update('', {'do': 'call minpac#status()'})
command! PackClean  call PackInit() | call minpac#clean()
command! PackStatus call PackInit() | call minpac#status()
"}}}

" Mappings

"{{{MAPPINGS
" TIPS: `no` remaps one key combination to another 

" https://stackoverflow.com/questions/2600783/how-does-the-vim-write-with-sudo-trick-work
"cmap w!! w !sudo tee > /dev/null %

"let mapleader=","

""" Insert
inoremap jk <Esc>

"{{{Iron Plugin
"}}}

"""" Normal
nmap <F7> :tabp<CR>
nmap <F8> :tabn<CR>
nmap <C-N><C-N> :set invnumber<CR> 
nnoremap <CR> :nohlsearch<CR><CR>
nnoremap <space> za

" --- buffer traverse commands
" unimpaired.vim

"""" Split navigations
"nnoremap <C-J> <C-W><C-J>
"nnoremap <C-K> <C-W><C-K>
"nnoremap <C-L> <C-W><C-L>
"nnoremap <C-H> <C-W><C-H>
"""" Navigate windows (as suggested by :h terminal-input)
tnoremap <A-h> <C-\><C-N><C-w>h
tnoremap <A-j> <C-\><C-N><C-w>j
tnoremap <A-k> <C-\><C-N><C-w>k
tnoremap <A-l> <C-\><C-N><C-w>l
inoremap <A-h> <C-\><C-N><C-w>h
inoremap <A-j> <C-\><C-N><C-w>j
inoremap <A-k> <C-\><C-N><C-w>k
inoremap <A-l> <C-\><C-N><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

"""" term tricks https://www.reddit.com/r/neovim/comments/3mrvyf/garoths_guide_to_neovim_term_tricks/



" http://vim.wikia.com/wiki/Alternative_tab_navigation
" Alter tab nav
nnoremap th  :tabfirst<CR>
nnoremap tk  :tabnext<CR>
nnoremap tj  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tt  :tabedit<Space>
"nnoremap tn  :tabnext<Space>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>
" Alternatively use
"nnoremap th :tabnext<CR>
"nnoremap tl :tabprev<CR>
nnoremap tn :tabnew<CR>
nnoremap <A-1> 1gt
nnoremap <A-2> 2gt
nnoremap <A-3> 3gt
nnoremap <A-4> 4gt
nnoremap <A-5> 5gt
nnoremap <A-6> 6gt
nnoremap <A-7> 7gt
nnoremap <A-8> 8gt
nnoremap <A-9> 9gt
nnoremap <A-0> 10gt

"""" deoplete selection binding
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" ---- ** PLUGINS MAPPINGS BEGIN
"source $VIMCONFIG/plugins-mappings/fzf.vim
" ---- ** PLUGINS MAPPINGS END
"}}}
