" CPP  -------------------------------------------------------------------------
if exists("b:loaded_ccpp")
	finish
endif
let b:loaded_ccpp=1

function! CCPP()
    if !filereadable("Makefile")
        if (&ft=='c')
            setlocal makeprg=gcc\ -o\ %<\ %
        elseif (&ft=='cpp')
            setlocal makeprg=g++\ -o\ %<\ %
        endif
    endif
	set expandtab "Tab indent to space indent
	set cindent
endfunction
call CCPP()
