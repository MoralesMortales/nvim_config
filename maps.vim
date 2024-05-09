nnoremap <C-s> :w<CR>
nnoremap <C-q> :q<CR>
nnoremap <C-w> :bdelete<CR>

" comentario nnoremap  \tambien se puede nmap
nnoremap // :noh<CR>

"Navegate
nnoremap <C-b> :NvimTreeToggle<CR>

"Split navegation commands
nnoremap <A-l> <C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-v> :vsplit<CR>

"termninal
nnoremap <silent> <C-n> :NvimTreeToggle<CR>
tnoremap <Esc> <C-\><C-n>

" set
autocmd TermEnter term://*toggleterm#*
      \ tnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>

" By applying the mappings this way you can pass a count to your
" mapping to open a specific window.
" For example: 2<C-t> will open terminal 2
nnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>
inoremap <silent><c-t> <Esc><Cmd>exe v:count1 . "ToggleTerm"<CR>
