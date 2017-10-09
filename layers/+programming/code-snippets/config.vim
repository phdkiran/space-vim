scriptencoding utf-8

" ultisnips {
  " Set ultisnips triggers
  exe 'set rtp+=' . expand($HOME.'/.vim/plugged/vim-snippets/UltiSnips')
  " exe 'set rtp+=' . expand($HOME.'/.vim/plugged/vim-snippets/snippets', $HOME.'/.vim/plugged/vim-snippets/UltiSnips', g:spacevim_dir . '/private/UltiSnips')
  " exe 'set rtp+=' . expand(g:spacevim_dir . '/private/UltiSnips')
  " exe 'set rtp+='C:\Users\kraminen\Documents\dotfiles\space-vim\private\UltiSnips'
  " let g:UltiSnipsSnippetsDir = [g:spacevim_dir.'/private/UltiSnips', 'C:\Users\kraminen\Documents\dotfiles\space-vim\private\UltiSnips']
  " let g:UltiSnipsSnippetsDir = ['C:\Users\kraminen\Documents\dotfiles\space-vim\private\UltiSnips']
  " let g:UltiSnipsSnippetDirectories = [g:spacevim_dir.'/private/UltiSnips','~/UltiSnips']
  " let g:UltiSnipsSnippetDirectories = [$HOME.'/.vim/plugged/vim-snippets/snippets', $HOME.'/.vim/plugged/vim-snippets/UltiSnips', g:spacevim_dir.'/private/UltiSnips','~/UltiSnips']
  let g:UltiSnipsSnippetDirectories = [$HOME.'/.vim/plugged/vim-snippets/UltiSnips',  g:spacevim_dir.'/private/UltiSnips','~/UltiSnips']

  let g:UltiSnipsListSnippets = '<C-l>'
  let g:UltiSnipsJumpForwardTrigger = '<C-j>'
  let g:UltiSnipsJumpBackwardTrigger = '<C-k>'

  " Fix tab conflict with YCM
  let g:UltiSnipsExpandTrigger = '<C-e>'
  let g:ulti_expand_or_jump_res = 1
  let g:UltiSnipsUsePythonVersion = 3
  function! ExpandSnippetOrCarriageReturn()
    let l:snippet = UltiSnips#ExpandSnippetOrJump()
    if g:ulti_expand_or_jump_res > 0
      return l:snippet
    else
      return "\<CR>"
    endif
  endfunction
  inoremap <expr> <CR> pumvisible() ? "\<C-R>=ExpandSnippetOrCarriageReturn()\<CR>" : "\<CR>"
" }
