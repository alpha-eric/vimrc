" html/xml标签配对补全
Bundle 'docunext/closetag.vim'

let g:closetag_html_style=1

" 快速注释
Bundle 'scrooloose/nerdcommenter'

let g:NERDSpaceDelims=1

" 引号配对补全
Bundle 'Raimondi/delimitMate'

let b:delimitMate_nesting_quotes = ['"']

" 快速编辑
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-repeat'
"cs"'
""Hello world!" -> 'Hello world!'

"ds"
"Hello world!" -> Hello world!
"
"ysiw"
"Hello -> "Hello"
"
"yss"
"Hello world -> "Hello world"
"
"cst"
"<a>abc</a>a>  -> "abc"
"
"veeS"
"hello world -> "hello world"
"
"ys$" 当前到行尾, 引号引住'"'

" 去行尾空格
Bundle 'bronson/vim-trailing-whitespace'
map <leader><space> :FixWhitespace<cr>

" 对齐
Bundle "Chiel92/vim-autoformat"
noremap <leader>a :Autoformat<CR><CR>
let g:formatdef_autopep8 = "'autopep8 - --range '.a:firstline.' '.a:lastline"
let g:formatters_python = ['autopep8']

" 多光标选中编辑
Bundle 'terryma/vim-multiple-cursors'
let g:multi_cursor_use_default_mapping=0
" Default mapping
let g:multi_cursor_next_key='<C-m>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'
