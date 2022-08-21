" vim:foldmethod=marker:foldlevel=0
"
"{{dein config
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/warley/.vim/bundles/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin('/home/warley/.vim/bundles')

" Let dein manage dein
" Required:
call dein#add('/home/warley/.vim/bundles/repos/github.com/Shougo/dein.vim')

" Add or remove your plugins here like this:
"call dein#add('Shougo/neosnippet.vim')
"call dein#add('Shougo/neosnippet-snippets')

" Packages {{{
  " ---
" call dein#add('k-takata/minpac', {'type': 'opt'})
call dein#add('tpope/vim-unimpaired')
" ---
call dein#add('github/copilot.vim')
" call dein#add('tpope/vim-projectionist')
" call dein#add('vim-syntastic/syntastic')
" call dein#add('neomake/neomake')
call dein#add('vim-airline/vim-airline')
call dein#add('vim-airline/vim-airline-themes')
" --- fzf
call dein#add('junegunn/fzf')
call dein#add('junegunn/fzf.vim')
" ---- closing
call dein#add('windwp/nvim-autopairs')
" call dein#add('jiangmiao/auto-pairs')
" call dein#add('alvan/vim-closetag')
" ---- auto-complete 
" call dein#add('Shougo/deoplete.nvim')
call dein#add('Shougo/ddc.vim')
call dein#add('Shougo/ddc-nvim-lsp')
call dein#add('Shougo/ddc-around')
call dein#add('Shougo/ddc-matcher_head')
call dein#add('Shougo/ddc-sorter_rank')
call dein#add('Shougo/ddc-omni')
call dein#add('Shougo/pum.vim')
call dein#add('vim-denops/denops.vim')
call dein#add('neovim/nvim-lspconfig')
" --- deoplete-plugins
" call dein#add('deoplete-plugins/deoplete-jedi')
" call dein#add('Shougo/deoplete-clangx')
" ---- ipython
call dein#add('hkupty/iron.nvim')
" call dein#add('thinca/vim-quickrun')
"call dein#add('sillybun/vim-repl')
" ----
call dein#add('powerman/vim-plugin-autosess')
" --- revisions "
" call dein#add('vim-scripts/savevers.vim')
"""" color scheme for vim """"
" call dein#add('morhetz/gruvbox')
call dein#add('gruvbox-community/gruvbox')

call dein#add('dikiaap/minimalist')
"""" semantic highlighting for python in neovim """"
call dein#add('numirias/semshi')
" ---- asciidoc
" call dein#add('matcatc/vim-asciidoc-folding')
" ---- js autocomplete
" call dein#add('ternjs/tern_for_vim')
" call dein#add('carlitux/deoplete-ternjs')
call dein#add('w0rp/ale')
" --- helpers
call dein#add('Yggdroot/indentLine')
" --- django
" call dein#add('tweekmonster/django-plus.vim')
" --- vim-ledger
call dein#add('ledger/vim-ledger')
" --- sudo in nvim
call dein#add('lambdalisue/suda.vim')
" --- writing
call dein#add('junegunn/goyo.vim')
call dein#add('lifepillar/vim-solarized8')
" --- syntax highlighting
call dein#add('mboughaba/i3config.vim')
" --- dart-lang
" call dein#add('dart-lang/dart-vim-plugin')
" --- latex ac
call dein#add('lervag/vimtex')
" --- snippets
call dein#add('SirVer/ultisnips')
call dein#add('honza/vim-snippets')
" --- auto save 
call dein#add('907th/vim-auto-save')
" --- track coding time in vim
call dein#add('wakatime/vim-wakatime')
" -- auto correct
call dein#add('sedm0784/vim-you-autocorrect')
" --- vim wiki
" call dein#add('vimwiki/vimwiki')
" call dein#add('itchyny/calendar.vim')
call dein#add('vim-pandoc/vim-pandoc')
call dein#add('vim-pandoc/vim-pandoc-syntax')
call dein#add('Glench/Vim-Jinja2-Syntax')
" ---
call dein#add('davidhalter/jedi-vim')
call dein#add('Vimjas/vim-python-pep8-indent')
" --- html, js
call dein#add('mattn/emmet-vim')
" ---
call dein#add('andymass/vim-matchup')
call dein#add('tpope/vim-surround')
" ---
" call dein#add('jalvesaq/Nvim-R')
" ---
call dein#add('goerz/jupytext.vim')
"{{{colorscheme
call dein#add('liuchengxu/space-vim-theme')
call dein#add('srcery-colors/srcery-vim')
"}}}
call dein#add('sk1418/HowMuch')
" --- git
call dein#add('airblade/vim-gitgutter')

