if exists("did_load_filetypes")
	finish
endif

augroup filetypedetect
	" Override filetypes for certain files
	autocmd! BufNewFile,BufRead *.fs setfiletype glsl
	autocmd! BufNewFile,BufRead *.vs setfiletype glsl
augroup END
