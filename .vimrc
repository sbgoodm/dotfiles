syntax on
colorscheme darkblue
filetype on
filetype plugin on
set number
set autoindent
set expandtab
set smarttab
set list
set listchars=tab:➤\,
set shiftwidth=4
set tabstop=4
if has('autocmd')
    autocmd filetype html,xml setlocal shiftwidth=2 tabstop=2
    autocmd filetype javascript setlocal shiftwidth=4 tabstop=4
endif

" Next Tab
nnoremap <silent> <C-S-Right> :tabnext<CR>
 
" Previous Tab
nnoremap <silent> <C-S-Left> :tabprevious<CR>
 
" New Tab
nnoremap <silent> <C-t> :tabnew<CR>
