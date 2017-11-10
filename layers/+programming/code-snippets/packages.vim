" Refer to https://github.com/junegunn/vim-plug/wiki/faq
" Load on nothing
<<<<<<< HEAD
" MP 'SirVer/ultisnips', { 'on': [] } | MP 'honza/vim-snippets', { 'on': [] }
MP 'SirVer/ultisnips', { 'on': [] } | MP 'phdkiran/vim-snippets', { 'on': [] }
=======
MP 'SirVer/ultisnips', { 'on': [] }
MP 'honza/vim-snippets', { 'on': [] }
>>>>>>> 0b91af6cc191f1c4c49a3eb0a990030b9b123349

augroup loadSnips
  autocmd!
  autocmd InsertEnter * call plug#load('ultisnips', 'vim-snippets')
              \| autocmd! loadSnips
augroup END
