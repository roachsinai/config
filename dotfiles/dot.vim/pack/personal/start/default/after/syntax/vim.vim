syntax region vimSet matchgroup=vimCommand start="\<Set\>" skip="\%(\\\\\)*\\." end="$" end="|" matchgroup=vimNotation end="<[cC][rR]>" keepend oneline contains=vimSetEqual,vimOption,vimErrSetting,vimComment,vim9Comment,vimSetString,vimSetMod
syntax match vimWrongFunctionCall /^\s*\zs[[:alnum:]#:_]\+\ze(/ containedin=vimFuncBody
highlight link vimWrongFunctionCall Error
