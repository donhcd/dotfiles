" my filetype file
    if exists("did_load_filetypes")
	finish
    endif
    augroup filetypedetect
      au! BufRead,BufNewFile *.c0	setfiletype c
    augroup END
