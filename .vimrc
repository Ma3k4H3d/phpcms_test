" Configuration file for vim
set modelines=0		" CVE-2007-2438

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set backspace=2		" more powerful backspacing

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup nobackup

set showmatch      "高亮显示对应的括号
set number         "显示行号
set autoindent     "自动对齐
set tabstop=4      "Tab宽度
syntax  on         "自动语法高亮

set nocompatible	" Use Vim defaults instead of 100% vi compatibility
filetype off

"-----------setting of Bundle------------
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"---------------------------------------
"------setting of Bundle
 Plugin 'gmarik/vundle'

"Brief help
":BundleList       -列出所有插件
":BundleInstall    -安装列表中的所有插件
":BundleClean      -移除不需要的插件


"---------------------------------------
"------setting of NERDTree
Plugin 'scrooloose/nerdtree'

map <F2> :NERDTreeToggle<CR>
let NERDTreeShowLineNumbers=1     " -显示行号
let NERDTreeAutoCenter=1
let NERDTreeShowHidden=1          " -显示隐藏文件
let NERDTreeWinSize=31            " -设置宽度


"---------------------------------------
"------setting of ctrlp.vim
Plugin 'https://github.com/kien/ctrlp.vim.git'


"---------------------------------------
"------setting of Powerline
Plugin 'Lokaltog/vim-powerline'


"---------------------------------------
"------setting of python-mode

Plugin 'klen/python-mode'



"---------------------------------------
"------setting of taglist
Plugin 'vim-scripts/taglist.vim'
map <F3> :TlistToggle<CR>
let Tlist_Use_Right_Window=1
" let Tlist_Auto_Open=1


"---------------------------------------
"------setting of NERD Commenter
Plugin 'scrooloose/nerdcommenter'




"---------------------------------------
"------setting of YouCompleteMe
Plugin 'Valloric/YouCompleteMe'




"---------------------------------------
"------setting of markdown
 Plugin 'godlygeek/tabular'
 Plugin 'plasticboy/vim-markdown'












call vundle#end()

filetype plugin indent on

