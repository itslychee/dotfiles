

syntax on
set nocompatible
set number

call plug#begin()
	Plug 'sheerun/vim-polyglot'
	Plug 'joshdick/onedark.vim'
	Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
	Plug 'vimsence/vimsence'
call plug#end()

colorscheme onedark

