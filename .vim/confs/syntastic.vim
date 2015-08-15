" 檢查語法
Plugin 'scrooloose/syntastic'
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0
let g:syntastic_enable_highlighting=1

let g:syntastic_python_checkers=['pyflakes', 'pep8'] " 使用pyflakes,速度比pylint快
let g:syntastic_python_pep8_args='--ignore=E501,E225'

" to see error location list
let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_jump = 3
" auto close window when not error
let g:syntastic_auto_loc_list = 2
let g:syntastic_loc_list_height = 5

function! ToggleErrors()
    let old_last_winnr = winnr('$')
    lclose
    if old_last_winnr == winnr('$')
        " Nothing was closed, open syntastic error location panel
        Errors
    endif
endfunction
nnoremap <leader>s :call ToggleErrors()<cr>

" ###### Python #########
" python fly check, 弥补syntastic只能打开和保存才检查语法的不足
Bundle 'kevinw/pyflakes-vim'
let g:pyflakes_use_quickfix = 0

" for python.vim syntax highlight
Bundle 'hdima/python-syntax'
let python_highlight_all = 1
