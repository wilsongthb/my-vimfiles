" vim source for emails
function! coc#source#php#init() abort
  return {
        \ 'priority': 9,
        \ 'filetypes': ['php'],
        \ 'shortcut': 'user',
        \ 'triggerCharacters': ['']
        \}
endfunction

function! coc#source#php#complete(opt, cb) abort
  let items = ['auth()->user->id', '<?php\n\n']
  call a:cb(items)
endfunction


