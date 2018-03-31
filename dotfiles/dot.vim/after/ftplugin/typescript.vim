SetUndoFtplugin nunmap <buffer> mt
SetUndoFtplugin iunmap <buffer> @

nnoremap <buffer> <silent> mt :<C-u>echo tsuquyomi#hint()<CR>

function! s:at()
  if CurrentSyntax() =~# 'String\|Comment\|None'
    return '@'
  endif
  return smartchr#loop('@', 'this.')
endfunction
inoremap <expr> <buffer> @ <SID>at()
