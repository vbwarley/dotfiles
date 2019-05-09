" --------------- GENERAL CONFIG BEGIN 
set runtimepath^=~/.vim runtimepath+=~/.vim/after
set clipboard+=unnamedplus
let &packpath = &runtimepath

""" tabs happy tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

"""" uncat
set listchars=tab:>-,trail:-
set iskeyword=@,48-57,_,192-255,-

"""" Syntax (needed to enable custom colors)
syntax enable

"""" Splits
set splitbelow
set splitright

"""" Enable folding
set foldmethod=indent
set foldlevel=99

set number

set backup

set termguicolors
"colorscheme gruvbox
colorscheme minimalist
hi Search cterm=None ctermfg=grey ctermbg=blue guifg=white guibg=blue

set history=200

" --------------- GENERAL CONFIG END   
"
" --------------- MINPAC BEGIN
" For convenience, use these custom commands to update/clean plugins (see repo)
function! PackInit() abort
  packadd minpac

  call minpac#init()
  " To uninstall, you remove the line installing the plugin
  " save, reload this file
  " and invoke the command :call minpac#clean() 
  call minpac#add('k-takata/minpac', {'type': 'opt'})
  call minpac#add('tpope/vim-unimpaired')
  " call minpac#add('tpope/vim-projectionist')
  " call minpac#add('vim-syntastic/syntastic')
  call minpac#add('neomake/neomake')
  call minpac#add('vim-airline/vim-airline')
  call minpac#add('vim-airline/vim-airline-themes')
  call minpac#add('junegunn/fzf')
  call minpac#add('junegunn/fzf.vim')

  " ---- syntax plugins
  call minpac#add('cespare/vim-toml')
  call minpac#add('octol/vim-cpp-enhanced-highlight')

  " ---- closing
  call minpac#add('jiangmiao/auto-pairs')
  call minpac#add('alvan/vim-closetag')

  " ---- auto-complete 
  call minpac#add('Shougo/deoplete.nvim')
  "call minpac#add('zchee/deoplete-clang')

  " ---- ipython
  "call minpac#add('Vigemus/iron.nvim')

  call minpac#add('thinca/vim-quickrun')
  call minpac#add('powerman/vim-plugin-autosess')

  " --- revisions "
  "call minpac#add('vim-scripts/savevers.vim')
  "

  """" color scheme for vim """"
  call minpac#add('morhetz/gruvbox')
  call minpac#add('dikiaap/minimalist')

  """" semantic highlighting for python in neovim """"
  call minpac#add('numirias/semshi')

  " ---- asciidoc
  call minpac#add('matcatc/vim-asciidoc-folding')

  " ---- react
  call minpac#add('pangloss/vim-javascript')
  call minpac#add('mxw/vim-jsx', {'do' : {'for': 'json'}})
  call minpac#add('mattn/emmet-vim', {'do' : {'for' : ['javascript.jsx', 'html', 'css']}})

  " --- lint
  call minpac#add('w0rp/ale')

  " --- helpers
  call minpac#add('Yggdroot/indentLine')

  "Plugin 'xuhdev/vim-latex-live-preview'
  "Plugin 'Valloric/YouCompleteMe'
  "Plugin 'tpope/vim-fugitive'
  "Plugin 'scrooloose/nerdtree'
  "Plugin 'tmhedberg/SimpylFold'
  "Plugin 'vim-scripts/indentpython.vim'
  "Plugin 'nvie/vim-flake8'
  "Plugin 'tikhomirov/vim-glsl'
  "Plugin 'jpalardy/vim-slime'
  "Plugin 'kien/ctrpl.vim'
  " For neomake
  "call neomake#configure#automake('nw', 1000)

  " See if has('nvim') for older plugins

endfunction

" Plugin settings


command! PackUpdate call PackInit() | call minpac#update('', {'do': 'call minpac#status()'})
command! PackClean  call PackInit() | call minpac#clean()
command! PackStatus call PackInit() | call minpac#status()

" --------------- MINPAC END 
"
" --------------- AUTO COMMANDS BEGIN

au TermOpen * set invnumber
au TermClose * set number

" ---- Auto-save when nvim loses focus
au FocusLost * :wa

" ---- Capslock to CTRL when entering NVIM
au VimEnter * silent! !setxkbmap -option caps:ctrl_modifier
au VimLeave * silent! !setxkbmap -option 

" ---- Others...
autocmd FileType txt setlocal textwitdh=78

"""" PYTHON (search for plugin to auto this)
au BufNewFile,BufRead *.py
    \ set tabstop=4       " insere 4 espaços para um tab
    \ set softtabstop=4   " insere/deleta 4 espaços quando teclar TAB/BACKSPACE
    \ set shiftwidth=4    " seta para 4 o número de espaços inseridos para identação
    \ set textwidth=79    " garante que nenhuma linha passe de 79 caracteres (editado para ficar de acordo com PEP 8)
    \ set expandtab       " insere caracteres de espaço sempre que a tecla <tab> é pressionada
    \ set shiftround      " round ident to multiple of 'shiftwidth'
    \ set autoindent      " copia a identação da linha anterior
    \ set fileformat=unix

"""" FullStackDev
au BufNewFile,BufRead *.js;*.html;*.css;*.md;*.toml
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2
    \ set expandtab

"""" Highlights for OpenGLSL
au BufNewFile,BufRead *.vs,*.fs,*.vsh,*.fsh set ft=glsl

"""" Flagging Unnecessary Whitespace
highlight BadWhitespace ctermfg=16 ctermbg=253
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

"""" term tricks https://www.reddit.com/r/neovim/comments/3mrvyf/garoths_guide_to_neovim_term_tricks/
au BufEnter * if &buftype == 'terminal' | :startinsert | endif


" --------------- AUTO COMMANDS END  
"
" SOURCE VIMRC AND OTHERS THINGS, I THINK
source ~/.vimrc
