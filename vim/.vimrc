"" -------------------- Common -------------------------------------------
syntax on
set nu
set autoread
set t_Co=256
set tabstop=4
set cmdheight=2
set shiftwidth=4
set textwidth=80
set updatetime=250
set laststatus=2
set statusline=%.20F\ -\ %y\ %#CursorColumn#
set statusline+=\ %l-%p%%\ \ %#warningmsg#\ %#LineNr#

set background=light
let g:solarized_contrast = "high"
colorscheme github 

"" -------------------- Shortcuts  ----------------------------------------------
map  <F2> 	 : make<bar>cw<CR><CR>
map  <F3> 	 : NERDTreeToggle<CR>
map  <F4> 	 : SyntasticCheck<CR>
map  <F5> 	 : SyntasticToggleMode<CR>
map  <C-S-o> : vsplit<bar>:term ++curwin<CR>
imap <C-N>     <Plug>snipMateTrigger
xmap ga  	   <Plug>(EasyAlign)
nmap ga        <Plug>(EasyAlign)

" -------------------- Load scripts --------------------------------------------
source ~/.vim/script/code_style.vim
au FileType {tex,latex} let g:indentLine_conceallevel=0
au FileType {c,cpp} source ~/.vim/script/ccpp.vim
au BufWritePost *.{cpp,h,hpp} source ~/.vim/script/systemc.vim
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



"" --------------------------- Plugin ------------------------------------
set nocompatible
"filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
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
call vundle#end()
filetype plugin indent on
