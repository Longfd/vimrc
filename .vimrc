" Reference Linking https://github.com/tao12345666333/vim/blob/master/README-zh.md
" Default Setting
set nocompatible 
set history=50 
set fileencodings=ucs-bom,utf-8,gbk2312,gbk,cp936
set fileencoding=utf-8
set backspace=2
filetype on 

" UserInterface
syntax on 
set ruler 
set nu 

" Format Setting
set autoindent 
set cindent 
set tabstop=4 
set shiftwidth=4 

" Search
set showmatch 
set hlsearch 
set incsearch 
set matchtime=5 

" Vundle Setting
set nocompatible                " be iMproved
filetype off                    " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Plugin 'gmarik/vundle'
" original repos on github
Plugin 'Valloric/YouCompleteMe'
Plugin 'tomasr/molokai'
Plugin 'vim-scripts/ctags.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'

filetype plugin indent on

" YouCompleteMe
let g:ycm_global_ycm_extra_conf='~/.ycm_extra_conf.py'  "设置全局配置文件的路径
let g:ycm_seed_identifiers_with_syntax=1    " 语法关键字补全
let g:ycm_confirm_extra_conf=0  " 打开vim时不再询问是否加载ycm_extra_conf.py配置
let g:ycm_key_invoke_completion = '<C-a>' " ctrl + a 触发补全
set completeopt=longest,menu    "让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>

" Ctags
set tags=/home/longfeida/systags/tags;
set autochdir

" NerdTree
nmap <F5> :NERDTreeToggle<cr>

" Molokai
set t_Co=256
colorscheme molokai

" Airline
"set laststatus=2 
let g:airline_theme='simple'
"打开tabline功能,方便查看Buffer和切换，这个功能比较不错"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
"设置切换Buffer快捷键 ctrl + N/P"
nnoremap <C-N> :bn<CR> 
"nnoremap <C-P> :bp<CR>

" Tagbar
nmap <F9> :TagbarToggle<CR>
let g:tagbar_ctags_bin='/usr/bin/ctags'
let g:tagbar_autofocus = 1 "tagbar打开，光标即在tagbar页面内，默认在vim打开的文件内

