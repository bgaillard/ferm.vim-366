call plug#begin('~/.vim/plugged')

Plug 'lambdalisue/fern.vim', {'branch': 'add-equal-mapping-on-trash'}

call plug#end()

let g:fern#disable_viewer_auto_duplication = 1
let g:fern#disable_viewer_spinner = 1
let g:fern#hide_cursor = 1

nnoremap <silent> <Leader>r :Fern . -drawer -reveal=%<CR>

function! s:init_fern() abort
  map <nowait><buffer> d <Plug>(fern-action-remove=)y<CR><CR>
endfunction

augroup fern-custom
  autocmd! *
  autocmd FileType fern call s:init_fern()
augroup END

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * ++nested if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | set number! | exe 'Fern' argv()[0] '-drawer' '-stay' '-keep' | set number | endif
