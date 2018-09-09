"avoid source twice
if exists('b:did_vinux_ftplugin') 
    finish
endif
let b:did_vinux_ftplugin = 1
"settings....
setlocal foldmethod=marker 
setlocal expandtab 
setlocal tabstop=4 
setlocal shiftwidth=4 
setlocal softtabstop=4
setlocal smarttab
setlocal suffixesadd=.vim
setlocal iskeyword+=:,#

"keymapping...
if get(g:, 'feat_enable_vim')
    nnoremap <buffer><silent> <c-]>  :call lookup#lookup()<cr>
    nnoremap <buffer><silent> <c-t>  :call lookup#pop()<cr>
    nnoremap <buffer><silent> <Enter> :call lookup#lookup()<cr>
    nnoremap <buffer><silent> <localleader>g :call lookup#lookup()<cr>
    nnoremap <buffer> <C-\>g :split<cr>:call lookup#lookup()<cr>
else
    nnoremap <buffer><silent> <Enter> <C-]>
endif
