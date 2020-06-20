" vim plugins manager

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
" 移动光标到插件名上, 使用'#'快速跳转到每个插件的配置处
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin', {'on': 'NERDTreeToggle'}

" 解决vim切换模式同时切换输入法的问题
Plug 'ybian/smartim'

Plug 'easymotion/vim-easymotion'
Plug 'rust-lang/rust.vim'
Plug 'majutsushi/tagbar'
Plug 'lervag/vimtex'
Plug 'leafgarland/typescript-vim'
if has('nvim')
    Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'
else
endif
" auto ctags
" Plug 'ludovicchabant/vim-gutentags'

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  " rust rls
  Plug 'prabirshrestha/async.vim'
  Plug 'prabirshrestha/vim-lsp'
  Plug 'mattn/vim-lsp-settings'
  Plug 'lighttiger2505/deoplete-vim-lsp'
else
" Plug 'Shougo/deoplete.nvim'
" Plug 'roxma/nvim-yarp'
" Plug 'roxma/vim-hug-neovim-rpc'
endif

Plug 'dense-analysis/ale'

Plug 'Raimondi/delimitMate'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
" Initialize plugin system
call plug#end()

" vim-easy-align {{{
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
" }}}

" nerdtree {{{
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
" }}}

" tarbar {{{
nmap <F8> :TagbarToggle<CR>
" }}}

" rust.vim {{{
let g:rustfmt_autosave = 1
" }}}

" ultisnips {{{
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
if has('nvim')
    let g:UltiSnipsExpandTrigger='<tab>'
    let g:UltiSnipsJumpForwardTrigger='<tab>'
    let g:UltiSnipsJumpBackwardTrigger='<s-tab>'
endif
" }}}

" vimtex {{{
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'
" }}}

" deoplete {{{
if has('nvim')
  let g:deoplete#enable_at_startup = 1
endif
" }}}

" airline {{{
let g:airline_powerline_fonts = 1

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

let g:airline#extensions#tabline#formatter = 'default'

let g:airline_theme='molokai'
" }}}

" lsp {{{
noremap ldc :LspDeclaration<CR>
noremap ldf :LspDefinition<CR>
noremap lh :LspHover<CR>
noremap ls :LspImplementation<CR>
noremap lne :LspNextError<CR>
noremap lpe :LspPreviousError<CR>
"g }}}
