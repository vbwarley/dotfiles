" ---- MAPPINGS
" Tips: `no` remaps one key combination to another 

" https://stackoverflow.com/questions/2600783/how-does-the-vim-write-with-sudo-trick-work
cmap w!! w !sudo tee > /dev/null %

""" Insert
inoremap jk <Esc>

""" Iron
nnoremap yr :IronRepl<CR>
nmap ,r <Plug>(iron-send-motion)
xmap ,r <Plug>(iron-send-motion)
nmap yR V,r

"""" Normal
nmap <F7> :tabp<CR>
nmap <F8> :tabn<CR>
nmap <C-N><C-N> :set invnumber<CR> 
nnoremap <CR> :nohlsearch<CR><CR>
nnoremap <space> za
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

" ---- ** PLUGINS MAPPINGS BEGIN
source $VIMCONFIG/plugins-mappings/fzf.vim
" ---- ** PLUGINS MAPPINGS END

" --------------------------------- PLUGINS CONFIG BEGIN
let g:airline_powerline_fonts=1
let g:airline_theme='simple'
let g:livepreview_previewer = 'zathura'
let g:livepreview_engine    = 'xelatex' " fallback mas coloquei para saber qual é
let g:SimpylFold_docstring_preview=1 " See the docstrings for folded code

"""" Syntastic
"let g:syntastic_always_populate_loc_list = 1
""set statusline+=%#warningmsg#
""set statusline+=%{SyntasticStatuslineFlag()}
""set statusline+=%*

"""" NERDTree 
let NERDTreeIgnore=['\.pyc$', '\~$'] " Hide .pyc files in NERDTree

"""" Slime
let g:slime_target = 'vimterminal'
let g:slime_python_ipython = 1

"""" deoplete.vim
let g:deoplete#enable_at_startup = 1

"""" neomake

"""" netrw
let g:netrw_banner=0
let g:netrw_browse_split=2
let g:netrw_winsize=25
let g:netrw_liststyle=3

"""" iron
let g:iron_repl_open_cmd='split'

" --------------------------------- PLUGINS CONFIG END

" ---- LANG MISC SUPPORT
"""" Virtualenv support (sets up system path so that YCM will find the pkgs)
"py3 << EOF
"import os
"import sys
"if 'VIRTUAL_ENV' in os.environ:
"    project_base_dir = os.environ['VIRTUAL_ENV']
"    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
"    execfile(activate_this, dict(__file__=activate_this))
"EOF

" https://github.com/Vigemus/iron.nvim/issues/100#issuecomment-449937673
" iron plugin ipython repl (didn't work; hack in python.lua)
"lua << EOF
"require("iron").core.set_config {
"  preferred = { python = 'ipython' }
"}
"
"EOF

