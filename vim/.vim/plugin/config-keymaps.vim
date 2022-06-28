" # Keymaps
let mapleader="\<Space>"

" ## Normal Mode
" ### Global Binds
" #### Environment
" command pallette
nnoremap <Leader><CR> <cmd>:Commands<CR>
" open terminal right
nnoremap <leader>t <cmd>:vertical belowright terminal<CR>
" open terminal bottom
nnoremap <leader>T <cmd>:belowright terminal<CR>
" normal mode in terminal
tnoremap <C-]><Esc> <C-\><C-N>
" git status
nnoremap <leader>g <cmd>:!lazygit<CR>
" split horizontal
nnoremap <leader>x <cmd>:split<CR>
" split vertical
nnoremap <leader>v <cmd>:vsplit<CR>
" write buffer
nnoremap <leader>w <cmd>:w<CR>
" reload buffer
nnoremap <leader>r <cmd>:e<CR>
" quit buffer
nnoremap <leader>q <cmd>:q<CR>
" equalise windows
nnoremap <leader>e <C-W>=
" maximise window
nnoremap <leader>m <C-W>_<C-W>\|
" close other windows
nnoremap <leader>o <C-W>o

" #### Cursor Movement = `h` + `j` + `k` + `l`
" cursor left
nnoremap <leader>h <C-W>h
" cursor down
nnoremap <leader>j <C-W>j
" cursor up
nnoremap <leader>k <C-W>k
" cursor right
nnoremap <leader>l <C-W>l

" #### Window Movement = `H` + `J` + `K` + `L`
" window left
nnoremap <leader>H <C-W>H
" window down
nnoremap <leader>J <C-W>J
" window up
nnoremap <leader>K <C-W>K
" window right
nnoremap <leader>L <C-W>L

" #### Window Resize = `<Left>` + `<Down>` + `<Up>` + `<Right>`
" decrease horizontal size
nnoremap <leader><Left> <cmd>:vertical resize -2<CR>
" decrease vertical size
nnoremap <leader><Down> <cmd>:resize -2<CR>
" increase vertical size
nnoremap <leader><Up> <cmd>:resize +2<CR>
" increase horizontal size
nnoremap <leader><Right> <cmd>:vertical resize +2<CR>

" #### Next = `]`
" next quick fix
nnoremap ]q <cmd>:cn<CR>
" previous quick fix
nnoremap [q <cmd>:cp<CR>
" #### Previous = `[`

" ### Leader Groups
" #### Buffers = `b`
" format buffer
nnoremap <leader>bf <cmd>:ALEFix<CR>
" toggle spellcheck
nnoremap <Leader>bs <cmd>:setlocal spell! spelllang=en_gb,en_us<CR>
" grep buffer
nnoremap <Leader>b/ <cmd>:Ag<CR>
" next buffer
nnoremap ]b <cmd>:bnext<CR>
" previous buffer
nnoremap [b <cmd>:bprevious<CR>

" #### Files = `f`
" find file
nnoremap <leader>ff <cmd>:Files<CR>
" find git file
nnoremap <leader>fg <cmd>:GFiles<CR>
" file browser (project directory)
nnoremap <leader>fb <cmd>:Explore .<CR>
" file browser (current directory)
nnoremap <leader>fd <cmd>:Explore %:p:h<CR>
" grep files
nnoremap <Leader>f/ <cmd>:Ag<CR>

" #### LSP
" go to definition
nnoremap gd <cmd>:ALEGoToDefinition<CR>
" go to document symbol
nnoremap gs <cmd>:echo 'not implemented'<CR>
" go to workspace symbol
nnoremap gS <cmd>:echo 'not implemented'<CR>
" go to references
nnoremap gr <cmd>:ALEFindReferences<CR>
" go to implementation
nnoremap gi <cmd>:ALEGoToImplementation<CR>
" go to type declaration
nnoremap gt <cmd>:ALEGoToTypeDefinition<CR>
" rename symbol
nnoremap <leader>rn <cmd>:ALERename<CR>
" show hover
nnoremap K <cmd>:ALEHover<CR>
" show code actions
nnoremap <leader>ca <cmd>:ALECodeAction<CR>
" open diagnostic quickfix list
nnoremap <leader>cq <cmd>:ALEPopulateQuickfix<CR>
" next LSP diagnostic
nnoremap ]g <cmd>:ALENextWrap<CR>
" previous LSP diagnostic
nnoremap [g <cmd>:ALEPreviousWrap<CR>

" #### Interface = `i`
" set theme to light
nnoremap <leader>il <cmd>:set background=light<CR>:highlight clear SignColumn<CR>:highlight clear Folded<CR>:highlight clear VertSplit<CR>
" set theme to dark
nnoremap <leader>id <cmd>:set background=dark<CR>:highlight clear SignColumn<CR>:highlight clear Folded<CR>:highlight clear VertSplit<CR>
" toggle display unprintable chars
nnoremap <leader>ic <cmd>:set list!<CR>

" #### Shift = `s`
" shift lines left
nnoremap <leader>sh <<
" shift lines down
nnoremap <leader>sj <cmd>:m .+1<CR>==
" shift lines up
nnoremap <leader>sk <cmd>:m .-2<CR>==
" shift lines right
nnoremap <leader>sl >>

" ## Visual Mode
" ### Leader Binds
" #### Shift = `s`
" shift lines left
vnoremap <leader>sh <gv
" shift lines down
vnoremap <leader>sj <cmd>:m '>+1<CR>gv=gv
" shift lines up
vnoremap <leader>sk <cmd>:m '<-2<CR>gv=gv
" shift lines right
vnoremap <leader>sl >gv
