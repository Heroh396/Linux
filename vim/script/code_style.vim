if exists("loaded_codestyle")
	finish
endif

let loaded_codestyle=1

" Update file name, date modified  function
function UpdateDF()
  :mark l
  :silent! %s/!!DATE/\=  strftime("%c")/g
  :silent! %s/!!FILE/\=  expand("%")/g
  " Follow jinja2
  :silent! %s/{{ date }}/\=  strftime("%c")/g
  :silent! %s/{{ file }}/\=  expand("%")/g
  :silent! %s/{{ file_without_extension }}/\=  expand("%:r")/g
  :silent! %s/File name.*/\='File name      : ' . expand("%")/g
  :silent! %s/Last modified.*/\='Last modified  : '.strftime("%c")/g
  :'l
  :delmarks l
endfunction


" ------------------------ Check Coding Style ---------------------------
highlight ColorColumn ctermbg=Black ctermfg=DarkRed
highlight ExtraWhitespace ctermbg=red guibg=red
highlight LineNr ctermfg=grey

function CheckStyle()
    set colorcolumn=+1
    match ExtraWhitespace /\s\+$/
    autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
    autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
    autocmd InsertLeave * match ExtraWhitespace /\s\+$/
    autocmd BufWinLeave * call clearmatches()
endfunction

" Check style before public
function BeforePublic()
    match ExtraWhitespace /\s\+$\|^\t\+\|!!FILE\|!!DATE\|\* Desc\s*:$/
    autocmd BufWinLeave * call clearmatches()
endfunction

function UnCheckStyle()
    set cc=
    highlight clear ExtraWhitespace
endfunction

fun ClearTrailingSpace()
    :%s/\s\+$//g
endf

" -----------------------------------------------------------------------
function! FillLine( str )
    " set tw to the desired total length
    let tw = &textwidth
    if tw==0 | let tw = 80 | endif
    " strip trailing spaces first
    " calculate total number of 'str's to insert
    let ccl=strlen(getline('.')) 
    let reps = (tw - ccl) / len(a:str)
    if reps > 0
        .s/$/\=(''.repeat(a:str, reps))/
    endif
    return ""
endfunction


" Shortcuts  -------------------------------------------------------------------
command UpdateDF call UpdateDF()
command! -nargs=1 FillLine call FillLine(<f-args>)
command ClearTrailingSpace call ClearTrailingSpace()
command CheckStyle call CheckStyle()
command UnCheckStyle call UnCheckStyle()
command BeforePublic call BeforePublic()

autocmd bufnewfile *.{c,h}  	0r ~/.vim/header/_.c
autocmd bufnewfile *.{cpp,c++}  0r ~/.vim/header/_.cpp
autocmd bufnewfile *.{sv,v}  	0r ~/.vim/header/_.systemverilog
autocmd bufnewfile *.{md}  		0r ~/.vim/header/_.markdown
autocmd bufnewfile *.{vhd,vhdl} 0r ~/.vim/header/_.vhd
autocmd bufnewfile *.sh  		0r ~/.vim/header/_.sh
autocmd bufnewfile *.py  		0r ~/.vim/header/_.py
autocmd bufnewfile *.tex  		0r ~/.vim/header/_.tex

autocmd bufnewfile * call UpdateDF()
au bufnewfile {cpp,c,make,sh,vhdl,verilog,systemverilog,tex} call CheckStyle ()
