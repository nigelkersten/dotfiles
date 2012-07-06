" With a visual block selected, align =>'s
vmap . :Align =><CR>

function! AlignFats()
  let save_cursor = getpos(".")
  call SelectIndent()
  exe "norm ."
  call setpos('.', save_cursor)
  " Move the cursor back and forth to reset up/down properly.
  exe "norm h"
  exe "norm l"
endfun

noremap , :call AlignFats()<CR>
