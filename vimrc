" source config file
for f in split(glob('~/.vim/vimscript/*.vim'), '\n')
    exe 'source' f
endfor

