" vim source for emails
function! coc#source#keywords#init() abort
  return {
        \ 'priority': 9,
        \ 'filetypes': ['html', 'vue']
        \}
endfunction

function! coc#source#keywords#complete(opt, cb) abort
  let items = [
    \ 'javascript:void(0)'
    \ ]
  call a:cb(items)
endfunction


