syn on
set autoindent
"set smartindent

set tabstop=2
set shiftwidth=2
set expandtab

"set textwidth=90

set ruler
set incsearch
set nu

autocmd BufReadPost *
      \ if ! exists("g:leave_my_cursor_position_alone") |
      \     if line("'\"") > 0 && line ("'\"") <= line("$") |
      \         exe "normal g'\"" |
      \     endif |
      \ endif

set background=dark

" Map the leader key to space
let mapleader = " "

" Copy visual selection to osx clipboard
"map <C-c> ygv:!pbcopy<CR>ugv

" Copy visual selection to ubuntu clipboard
map <C-c> ygv:!xclip<CR>ugv

" kill ring
map <leader>k :YRShow<CR>

" Window movement
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_

" Autocompleting
setlocal omnifunc=syntaxcomplete#Complete

" FuzzyFinderText
map <leader>j :FufJumpList<CR>
map <leader>f :FufFile<CR>
map g:fuf_keyOpenTabpage <CR>

map <leader>t :TlistToggle<CR>
let Tlist_GainFocus_On_ToggleOpen = 1

" tab nav
map <S-h> :tabp<CR>
map <S-l> :tabn<CR>

" Allow backspace to erase stuff
set backspace+=indent,eol,start 

" Custom keys
map <leader>q :q<CR>
map <leader>w :w<CR>
map <leader>wq :wq<CR>

cnoremap <Tab> <C-L><C-D>


