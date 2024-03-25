"Always show where im at"
set ruler

"Show in realtime matchs of my search"
set incsearch

"show in realtime the relative numbers of lines"
set relativenumber

"show matching brackets"
set showmatch

syntax enable

set smarttab
set smartindent
set autoindent

"Auto indent"
set ai

"Smart indent"
set si

"Wrap lines"
set wrap

"Minimun of 8 lines to go"
set scrolloff=8

set lazyredraw
set encoding=utf-8

"Show white bar below"
set laststatus=2

"Show actual line number"
set nu

"Tab should be 4 spaces"
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

"Colorscheme options"
colorscheme retrobox
hi Normal guibg=NONE ctermbg=NONE

"Bindings"
nnoremap <C-b> : Lexplore<CR>
