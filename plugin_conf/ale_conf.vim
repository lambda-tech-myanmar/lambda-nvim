let g:ale_disable_lsp = 1
let g:ALE_MODE = 1 
let g:ale_linters = {
      \       'asm': ['gcc'],
      \       'c': ['cppcheck', 'flawfinder'],
      \       'cpp': ['cppcheck', 'flawfinder'],
      \       'css': ['stylelint'],
      \       'html': ['tidy'],
      \       'json': [],
      \       'markdown': [''],
      \       'python': [ 'flake8'],
      \       'rust': ['cargo'],
      \       'sh': ['shellcheck'],
      \       'text': ['languagetool'],
      \       'vim': ['vint'],
      \}
let b:ale_linters = ['flake8']
let b:ale_fixers = ['autopep8']
"查看上一个错误
nnoremap <silent> <leader>lk :ALEPrevious<CR>
"查看下一个错误
nnoremap <silent> <leader>lj :ALENext<CR>
"查看详情
nnoremap <silent> <leader>li :ALEDetail<CR>
"自定义error和warning图标
let g:ale_sign_error = "\uf65b"
let g:ale_sign_warning = "\uf421"
"防止java在中文系统上警告和提示乱码
let g:ale_java_javac_options = '-encoding UTF-8  -J-Duser.language=en'
"显示Linter名称,出错或警告等相关信息
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
" 光标移动到错误的地方时立即显示错误
let g:ale_echo_delay = 0
" virtual text
let g:ale_virtualtext_cursor = 1
let g:ale_virtualtext_delay = 10
let g:ale_virtualtext_prefix = '▸'
" ale-mode
if g:ALE_MODE == 0
  let g:ale_lint_on_text_changed = 'never'
elseif g:ALE_MODE == 1
  let g:ale_lint_on_text_changed = 'normal'
  let g:ale_lint_on_insert_leave = 1
elseif g:ALE_MODE == 2
  let g:ale_lint_on_text_changed = 'always'
  let g:ale_lint_delay=100
endif
let g:ale_fix_on_save = 1
let g:ale_list_window_size = 5
let b:ale_warn_about_trailing_whitespace = 0
function! LinterStatus() abort
  let l:counts = ale#statusline#Count(bufnr(''))

  let l:all_errors = l:counts.error + l:counts.style_error
  let l:all_non_errors = l:counts.total - l:all_errors

  return l:counts.total == 0 ? '✨ all good ✨' : printf(
        \   '😞 %dW %dE',
        \   all_non_errors,
        \   all_errors
        \)
endfunction

set statusline=
set statusline+=%m
set statusline+=\ %f
set statusline+=%=
set statusline+=\ %{LinterStatus()}
