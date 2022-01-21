""dein Scripts-----------------------------
""URL: https://github.com/Shougo/dein.vim
"if &compatible
"  set nocompatible               " Be iMproved
"endif
"
"" Required:
"set runtimepath+=$HOME/.cache/dein/repos/github.com/Shougo/dein.vim
"
"" Required:
"call dein#begin('$HOME/.cache/dein')
"
"  " Let dein manage dein
"  " Required:
"  call dein#add('$HOME/.cache/dein/repos/github.com/Shougo/dein.vim')
"
"  " Add or remove your plugins here like this:
"  call dein#add('preservim/nerdtree')
"  call dein#add('tpope/vim-fugitive')
"  call dein#add('Shougo/neosnippet.vim')
"  call dein#add('Shougo/neosnippet-snippets')
"  call dein#add('ryanoasis/vim-devicons')
"  call dein#add('ryanoasis/nerd-fonts')
"  call dein#add('vim-airline/vim-airline')
"  call dein#add('rust-lang/rust.vim')
"  call dein#add('vim-jp/vimdoc-ja')
"
"" Required:
"call dein#end()
"
"" Required:
"filetype plugin indent on
"syntax enable
"
"" If you want to install not installed plugins on startup.
""if dein#check_install()
""  call dein#install()
""endif
"
""End dein Scripts-------------------------

"My The Strongest Settings

set number
set ignorecase

set foldmethod=marker
"folded level is too large not to be folded by default
"set foldlevel=100 
set expandtab
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set list

set hlsearch

imap jj <C-[>

"for Competetive Programming Contest (C++)
"nmap gyg :! cat % \| clip.exe<CR><CR>
"
"inoremap <silent> for<Tab> for (int i = 0; i < m; i++)
"inoremap <silent> printf<Tab> printf ("%d\n", a);
"
"inoremap {<Enter> {}<Left><CR><ESC><S-o>
"inoremap ( ()<LEFT>
"inoremap ' ''<LEFT>
"inoremap " ""<LEFT>
"
"nmap <F4> :terminal g++ -std=gnu++17 -Wall -Wextra -O2 -I . %<CR>
"nmap <F5> :terminal g++ -std=gnu++17 -Wall -Wextra -O2 -I . %<CR>i
"nmap <F6> :terminal ./a.out <CR>i
"
"autocmd BufNewFile *.cpp 0r ~/.config/nvim/templates/template.cpp

