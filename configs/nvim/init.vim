
if !exists("g:vscode")
  set nocompatible
  filetype off

  set rtp+=~/.vim/bundle/Vundle.vim
  call vundle#begin()
  Plugin 'VundleVim/Vundle.vim'

  " Plugin 'maralla/completor.vim'

  " Plugin 'tikhomirov/vim-glsl'

  " Plugin 'sheerun/vim-polyglot'

  Plugin 'scrooloose/nerdtree'

  Plugin 'fatih/vim-go'

  Plugin 'lervag/vimtex'
  " Plugin 'vim-latex/vim-latex'
  " Plugin 'xuhdev/vim-latex-live-preview'

  " Plugin 'tpope/vim-fugitive'

  " Plugin 'rstacruz/sparkup'

  Plugin 'Chiel92/vim-autoformat'

  " Plugin 'dense-analysis/ale'

  Plugin 'vim-airline/vim-airline'
  Plugin 'vim-airline/vim-airline-themes'

  Plugin 'vim-scripts/modelica'
  " Plugin 'Twinside/vim-modelica'


  call vundle#end()
  filetype plugin indent on
  syntax on

  " Make escape remove last search highlight
  nnoremap <esc> :noh<return><esc>

  " Set python executable
  let g:python3_host_prog="/home/cale/software/anaconda3/bin/python"

  " YouCompleteMe options
  "" Ask once per conf file
  let g:ycm_confirm_extra_conf_globlist = ['~/dev']
  let g:ycm_filetype_blacklist = {'rmd': 1}

  " NERDTree settings
  let g:NERDTreeQuitOnOpen=0
  let g:NERDTreeIgnore=['\.pyc', '\.swp']
  "" NERDTree toggle button
  map <C-x> :NERDTreeToggle<Enter>
  "" Open NERDTree on vim startup
  autocmd vimenter * NERDTree
  "" Close vim if NERDTree is the last tab
  autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


  " Enhanced cpp highlight options
  let g:cpp_class_scope_highlight = 1
  let g:cpp_member_variable_highlight = 1
  let g:cpp_class_decl_highlight = 1
  let g:cpp_experimental_template_highlight = 1

  " html5 options
  let g:html5_event_handler_attributes_complete = 1
  let g:html5_rdfa_attributes_complete = 1
  let g:html5_microdata_attributes_complete = 1
  let g:html5_aria_attributes_complete = 1

  " Fix backspace deletion bug
  set backspace=2

  " Good defaults for most langauges
  set tabstop=2 shiftwidth=2 expandtab autoindent
  set number relativenumber
  set incsearch
  set wrap linebreak  " useful for files with long lines

  " Ctags
  set tags+=$HOME/mono/projects/pong

  " .dockerfile highlight
  au BufRead,BufNewFile *.dockerfile setfiletype dockerfile

  " Syntastic settings
  " set statusline+=%warningsmsg#
  " set statusline+=%{SyntasticStatusFlag()}
  " set statusline+=%*
  " let g:syntastic_always_populate_loc_list = 1
  " let g:syntastic_auto_loc_list = 1
  " let g:syntastic_check_on_open = 1
  " let g:syntastic_check_on_wq = 0

  " Gazebo/ROS development: xml type files
  au BufRead,BufNewFile *.sdf set syntax=xml
  au BufRead,BufNewFile *.urdf set syntax=xml
  au BufRead,BufNewFile *.world set syntax=xml
  au BufRead,BufNewFile *.launch set syntax=xml
  au BufRead,BufNewFile model.config set syntax=xml

  " Latex, see ftplugin/tex.vim
  au BufRead,BufNewFile *.tikz set syntax=tex
  let g:tex_flavor='latex'

  " vimtex
  let g:vimtex_fold_enabled=0

  " Markdown
  au BufRead,BufNewFile *.md noremap j gj
  au BufRead,BufNewFile *.md noremap k gk
  au BufRead,BufNewFile *.md set spell

  " Completor
  let g:completor_clang_binary = '/usr/bin/clang'
  inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
  inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<cr>"

  " Autoformat
  let g:autoformat_autoindent = 0
  let g:autoformat_retab = 0
  let g:autoformat_remove_trailing_spaces = 0
  let g:formatter_yapf_style = 'pep8'
  let g:formatters_python = []
  au BufWrite * :Autoformat

  " ALE
  let g:ale_fix_on_save = 1
  let g:ale_fixers = {
  \ '*' : ['remove_trailing_lines', 'trim_whitespace'],
  \ 'tex' : ['latexindent'],
  \}
  let g:airline#extensions#ale#enabled = 1
endif
