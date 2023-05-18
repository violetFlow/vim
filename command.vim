command! FileName :call s:FileName()
function! s:FileName()
      let @* = expand('%:t')
        let @" = expand('%:t')
endfunction

command! FileNameFull :call s:FileNameFull()
function! s:FileNameFull()
      let @* = expand('%:p')
        let @" = expand('%:p')
endfunction

command! FileNameRelative :call s:FileNameRelative()
function! s:FileNameRelative()
      let @* = expand('%:.')
        let @" = expand('%:.')
endfunction
