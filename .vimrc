syntax on
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

autocmd ColorScheme * highlight LineNr ctermfg=White ctermbg=DarkGray
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

colorscheme murphy
function! <SID>StripTrailingWhitespace()
    "  Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction

nnoremap <silent> <leader><space> :call <SID>StripTrailingWhitespace()<CR>

" Next Tab
nnoremap <silent> <C-S-Right> :tabnext<CR>

" Previous Tab
nnoremap <silent> <C-S-Left> :tabprevious<CR>

" New Tab
nnoremap <silent> <C-t> :tabnew<CR>
