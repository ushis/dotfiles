" use Vim settings
set nocompatible

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set nobackup      " do not keep a backup file, use versions instead
set history=50    " keep 50 lines of command line history
set ruler	        " show the cursor position all the time
set showcmd	      " display incomplete commands
set incsearch	    " do incremental searching

set tabstop=2	    "tab width
set shiftwidth=2  "number of spaces for (auto)indent
set expandtab     "use spaces instead of tabs
set number 	      "turn on line numbers
set numberwidth=4 "up to 9999

" display line numbers
highlight LineNr term=bold cterm=None ctermfg=DarkGrey ctermbg=None
  \ gui=bold guifg=DarkGrey guibg=None

" highlight long lines
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

" switch tabs with <F7> and <F8>
map <F7> :tabp<Enter>
map <F8> :tabn<Enter>

" Switch windows
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

" save file with Ctrl-Y
map <C-Y> :w<Enter>
imap <C-Y> <Esc><C-Y><Enter>

" use Q for formatting
map Q gq

" undo CTRL-U after inserting a line break
inoremap <C-U> <C-G>u<C-U>

" nerd tree plugin
nmap <silent> <c-n> :NERDTreeToggle<CR>

" enable mouse
if has('mouse')
  set mouse=a
endif

" enable syntax highlighting on
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

" use autocommands
if has("autocmd")

  " enable file type detection.
  filetype plugin indent on

  " put these in an autocmd group, so that we can delete them easily
  augroup vimrcEx
  au!

  " for all text files set 'textwidth' to 78 characters
  autocmd FileType text setlocal textwidth=78

  " always jump to the last known cursor position on startup
  autocmd BufReadPost
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

  augroup END

  " strip trailing whitespace before saving
  func! StripWhite()
    if ! &binary && &filetype != 'diff'
      %s/\s\+$//e
    endif
  endfunc

  autocmd BufWritePre * :call StripWhite()
else
  set autoindent		" always set autoindenting on
endif " has("autocmd")

" command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
		  \ | wincmd p | diffthis
endif
