

" zouying variables {
    :let zynvimpath = "$HOME/.config/nvim"
    :let zynvimpathplugged = zynvimpath . "/plugged"


"}


" General {
    set nocompatible
    syntax on
    " set encoding=utf-8  " UTF8
    set tabstop=4       " Number of spaces that a <tab> represents in a file
    set shiftwidth=4    " Use indents of 4 spaces
    set expandtab       " Tabs are spaces, not tabs
    set softtabstop=4   " Number of spaces that a <tab> represents
    set shiftwidth=4
    " set smarttab
    set cursorline      " Highlight current line
    set nu              " Line numbers on
    set backspace=indent,eol,start      " Backspace for dummies
    set ignorecase
    set smartcase

    " With system clipboard
    set clipboard+=unnamedplus


    " set neovim with true color
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
" }


" Key-mapping {
    let mapleader=","

    " Move to the next & previous buffer
    nmap <F2> :bprevious<CR>
    nmap <F3> :bnext<CR>


" }


" Programming {
    " Path to python interpreter for neovim
    " let g:python3_host_prog = '/usr/local/bin/python3'
    " Skip the check of neovim module
    " let g:python_host_skip_check = 1
    " let g:python3_host_skip_check = 1

" }


" Plugin - vim-plug{
    " DoRmotePlugin {
        function! DoRemotePlugin(arg)
            UpdateRemotePlugins
        endfunction

    " }



    " Begin section
    call plug#begin(zynvimpathplugged)
    " call plug#begin('~/.config/nvim/plugged')

    " Feel & Look
    Plug 'morhetz/gruvbox'
    Plug 'dracula/vim'  " color for dracula
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    Plug 'scrooloose/nerdtree'

    " Highlight current words
    Plug 'xpzouying/HiCursorWords'

    " Plugs for everthing
    Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemotePlugin') }
    " Plug 'valloric/youcompleteme'
    " Plug 'valloric/youcompleteme', {  
    "  \ 'build'      : {
    "     \ 'mac'     : './install.sh --clang-completer --system-libclang --omnisharp-completer',
    "     \ 'unix'    : './install.sh --clang-completer --system-libclang --omnisharp-completer',
    "     \ 'windows' : './install.sh --clang-completer --system-libclang --omnisharp-completer',
    "     \ 'cygwin'  : './install.sh --clang-completer --system-libclang --omnisharp-completer'
    "     \ }
    "  \ }
    " Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}

    Plug 'easymotion/vim-easymotion'
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'


    " Programming
    Plug 'octol/vim-cpp-enhanced-highlight'
    Plug 'scrooloose/syntastic'
    Plug 'fatih/vim-go'
    Plug 'airblade/vim-gitgutter'
    Plug 'tpope/vim-fugitive'
    Plug 'zchee/deoplete-go', { 'do': 'make'}
    " Plug 'pearofducks/ansible-vim'

    " Python
    Plug 'davidhalter/jedi-vim'

    call plug#end()
    " End plug
" }