"}}}

" Required:
call dein#end()

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------

"{{{Misc
" set rtp ^=~/.vim/bundles
" let &packpath = &rtp
" syntax enable
" To enable arbtt track what files I am working on.
set title
set clipboard+=unnamedplus
set listchars=tab:>-,trail:-
set iskeyword=@,48-57,_,192-255,-
set history=200
set relativenumber
set number
set updatetime=10
set tags=~/dev/tags/

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
set bg=dark
" FROM morhetx/gruvbox wiki
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif
hi Search cterm=None ctermfg=grey ctermbg=blue guifg=white guibg=blue
"}}}

"{{{ gruvbox
" colorscheme srcery
hi StatusLine ctermfg=white
let g:gruvbox_colors = {
            \ 'bright_yellow':  '#000000',
            \ 'bright_blue': '#ffffff',
            \ 'faded_yellow':  '#000000',
            \ 'faded_blue': '#ffffff',
            \ 'yellow':  '#000000',
            \ 'blue': '#ffffff'}
let g:gruvbox_contrast_light='hard'
let g:gruvbox_italic=1
"colorscheme gruvbox
"}}}

"{{{space-vim-theme
hi Comment cterm=italic
colorscheme space_vim_theme
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
"
"{{{ Python host
let g:python_host_prog = '$HOME/.virtualenvs/neovim-py2/bin/python'
let g:python3_host_prog = '$HOME/.virtualenvs/neovim/bin/python'
"}}}

"{{{ Deoplete 
" let g:deoplete#enable_at_startup = 1
" "let g:deoplete#auto_complete_delay=100 " because semshi
" packadd deoplete.nvim
" call deoplete#custom#option('auto_complete_delay', 100)
"}}}

"{{{ LSP
lua require('lspconfig').pyright.setup{}
"}}}

"{{{ ddc
call ddc#custom#patch_global('sources', ['nvim-lsp', 'omni', 'around'])
call ddc#custom#patch_global('sourceOptions', {
      \ '_': { 'matchers': ['matcher_head'], 'sorters': ['sorter_rank'] },
      \ 'around': {'mark': 'A'},
      \ 'nvim-lsp': {
      \   'mark': 'lsp',
      \   'forceCompletionPattern': '\.\w*|:\w*|->\w*' },
      \ 'omni': {
      \   'mark': 'O'},
      \ })

" Use Customized labels
call ddc#custom#patch_global('sourceParams', { 
            \ 'around': {'maxSize': 500}, 
            \ 'nvim-lsp': { 'kindLabels': { 'Class': 'c' } }, 
            \ })

