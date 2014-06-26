" Rails.vim
augroup rails_shortcuts
  autocmd!

  " I'm sure there's a better way, but I don't know it
  command! Rroutes :Rinitializer
  command! RTroutes :RTinitializer
  command! RSroutes :RSinitializer

  autocmd User Rails nnoremap <Leader>m :Rmodel<Space>
  autocmd User Rails nnoremap <Leader>c :Rcontroller<Space>
  autocmd User Rails nnoremap <Leader>v :Rview<Space>
  autocmd User Rails nnoremap <Leader>u :Runittest<Space>

  " Exclude Javascript files in :Rtags via rails.vim due to warnings when parsing
  let g:Tlist_Ctags_Cmd="ctags --exclude='*.js'"
augroup END
