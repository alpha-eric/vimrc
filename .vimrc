" 檔案編碼
set encoding=utf-8
set fileencodings=utf-8,cp950
set fileencoding=utf-8
filetype on
filetype plugin indent on " enable plugins

" 編輯喜好設定
syntax on        " 語法上色顯示
set nocompatible " VIM 不使用和 VI 相容的模式
" set ai           " 自動縮排
set shiftwidth=4 " 設定縮排寬度 = 4
set tabstop=4    " tab 的字元數
set softtabstop=4
" set expandtab   " 用 space 代替 tab

set ruler        " 顯示右下角設定值
set backspace=2  " 在 insert 也可用 backspace
set ic           " 設定搜尋無識大小寫
set ru           " 第幾行第幾個字
set hlsearch     " 設定高亮度顯示搜尋結果
highlight Search term=reverse ctermbg=green ctermfg=black

set incsearch    " 在關鍵字還沒完全輸入完畢前就顯示結果
set confirm      " 操作過程有衝突時，以明確的文字來詢問
set history=100  " 保留 100 個使用過的指令
set cursorline   " 顯示目前的游標位置

set laststatus=2
set statusline=%4*%<\%m%<[%f\%r%h%w]\ [%{&ff},%{&fileencoding},%Y]%=\[Position=%l,%v,%p%%]
"set nu
"set paste
"set background=light
"set t_Co=16
"let g:solarized_termcolors=256
"colorscheme solarized

highlight CursorLine cterm=none ctermbg=2 ctermfg=0
set dictionary+=/usr/share/dict/words
map <C-M> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
map <C-K> viwy:!ydict -w <C-R>"<CR>

" bundle list
source ~/.vim/vimrc.bundle
