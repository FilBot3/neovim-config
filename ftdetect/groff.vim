" Clear all Groff associations
silent! autocmd! filetypedetect BufRead,BufNewFile *.groff
" Set to highlight like nroff.
autocmd BufNewFile,BufRead *.groff set filetype=nroff
