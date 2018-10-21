set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'Valloric/YouCompleteMe'


Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'tikhomirov/vim-glsl'
Plugin 'vim-pandoc/vim-pandoc'
Plugin 'vim-pandoc/vim-pandoc-syntax'
Plugin 'vim-pandoc/vim-rmarkdown'

call vundle#end()
filetype plugin indent on
syntax on

" YouCompleteMe options
" Ask once per conf file
let g:ycm_confirm_extra_conf_globlist = ['~/dev']


" Enhanced cpp highlight options
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_experimental_template_highlight = 1

" Pandoc syntax
let g:pandoc#syntax#conceal#use = 0

" Fix backspace deltion bug
set backspace=2

" Good defaults for most langauges
set tabstop=2 shiftwidth=2 expandtab autoindent
set number relativenumber
