" Change the current working directory to the directory that the current file you are editing is in.
nnoremap <Leader>cd :cd %:p:h <CR>

" Opens a file with the current working directory already filled in so you have to specify only the filename.
nnoremap <Leader>e :e <C-R>=escape(expand("%:p:h"), ' ') . "/" <CR>
nnoremap <Leader>sp :split <C-R>=escape(expand("%:p:h"), ' ') . "/" <CR>
nnoremap <Leader>v :vsplit <C-R>=escape(expand("%:p:h"), ' ') . "/" <CR>

" ReRun last command
nnoremap <Leader>rr :VtrSendCommandToRunner !-1<CR>

" Remove trailing whitespace
nnoremap <Leader>w :%s/\s\+$//e<CR>
" Directory explorer is 40 columns wide
nnoremap <Leader>x :40Vexplore<CR>

" Rename current file (thanks Gary Bernhardt)
function! RenameFile()
  let old_name = expand('%')
  let new_name = input('New file name: ', expand('%'), 'file')
  if new_name != '' && new_name != old_name
    exec ':saveas ' . new_name
    exec ':silent !rm ' . old_name
    redraw!
  endif
endfunction
map <leader>n :call RenameFile()<cr>

nnoremap <Leader>g :Ag<Space>

" Turn off arrow keys
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

" Buffer navigation
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-l> <C-W>l
nnoremap <C-h> <C-W>h

" Remap :w to <Leader>s
nnoremap <Leader>s <esc>:w<CR>

" Autoindent the whole file and return to current line
map <leader>i mmgg=G`m<cr>

" Rehash with 1.9 style hash syntax - thanks jsteiner
nmap <leader>rh :%s/:\([^ ]*\)\(\s*\)=>/\1:/g<cr>

" Duplicate a selection - thanks jsteiner
" Visual mode: D
vmap D y'>p

" Add new line but stay in esc mode
nnoremap <S-o> jO<Esc>2k<CR>

" Disable K looking stuff up
nnoremap K <Nop>

nnoremap a <Nop>
"
" no ex mode
map Q <Nop>

" Typo
nnoremap :Nohl :nohlsearch
