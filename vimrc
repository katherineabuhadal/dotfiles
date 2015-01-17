" Stolen wholesale from christoomey, whose dotfiles you really should check out:
" https://github.com/christoomey/dotfiles
function! s:SourceConfigFilesIn(directory)
  let directory_splat = '~/.vim/' . a:directory . '/*.vim'
  for config_file in split(glob(directory_splat), '\n')
    if filereadable(config_file)
        execute 'source' config_file
    endif
  endfor
endfunction

 " Both settings required for Vundle
set nocompatible
filetype off

" Leader is <Space>
" <Leader> must be set before `s:SourceConfigFilesIn` below
let mapleader=" "

" Source the rest of the configuration
call s:SourceConfigFilesIn('')
call s:SourceConfigFilesIn('rcplugins') " after Vundle loads

" Turn on syntax highlighting and filetype detection.
" Vundle loads all the extra syntax and ftdetect files, so turn them on after
" Vundle.
filetype plugin indent on
syntax on
colorscheme jellybeans

hi Visual term=reverse cterm=reverse guibg=Grey
