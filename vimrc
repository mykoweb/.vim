execute pathogen#infect()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" BASIC EDITING CONFIGURATION
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
set expandtab
set tabstop=2
set shiftwidth=2
" Enable highlighting for syntax
syntax on

set number
highlight LineNr ctermfg=238
highlight CursorLineNr   term=bold

set cursorline
highlight CursorLine ctermbg=234
highlight CursorLine term=bold cterm=bold

" Enable file type detection.
" Use the default filetype settings, so that mail gets 'tw' set to 72,
" 'cindent' is on in C files, etc.
" Also load indent files, to automatically do language-dependent indenting.
filetype plugin indent on

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" OMNICOMPLETE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
inoremap <C-n> <C-x><C-o>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" AUTOCOMPLETE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1 
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CTAGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set tags=.git/tags,./tags;

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remap CTAGS
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" map <leader>mc :!/usr/local/bin/ctags -R --exclude=.git --exclude=log * ~/.rvm/gems/ruby-2.0.0-p353@momcorp*
map <leader>ct :!cd .git && /opt/boxen/homebrew/bin/ctags -R --exclude=../.git --exclude=../log ../ && cd ..

" improve autocomplete menu color
highlight Pmenu ctermbg=238 gui=bold

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" RUBOCOP
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:vimrubocop_keymap = 0
let g:vimrubocop_extra_args = '-R --require rubocop-rspec'
nmap <Leader>ru :RuboCop<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" AIRLINE SETTINGS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set laststatus=2
set ttimeoutlen=50

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MAPS TO JUMP TO SPECIFIC CTRL-P TARGETS AND FILES
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ctrlp_map = '<leader>t'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 0
let g:ctrlp_show_hidden = 1

map <leader>ac :CtrlP app/controllers<cr>
map <leader>ad :CtrlP app/decorators<cr>
map <leader>ah :CtrlP app/helpers<cr>
map <leader>ai :CtrlP app/interactors<cr>
map <leader>ajc :CtrlP app/assets/javascripts/controllers<cr>
map <leader>ajd :CtrlP app/assets/javascripts/directives<cr>
map <leader>ajm :CtrlP app/assets/javascripts/models<cr>
map <leader>ajs :CtrlP app/assets/javascripts/services<cr>
map <leader>am :CtrlP app/models<cr>
map <leader>as :CtrlP app/serializers<cr>
map <leader>au :CtrlP app/uploaders<cr>
map <leader>aw :CtrlP app/workers<cr>
map <leader>av :CtrlP app/views<cr>
map <leader>ci :CtrlP config/intializers<cr>
map <leader>lt :CtrlP lib/tasks<cr>
map <leader>tc :CtrlP spec/controllers<cr>
map <leader>td :CtrlP spec/decorators<cr>
map <leader>th :CtrlP spec/helpers<cr>
map <leader>ti :CtrlP spec/interactors<cr>
map <leader>tm :CtrlP spec/models<cr>
map <leader>ts :CtrlP spec/serializers<cr>
map <leader>tu :CtrlP spec/uploaders<cr>
map <leader>tw :CtrlP spec/workers<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Highlight trailing whitespace in red
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set listchars=tab:»·,trail:·
set list
hi SpecialKey ctermbg=red ctermfg=red guibg=red guifg=red
