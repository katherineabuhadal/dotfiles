" Maximum value is 10,000
set history=10000
set noswapfile    " http://robots.thoughtbot.com/post/18739402579/global-gitignore#comment-458413287
set ruler         " show cursor position all the time
set showcmd       " display incomplete commands
set incsearch     " do incremental searching
set laststatus=2  " Always display the status line
set cursorline    " highlight the line the cursor is on
set smarttab      " insert tabs on the start of a line according to shiftwidth, not tabstop
set modelines=2   " inspect top/bottom 2 lines for modeline
set scrolloff=999 " When scrolling, keep cursor in the middle
set shiftround    " When at 3 spaces and I hit >>, go to 4, not 5.

" Copy to the system clipboard
set clipboard=unnamed

" https://github.com/thoughtbot/dotfiles/pull/170
" Automatically :write before commands such as :next or :!
" Saves keystrokes by eliminating writes before running tests, etc
" See :help 'autowrite' for more information
set autowrite

" Persistent undo
set undofile " Create FILE.un~ files for persistent undo
silent !mkdir ~/.vim/undodir > /dev/null 2>&1
set undodir=~/.vim/undodir

" Create backups
set backup
set writebackup
set backupdir=~/.vim/backups
silent !mkdir ~/.vim/backups > /dev/null 2>&1
" setting backupskip to this to allow for 'crontab -e' using vim.
" thanks to: http://tim.theenchanter.com/2008/07/crontab-temp-file-must-be-ed
if has('unix')
  set backupskip=/tmp/*,/private/tmp/*"
endif

" Numbers
" With relativenumber and number set, shows relative number but has current
" number on current line.
set relativenumber
set number
set numberwidth=3

set backspace=indent,eol,start " allow backspacing over everything in insert mode
set autoindent
set copyindent " copy previous indentation on autoindenting
set showmatch " show matching parenthesis

" make searches case-sensitive only if they contain upper-case characters
set ignorecase smartcase

" Open below and to the right, the same way you read a page
set splitbelow splitright

" File encoding and format
set fileencodings=utf-8,iso-8859-1
set fileformats=unix,mac,dos
set textwidth=80

" Meta characters
" Prepended to wrapped lines
set showbreak="@"
" Display extra whitespace
set list listchars=tab:»·,trail:·

" Syntax-highlight languages inside fenced markdown blocks
let g:markdown_fenced_languages = ['ruby', 'sh', 'javascript']