""""""""""
" Plugin config {
    """ " gruvbox {
    """     colorscheme gruvbox
    """     set background=dark     " default is light
    """     " let g:gruvbox_termcolor=16    " default is 256
    """     let g:gruvbox_italic=1
    """     let g:gruvbox_bold=1
    """ " }

    " dracula/vim {
        color dracula
    " }


    " vim-airline {
        set laststatus=2
        let g:airline_theme='gruvbox'
        let g:airline#extensions#branch#enabled=1
        " let g:airline#extension#syntastic#enabled=1
        let g:airline_powerline_fonts=1

        " Enable the list of buffers
        let g:airline#extensions#tabline#enabled=1
        " Show just the file name
        " let g:airline#extensions#tabline#fnamemod=':t'
    " }


    " NERDTree {
        map <F4> :NERDTreeToggle<CR>

        let NERDTreeIgnore=['\.py[cd]$', '\~$', '\.sw[op]$', '^\.git$']
        let NERDTreeQuitOnOpen=1  " Close the tree window after opening a file
    " }


    " deoplete.nvim {
        let g:deoplete#enable_at_startup=1

        set completeopt+=noselect
        " automatically closing the scratch window. :pc, :pclose
        autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

    " }

    " deoplete-go settings {
        let g:deoplete#sources#go#gocode_binary = $GOPATH.'/bin/gocode'
        let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']
    " }


    " EasyMotion {
        " <Leader>f{char} to move to {char}
        map  <Leader>f <Plug>(easymotion-bd-f)
        nmap <Leader>f <Plug>(easymotion-overwin-f)

        " s{char}{char} to move to {char}{char}
        nmap s <Plug>(easymotion-overwin-f2)

        " Move to line
        map <Leader>L <Plug>(easymotion-bd-jk)
        nmap <Leader>L <Plug>(easymotion-overwin-line)

        " Move to word
        map  <Leader>w <Plug>(easymotion-bd-w)
        nmap <Leader>w <Plug>(easymotion-overwin-w)
    " }

    " { YouCompleteMe
        " let g:ycm_global_ycm_extra_conf = '~/.config/nvim/plugged/youcompleteme/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
        " let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'

        " nnoremap <leader>d :YcmCompleter GoToDefinitionElseDeclaration<CR>
        " let g:ycm_confirm_extra_conf = 0
    " }

    " { fzf: Fuzzy file finder
        nnoremap <c-p> :FZF<cr>

        " This is the default extra key bindings
        let g:fzf_action = {
                    \ 'ctrl-t': 'tab split',
                    \ 'ctrl-x': 'split',
                    \ 'ctrl-v': 'vsplit' }

        " Default fzf layout
        " - down / up / left / right
        " - window (nvim only)
        " let g:fzf_layout = { 'down': '~40%' }

	" set rtp+=/usr/local/opt/fzf

        " Customize fzf colors to match your color scheme
        let g:fzf_colors =
                    \ { 'fg':      ['fg', 'Normal'],
                    \ 'bg':      ['bg', 'Normal'],
                    \ 'hl':      ['fg', 'Comment'],
                    \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
                    \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
                    \ 'hl+':     ['fg', 'Statement'],
                    \ 'info':    ['fg', 'PreProc'],
                    \ 'prompt':  ['fg', 'Conditional'],
                    \ 'pointer': ['fg', 'Exception'],
                    \ 'marker':  ['fg', 'Keyword'],
                    \ 'spinner': ['fg', 'Label'],
                    \ 'header':  ['fg', 'Comment'] }

    " }

    " Plug 'octol/vim-cpp-enhanced-highlight'
        let g:cpp_class_scope_highlight = 1
        let g:cpp_experimental_simple_template_highlight = 1
        let g:cpp_concepts_highlight = 1
    " }

    " syntastic recommanded settings {
        set statusline+=%#warningmsg#
        set statusline+=%{SyntasticStatuslineFlag()}
        set statusline+=%*

        let g:syntastic_always_populate_loc_list = 1
        let g:syntastic_auto_loc_list = 1
        let g:syntastic_check_on_open = 1
        let g:syntastic_check_on_wq = 0
    " }

    " {
        " By default syntax-highlighting for Functions,
        " Methods and Structs is disabled.
        " To change it:
        let g:go_highlight_functions = 1
        let g:go_highlight_methods = 1
        let g:go_highlight_structs = 1
        let g:go_highlight_interfaces = 1
        let g:go_highlight_operators = 1
        let g:go_highlight_build_constraints = 1

        " Python
        let g:syntastic_python_checkers = ['pep8']

        " Enable goimports
        " let g:go_fmt_command = "goimports"

        " Syntastic
        let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
        let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }

        let g:go_list_type = "quickfix"


    " }

    " jedi-vim {
        " jedi override previous config
        autocmd FileType python setlocal expandtab tabstop=4 shiftwidth=4
    " }

    " HiCursorWords {
        let g:HiCursorWords_delay=1000

    " }

" }
""""""""""
