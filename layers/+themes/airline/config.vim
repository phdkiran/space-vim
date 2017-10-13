scriptencoding=utf-8

" vim-airline {
  let g:airline_theme='violet'
  let g:Powerline_symbols='fancy'
  let g:airline#extensions#tabline#enabled=1
  let g:airline#extensions#tabline#buffer_idx_mode = 1
  let g:airline#extensions#tabline#buffer_nr_show = 1
  let g:airline#extensions#tabline#buffer_nr_format = '%s:'
  let g:airline#extensions#tabline#fnamemod = ':t'
  let g:airline#extensions#tabline#fnamecollapse = 1
  let g:airline#extensions#tabline#fnametruncate = 0
  let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
  let g:airline#extensions#default#section_truncate_width = {
              \ 'b': 79,
              \ 'x': 60,
              \ 'y': 88,
              \ 'z': 45,
              \ 'warning': 80,
              \ 'error': 80,
              \ }
  let g:airline#extensions#default#layout = [
              \ [ 'a', 'error', 'warning', 'b', 'c' ],
              \ [ 'x', 'y', 'z' ]
              \ ]
  let g:airline#extensions#tagbar#enabled = 0
  " Distinct background color is enough to discriminate the warning and
  " error information.
  let g:airline#extensions#ale#error_symbol = '•'
  let g:airline#extensions#ale#warning_symbol = '•'
  " Change color of the relevant section according to g:asyncrun_status, a global variable exposed by AsyncRun
" 'running': default, 'success': green, 'failure': red
let g:async_status_old = ''
function! Get_asyncrun_running()

  let async_status = g:asyncrun_status
  if async_status != g:async_status_old

    if async_status == 'running'
      call airline#parts#define_accent('asyncrun_status', 'running')
    elseif async_status == 'success'
      call airline#parts#define_accent('asyncrun_status', 'success')
    elseif async_status == 'failure'
      call airline#parts#define_accent('asyncrun_status', 'failure')
    endif

    let g:airline_section_x = airline#section#create(['asyncrun_status'])
    AirlineRefresh
    let g:async_status_old = async_status

  endif

  return async_status

endfunction

"call airline#parts#define_function('asyncrun_status', 'Get_asyncrun_running')
"let g:airline_section_x = airline#section#create(['asyncrun_status'])
" }