" <TAB>: completion.
inoremap <silent><expr> <TAB>
\ ddc#map#pum_visible() ? '<C-n>' :
\ (col('.') <= 1 <Bar><Bar> getline('.')[col('.') - 2] =~# '\s') ?
\ '<TAB>' : ddc#map#manual_complete()

" <S-TAB>: completion back.
inoremap <expr><S-TAB>  ddc#map#pum_visible() ? '<C-p>' : '<C-h>'

call ddc#enable()
"}}}

"{{{ pum
inoremap <C-n>   <Cmd>call pum#map#insert_relative(+1)<CR>
inoremap <C-p>   <Cmd>call pum#map#insert_relative(-1)<CR>
inoremap <C-y>   <Cmd>call pum#map#confirm()<CR>
inoremap <C-e>   <Cmd>call pum#map#cancel()<CR>
inoremap <PageDown> <Cmd>call pum#map#insert_relative_page(+1)<CR>
inoremap <PageUp>   <Cmd>call pum#map#insert_relative_page(-1)<CR>
"}}}

"{{{Airline
let g:airline_powerline_fonts=1
"let g:airline_theme='simple'
let g:airline_theme='dark'
"}}}

"{{{ jedi-vim
let g:jedi#completions_enabled = 0
set noshowmode
let g:jedi#popup_on_dot = 0
let g:jedi#show_call_signatures = 2
"let g:jedi#auto_initialization = 0
"}}}

"{{{ NERDTree 
let NERDTreeIgnore=['\.pyc$', '\~$'] " Hide .pyc files in NERDTree
"}}}

"{{{netrw
let g:netrw_banner=0
let g:netrw_browse_split=0
let g:netrw_winsize=25
let g:netrw_liststyle=3
"}}} 

"{{{vim-matchup
let g:matchup_surround_enabled = 1
"}}}

"{{{ALE
let g:ale_lint_on_enter = 1
let g:ale_lint_text_changed = 'insert'
" let g:ale_python_pylint_options = '--rcfile ~/.pylintrc'
let g:ale_linters = {'python': ['pylint']}
let g:ale_fixers = {
            \ 'python' : ['black'],}
let g:ale_python_black_options = '--line-length 88 --experimental-string-processing'
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
" packadd iron.nvim
" mappings for iron are here
luafile $HOME/.config/nvim/plugins/iron.lua
"let g:iron_repl_open_cmd='split'
" should I remove these globals?
let g:iron_map_defaults = 0
let g:iron_map_extended = 0
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
" packadd vimtex
" call deoplete#custom#var('omni', 'input_patterns', {
"             \ 'tex': g:vimtex#re#deoplete
"             \})
call vimtex#init()
call ddc#custom#patch_filetype(['tex'], 'sourceOptions', {
      \ 'omni': {
      \   'forceCompletionPattern': g:vimtex#re#deoplete
      \ },
      \ })
call ddc#custom#patch_filetype(['tex'], 'sourceParams', {
      \ 'omni': {'omnifunc': 'vimtex#complete#omnifunc'},
      \ })
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
"

"{{{vim-gitgutter
"highlight link GitGutterChangeLineNr Underlined
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
    au FileType python 
        \ set tabstop=4       " insere 4 espaços para um tab
        \ set softtabstop=4   " insere/deleta 4 espaços quando teclar TAB/BACKSPACE
        \ set shiftwidth=4    " seta para 4 o número de espaços inseridos para identação
        \ set textwidth=88    " garante que nenhuma linha passe de 88 caracteres (editado para ficar de acordo com black e pylint)
        \ set expandtab       " insere caracteres de espaço sempre que a tecla <tab> é pressionada
        \ set shiftround      " round ident to multiple of 'shiftwidth'
        \ set autoindent      " copia a identação da linha anterior
        \ set fileformat=unix
    au FileType *.js;*.html;*.css;*.md;*.toml
        \ set tabstop=2
        \ set softtabstop=2
        \ set shiftwidth=2
        \ set expandtab

augroup END
"}}}
"

"{{{General autocmds
" cursor line only in normal mode
autocmd InsertLeave,WinEnter * set cursorline
autocmd InsertEnter,WinLeave * set nocursorline
" gray status line always
autocmd ColorScheme * highlight StatusLine ctermbg=darkgray cterm=NONE guibg=darkgray gui=NONE
" Restore cursor position when opening file
autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   execute "normal! g`\"" |
    \ endif

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
" nmap <F7> :tabp<CR>
" nmap <F8> :tabn<CR>
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

"{{{General remappings
" Saner CTRL-L -- https://github.com/mhinz/vim-galore#saner-ctrl-l
nnoremap <leader>l :nohlsearch<cr>:diffupdate<cr>:syntax sync fromstart<cr><c-l>
" Saner command-line history -- zsh-like for me
cnoremap <expr> <c-n> wildmenumode() ? "\<c-n>" : "\<down>"
cnoremap <expr> <c-p> wildmenumode() ? "\<c-p>" : "\<up>"
" Saner behavior of n and N -- n forward, N backward
nnoremap <expr> n  'Nn'[v:searchforward]
xnoremap <expr> n  'Nn'[v:searchforward]
onoremap <expr> n  'Nn'[v:searchforward]

nnoremap <expr> N  'nN'[v:searchforward]
xnoremap <expr> N  'nN'[v:searchforward]
onoremap <expr> N  'nN'[v:searchforward]
"}}}

" ---- ** PLUGINS MAPPINGS BEGIN
"source $VIMCONFIG/plugins-mappings/fzf.vim
" ---- ** PLUGINS MAPPINGS END
"}}}
