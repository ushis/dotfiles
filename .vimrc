" ~/.vimrc

"
" Init pathogen
"
call pathogen#infect()

"
" Settings
"
set nocompatible                " Use Vim settings.

set backspace=indent,eol,start  " Allow backspacing over everything.
set nobackup                    " Do not keep a backup file.
set history=50                  " Keep 50 lines of command line history.
set ruler                       " Show the cursor position all the time.
set showcmd                     " Display incomplete commands.

set incsearch                   " Do incremental searching.
set ignorecase                  " Search case insensitive.
set smartcase                   " Search uppercase chars case sensitive.
set hlsearch                    " Highlight results.

set tabstop=2	                  " Tab width.
set shiftwidth=2                " Number of spaces for (auto)indent.
set expandtab                   " Use spaces instead of tabs.
set number 	                    " Turn on line numbers.
set numberwidth=4               " Up to 9999.
set colorcolumn=80              " Highlight column 80.
set cursorline                  " Highlight current line.

set mouse=a                     " Enable mouse.
syntax on                       " Enable syntax highlighting.
filetype plugin indent on       " Enable file type detection.

"
" Colors
"
colorscheme peachpuff

" Column 80.
hi ColorColumn ctermbg=233 guibg=#121212

" Current line.
hi CursorLine cterm=NONE ctermbg=232 guibg=#080808

" Line numbers.
hi LineNr
  \ term=bold ctermfg=DarkGrey
  \ gui=bold guifg=DarkGrey

"
" Key mappings
"

" Switch windows.
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

" Save file with Ctrl-Y.
map  <silent> <C-Y> :w<Enter>
imap <silent> <C-Y> <Esc>:w<Enter>

" Use Q for formatting.
map Q gq

" Undo Ctrl-U after inserting a line break
inoremap <silent> <C-U> <C-G>u<C-U>

" Toggle NerdTree Ctrl-n.
nmap <silent> <C-N> :NERDTreeToggle<CR>

" Toggle Tagbar Ctrl-b
nmap <silent> <C-B> :TagbarToggle<CR>

" Unhighlight search results.
nmap -q :nohlsearch<CR>


"
" Auto commands
"

" Set 'textwidth' to 78 characters for all text files.
autocmd FileType text setlocal textwidth=78

" Always jump to the last known cursor position on startup
autocmd BufReadPost
  \ if line("'\"") > 1 && line("'\"") <= line("$") |
  \   exe "normal! g`\"" |
  \ endif

" Strip trailing whitespace before saving.
autocmd BufWritePre *
  \ if ! &binary && &filetype != 'diff' |
  \   %s/\s\+$//e |
  \ endif
