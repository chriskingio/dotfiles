" general keybindings

" clear search hl
nnoremap <leader><space> :nohlsearch<CR>

" file browser toggle
nnoremap <leader>e :Lexplore<CR>

" window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" move lines up/down
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" don't exit visual mode when indenting
vnoremap < <gv
vnoremap > >gv
