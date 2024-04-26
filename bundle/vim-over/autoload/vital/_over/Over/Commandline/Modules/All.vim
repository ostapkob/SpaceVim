" ___vital___
" NOTE: lines between '" ___vital___' is generated by :Vitalize.
" Do not mofidify the code nor insert new lines before '" ___vital___'
function! s:_SID() abort
  return matchstr(expand('<sfile>'), '<SNR>\zs\d\+\ze__SID$')
endfunction
execute join(['function! vital#_over#Over#Commandline#Modules#All#import() abort', printf("return map({'_vital_depends': ''}, \"vital#_over#function('<SNR>%s_' . v:key)\")", s:_SID()), 'endfunction'], "\n")
delfunction s:_SID
" ___vital___
scriptencoding utf-8
let s:save_cpo = &cpo
set cpo&vim


let s:modules =  map(split(globpath(expand("<sfile>:p:h"), "/*.vim"), "\n"), "fnamemodify(v:val, ':t:r')")


function! s:_vital_depends()
	return map(copy(s:modules), "'Over.Commandline.Modules.' . v:val")
endfunction


let &cpo = s:save_cpo
unlet s:save_cpo
