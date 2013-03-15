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

" Disable the audible bell
set vb

autocmd BufReadPost *
      \ if ! exists("g:leave_my_cursor_position_alone") |
      \     if line("'\"") > 0 && line ("'\"") <= line("$") |
      \         exe "normal g'\"" |
      \     endif |
      \ endif

set background=dark
colorscheme slate

" Map the leader key to space
let mapleader = " "

" Copy visual selection to osx clipboard
map <C-c> ygv:!pbcopy<CR>ugv

" Copy visual selection to ubuntu clipboard
"map <C-c> ygv:!xclip<CR>ugv

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

" Command-T
map <leader>c :CommandT<CR>
let g:CommandTMaxHeight = 30
let g:CommandTAcceptSelectionMap='<C-t>'
let g:CommandTAcceptSelectionTabMap='<CR>'

" Git stuff
map <leader>gb :Gblame<CR>
autocmd QuickFixCmdPost *grep* cwindow

" Tab nav
map <S-h> :tabp<CR>
map <S-l> :tabn<CR>

" Meta+1-0 jumps to tab 1-10, Shift+Meta+1-0 jumps to tab 11-20:
let s:windowmapnr = 0
let s:wins='1234567890!@#$%^&*()'
while (s:windowmapnr < strlen(s:wins))
  exe 'noremap <silent> <D-' . s:wins[s:windowmapnr] . '> ' . (s:windowmapnr + 1) . 'gt'
  exe 'inoremap <silent> <D-' . s:wins[s:windowmapnr] . '> <C-O>' . (s:windowmapnr + 1) . 'gt'
  exe 'cnoremap <silent> <D-' . s:wins[s:windowmapnr] . '> <C-C>' . (s:windowmapnr + 1) . 'gt'
  exe 'vnoremap <silent> <D-' . s:wins[s:windowmapnr] . '> <C-C>' . (s:windowmapnr + 1) . 'gt'
  let s:windowmapnr += 1
endwhile
unlet s:windowmapnr s:wins

" Allow backspace to erase stuff
" set backspace+=indent,eol,start 

" Custom keys
map <leader>q :q<CR>
map <leader>w :w<CR>
map <leader>wq :wq<CR>

cnoremap <Tab> <C-L><C-D>

call pathogen#infect()

" Folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use
map zz za
