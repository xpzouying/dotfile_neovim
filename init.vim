

" zouying variables {
    :let zynvimpath = "$HOME/.config/nvim"
    :let zynvimpathplugged = zynvimpath . "/plugged"


"}


" General {
    set tabstop=4       " Number of spaces that a <tab> represents in a file
    set shiftwidth=4    " Use indents of 4 spaces
    set expandtab       " Tabs are spaces, not tabs
    set softtabstop=4   " Number of spaces that a <tab> represents
    " set smarttab
    set cursorline      " Highlight current line
    set nu              " Line numbers on
    set backspace=indent,eol,start      " Backspace for dummies
    set ignorecase
    set smartcase
" }



" Plugin - vim-plug{
    " Begin section
    call plug#begin(zynvimpathplugged)
    " call plug#begin('~/.config/nvim/plugged')

    " Feel & Look
    Plug 'morhetz/gruvbox'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    Plug 'scrooloose/nerdtree'


    " Plugs for everthing
    Plug 'Shougo/deoplete.nvim'

    " Programming
    Plug 'scrooloose/syntastic'
    Plug 'fatih/vim-go'
    Plug 'airblade/vim-gitgutter'
    Plug 'tpope/vim-fugitive'

    call plug#end()
    " End plug
" }


""""""""""
" Plugin config {
    " gruvbox {
        colorscheme gruvbox
        set background=dark     " default is light
        let g:gruvbox_bold=1
    " }


    " vim-airline {
        set laststatus=2
        let g:airline_theme='wombat'
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
    " }

" }
""""""""""


" Key-mapping {
    let mapleader=","

    " Move to the next & previous buffer
    nmap <leader>l :bnext<CR>
    nmap <leader>h :bprevious<CR>


" }
