" First, install bundle: git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
"" --------------------------- Plugin ----------------------------------------
set        nocompatible
filetype   off
set        rtp+=~/.vim/bundle/Vundle.vim
call       vundle#begin()
	Plugin 'VundleVim/Vundle.vim'
	Plugin 'altercation/vim-colors-solarized'
	Plugin 'scrooloose/nerdtree'
"	Plugin 'https://github.com/suoto/hdlcc', {'do': 'cd ../ && pip install --user ./hdlcc'}
	Plugin 'suoto/vim-hdl'
	Plugin 'syntastic'
	Plugin 'vim-scripts/Conque-GDB'
	Plugin 'junegunn/vim-easy-align'
	Plugin 'airblade/vim-gitgutter'
	Plugin 'scrooloose/nerdcommenter'
	Plugin 'ervandew/supertab'
	Plugin 'SirVer/ultisnips'
	Plugin 'honza/vim-snippets'
call       vundle#end()
filetype   plugin indent on
filetype   on


"" -------------------- shortcuts  ----------------------------------------------
map  <f2> 	 : make<bar>cw<cr><cr><cr>
map  <f3> 	 : cnext<cr>
map  <f4> 	 : NERDTreeToggle<cr>
map  <f5> 	 : SyntasticCheck<cr>
map  <f6> 	 : SyntasticToggleMode<cr>
nmap <f9>    : vsplit<bar>:term ++curwin<cr>c<cr>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
xmap ga <Plug>(EasyAlign)


"" -------------------- Common -------------------------------------------------
syntax on 	  	" turn on syntax
set number      " add number column
set ruler 	    " show cursor position on the last line
set autoread    " auto read when file is changed from outside
set autowrite   " auto write
set mouse=v     " use mouse every where
set scrolloff=5 " Keep more lines on-screen when scrolling up/down
set mousehide   " hide mouse when typing
set cursorline  " highlight current line
set hlsearch    " highlight searched things
set incsearch   " incremental search
set ignorecase  " ignore case
set fdm=diff     " hidden fuction group to a line
set t_Co=256    " set number of terminal colour
set splitright
set tabstop=4
set tags=tags;/
set encoding=utf-8
set cmdheight=2
set shiftwidth=4
set textwidth=80
set updatetime=250
set laststatus=2
set statusline=%t%m\ [%l/%L]\ %y\ [%F] 
set backspace=indent,eol,start
set iskeyword+=_,$,@,%,#
set wildmenu
set wildmode=longest:full,full

if strftime("%H") < 12
 	set background=dark
	colorscheme apprentice
	let g:solarized_contrast = "high"
else
  	set background=dark
	colorscheme hydrangea
"	let g:rehash256 = 1
"	let g:molokai_original = 1
endif
if &term =~ '256color'
    " Disable Background Color Erase (BCE) so that color schemes
    " work properly when Vim is used inside tmux and GNU screen.
    set t_ut=
endif
" autocmd VimEnter * NERDTree | wincmd p
hi CursorLine term=bold cterm=bold guibg=Grey40


" -------------------- Load scripts --------------------------------------------
source ~/.vim/script/code_style.vim
au FileType {tex,latex} let g:indentLine_conceallevel=0
au FileType {c,cpp} source ~/.vim/script/ccpp.vim
au FileType {vhdl,vhd,verilog,systemverilog} source ${HOME}/.vim/script/hdl.vim
au FileType {tex,bib,latex} source ${HOME}/.vim/script/tex.vim


"" -------------------- Config plugin  ----------------------------------------------
let NERDTreeIgnore                       = ['\~$', '^\.git', '\.swp$','\.o']
let g:NERDSpaceDelims					 = 1
let g:NERDTrimTrailingWhitespace		 = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list            = 1
let g:syntastic_check_on_open            = 1
let g:syntastic_check_on_wq              = 0
let g:syntastic_vhdl_checkers            = ['vimhdl']
let g:ycm_key_list_select_completion     = ['<C-n>', '<C-j>']
let g:ycm_key_list_previous_completion   = ['<C-p>', '<C-k>']
let g:SuperTabDefaultCompletionType      = '<C-n>'
let g:UltiSnipsExpandTrigger             = "<tab>"
let g:UltiSnipsJumpForwardTrigger        = "<tab>"
let g:UltiSnipsJumpBackwardTrigger       = "<S-tab>"
let g:ConqueTerm_Color = 2			   "  1: strip color after 200 lines, 2: always with color
let g:ConqueTerm_CloseOnEnd = 1		   "  close conque when program ends running
let g:ConqueTerm_StartMessages = 0	   "  display warning messages if conqueTerm is configured incorrectly
