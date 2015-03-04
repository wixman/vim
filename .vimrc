" !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
" !!!!!!!!!!THOM .VIMRC FILE!!!!!!!!!!!!
" !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!  

" VUNDLE SETUP ///////////////
set nocompatible 
filetype off
set rtp+=~/vim/.vim/bundle/vundle/
call vundle#rc()

" VUNDLE PLUGINS //////////////
Plugin 'gmarik/vundle' " Main vundle package
Plugin 'scrooloose/nerdtree.git' " NERDtree tree explorer plugin
Plugin 'Valloric/YouCompleteMe' " Code-completion engine
Plugin 'scrooloose/nerdcommenter' " Easy commenting
Plugin 'beyondmarc/opengl.vim.git' " Opengl syntax highlighter
Plugin 'beyondmarc/glsl.vim.git' " Opengl syntax highlighter
Plugin 'kien/rainbow_parentheses.vim' " Better Rainbow Parentheses
Plugin 'altercation/vim-colors-solarized' " Custom colors

" Plugin 'Shougo/neocomplete.vim.git' " Alternative vim highlighting
" Plugin 'osyo-manga/vim-marching' " Async clang code completion 
" Plugin 'scrooloose/syntastic' " syntax errors in vim
" Plugin 'jistr/vim-nerdtree-tabs' " NERDtree with tabs
" Plugin 'lekv/vim-clewn.git' "gdb debugging in vim

" turn filetype back on 
filetype plugin indent on


" COLOR SETTINGS /////////////
syntax enable
set background=dark
set colorcolumn=110
highlight ColorColumn ctermbg=darkgrey
colorscheme solarized


" GLSL SETTINGS //////////////
let g:glsl_default_version = 'glsl330'
let g:glsl_file_extensions = '*.glsl,*.vsh,*.fsh, *.vs, *.fs'


" RAINBOW PARENTHESES ////////////
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces


" NERDTREE SETTINGS ////////////////
map <C-n> :NERDTreeToggle<CR>
"let g:nerdtree_tabs_no_startup_for_diff
"let NERDTreeMapOpenInTab='<ENTER>'
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif


" YOUCOMPLETEME SETTINGS /////////////
let g:ycm_register_as_syntastic_checker = 1 "default 1
let g:Show_diagnostics_ui = 1 "default 1
let g:ycm_enable_diagnostic_signs = 1
let g:ycm_enable_diagnostic_highlighting = 0
let g:ycm_always_populate_location_list = 1 "default 0
let g:ycm_open_loclist_on_ycm_diags = 1 "default 1
let g:ycm_complete_in_strings = 1 "default 1
let g:ycm_collect_identifiers_from_tags_files = 0 "default 0
let g:ycm_path_to_python_interpreter = '' "default ''
let g:ycm_server_use_vim_stdout = 0 "default 0 (logging to console)
let g:ycm_server_log_level = 'info' "default info
let g:ycm_global_ycm_extra_conf = '~/vim/.ycm_extra_conf.py'  "where to search for .ycm_extra_conf.py
let g:ycm_confirm_extra_conf = 1
let g:ycm_goto_buffer_command = 'same-buffer' 
let g:ycm_filetype_whitelist = { '*': 1 }
let g:ycm_key_invoke_completion = '<C-Space>'
let g:clang_complete_macros = 1
nnoremap <F11> :YcmForceCompileAndDiagnostics <CR>


" GVIM DISABLE GUI /////////////
set guioptions-=m "remove menu bar
set guioptions-=T "remove toolbar
set guioptions-=r "remove right-hand scroll bar
set guioptions-=L "remove left-hand scroll bar


" MY OWN GENERAL CUSTOM SETTINGS ///////////////
let mapleader=","
set number " Turn on line numbers
set tabstop=4 softtabstop=0 noexpandtab shiftwidth=4 " Set tab space
" CTRL-Tab is next tab
noremap <C-Tab> :<C-U>tabnext<CR>
inoremap <C-Tab> <C-\><C-N>:tabnext<CR>
cnoremap <C-Tab> <C-C>:tabnext<CR>
" CTRL-SHIFT-Tab is previous tab
noremap <C-S-Tab> :<C-U>tabprevious<CR>
inoremap <C-S-Tab> <C-\><C-N>:tabprevious<CR>
cnoremap <C-S-Tab> <C-C>:tabprevious<CR>

" ///////////////////////////////////////////////
" STUFF I TURNED OFF ////////////////////////////
" ///////////////////////////////////////////////


" NEOCOMPLETE SETTINGS ///////////// 
"let g:acp_enableAtStartup = 0 " Disable AutoComplPop.
"let g:neocomplete#enable_at_startup = 1 " Use neocomplete.
"let g:neocomplete#enable_smart_case = 1 " Use smartcase.
"let g:neocomplete#sources#syntax#min_keyword_length = 3 " Set minimum syntax keyword length.
"let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
"inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
"function! s:my_cr_function()
  "return neocomplete#close_popup() . "\<CR>"
""   For no inserting <CR> key.
""  return pumvisible() ? neocomplete#close_popup() : "\<CR>"
"endfunction
"" <TAB>: completion.
"inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
"" <C-h>, <BS>: close popup and delete backword char.
"inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
"inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
"inoremap <expr><C-y>  neocomplete#close_popup()
"inoremap <expr><C-e>  neocomplete#cancel_popup()


" SYNTASTIC SETTINGS ///////////
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"let g:syntastic_cpp_auto_refresh_includes = 1
"let g:syntastic_cpp_compiler = "g++"
"let g:syntastic_cpp_compiler_options = "-std=c++11 -Wall -Wextra -Wpedantic"
"let g:syntastic_cpp_checkers = ['cppcheck']
"let g:syntastic_cpp_check_header = 1

