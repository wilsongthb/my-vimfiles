" vim source for emails
function! coc#source#php#init() abort
  return {
        \ 'priority': 9,
        \ 'filetypes': ['php'],
        \ 'shortcut': 'user',
        \ 'triggerCharacters': ['id']
        \}
endfunction

function! coc#source#php#complete(opt, cb) abort
  let items = ['auth()->user()->id']
  call a:cb(items)
endfunction


