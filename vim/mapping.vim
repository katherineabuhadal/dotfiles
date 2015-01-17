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
nnoremap <Leader>n :40Vexplore<CR>

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

" Disable K looking stuff up
nnoremap K <Nop>
" no ex mode
map Q <Nop>

" Typo
nnoremap :Nohl :nohlsearch
