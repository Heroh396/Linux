if exists("b:loaded_tex")
	finish
endif
let b:loaded_tex = 1

function! TEX()
	"setlocal spell spelllang=en_us
    setlocal comments=:%
    setlocal fo+=cr fo-=o
    setlocal errorformat=%f:%l:\ %m
    if !filereadable("Makefile")
		"setlocal makeprg=env\ max_print_line=1000\ 
        "            \pdflatex\ -synctex=1\ -interaction=nonstopmode\ 
        "            \\-file\-line\-error\ 
        "            \--output-dir=build\ $* 
		setlocal makeprg=latexmk\ $*
    endif
	

	iabb sigma \sigma
	iabb Sigma \Sigma
	iabb delta \delta
	iabb Delta \Delta
	iabb alpha \alpha
	iabb Alpha \Alpha
	iabb beta \beta
	iabb Beta \Beta
	iabb pi \pi


endfunction
call TEX()



