" ************ VUNDLE SETUP  **************
set nocompatible 
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Plugin 'gmarik/vundle' " Main vundle package
Plugin 'scrooloose/nerdtree.git' " NERDtree tree explorer plugin
Plugin 'jistr/vim-nerdtree-tabs' " NERDtree with tabs
Plugin 'Valloric/YouCompleteMe' " Code-completion engine
Plugin 'scrooloose/nerdcommenter' " Easy commenting
Plugin 'beyondmarc/opengl.vim.git' " Opengl syntax highlighter
Plugin 'beyondmarc/glsl.vim.git' " Opengl syntax highlighter

" turn filetype back on 
filetype plugin indent on


" These are my own custom settings
map <C-n> :NERDTreeToggle<CR>
let mapleader=","
set number " Turn on line numbers
set tabstop=4 softtabstop=0 noexpandtab shiftwidth=4 " Set tab space
