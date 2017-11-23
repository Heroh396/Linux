if exists("b:loaded_hdl")
	finish
endif
let b:loaded_hdl=1

" VHDL  ------------------------------------------------------------------------
function! HDL()
    setlocal comments=:--
	setlocal errorformat=**\ Error:\ %f(%l):\ %m
    "setlocal errorformat=\*\*\ %trror:\ %f(%l):\ %m
    "setlocal errorformat+=\*\*\ %tarning:\ %f(%l):\ %m
    if !filereadable("Makefile")
        if (&ft=='verilog')
            setlocal makeprg=vlog\ %\ $*
        elseif (&ft=='systemverilog')
            setlocal makeprg=vlog\ -sv\ %\ $*
        elseif (&ft=='vhdl')
			setlocal makeprg=vmap\ work\ ../sim/work\;\ MODELSIM=$SIM/modelsim.ini\ vcom\ %
            "setlocal makeprg=vcom\ %\ $*
        endif
    endif
	set expandtab

	"Dictionary
	iabb cn =>
	iabb veq :=
	iabb seq <=
	iabb con constant
	iabb si signal
	iabb un unsigned
	iabb sig signed 
	iabb slv std_logic_vector
	iabb lv logic_vector
	iabb int integer
	iabb gen generic
	iabb dt downto
	iabb va variable
	iabb ar array
	iabb ty type
	iabb comp component
	iabb ot0 others => '0'
	iabb tou to_unsigned
	iabb toi to_integer
endfunction
call HDL()
