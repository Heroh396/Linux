"" --------------------------- Plugin ----------------------------------------
set        nocompatible
filetype   off
set        rtp+=~/.vim/bundle/Vundle.vim
call       vundle#begin()
	Plugin 'VundleVim/Vundle.vim'
	Plugin 'altercation/vim-colors-solarized'
	Plugin 'scrooloose/nerdtree'
	Plugin 'suoto/vim-hdl'
	Plugin 'syntastic'
	Plugin 'vim-scripts/Conque-GDB'
	Plugin 'Valloric/YouCompleteMe'
	Plugin 'junegunn/vim-easy-align'
	Plugin 'airblade/vim-gitgutter'
	Plugin 'scrooloose/nerdcommenter'
	Plugin 'ervandew/supertab'
	Plugin 'SirVer/ultisnips'
	Plugin 'honza/vim-snippets'
call       vundle#end()
filetype   plugin indent on
filetype   on


"" -------------------- Shortcuts  ----------------------------------------------
map  <F2> 	 : make<bar>cw<CR><CR><CR>
map  <F3> 	 : cnext<CR>
map  <F4> 	 : NERDTreeToggle<CR>
map  <F5> 	 : SyntasticCheck<CR>
map  <F6> 	 : SyntasticToggleMode<CR>
map  <F9>    : set fdm=diff<CR>
nmap <F10>   : vsplit<bar>:term ++curwin<CR>c<CR>
nnoremap <silent> <Space> :nohlsearch<cr><ESC>
nmap <C-S-E> : %!xxd<CR>
imap <C-N>     <Plug>snipMateTrigger
xmap ga  	   <Plug>(EasyAlign)
nmap ga        <Plug>(EasyAlign)



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
set fdm=indent  " hidden fuction group to a line
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

colorscheme github 
set background=light
let g:solarized_contrast = "high"
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
