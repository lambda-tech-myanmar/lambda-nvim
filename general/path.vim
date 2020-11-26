"let g:python3_host_prog = expand("<path to python with pynvim installed>")
if has('vim_starting')
  " set default encoding to utf-8
  " Let Vim use utf-8 internally, because many scripts require this
  exe 'set encoding=utf-8'
  scriptencoding utf-8
  if &compatible
    set nocompatible
  endif
let g:python3_host_prog = expand("$HOME/.neovim_env/bin/python3") " <- example

  " python host
  if !empty($PYTHON_HOST_PROG)
    let g:python_host_prog  = $PYTHON_HOST_PROG
  endif
  if !empty($PYTHON3_HOST_PROG)
    let g:python3_host_prog = $PYTHON3_HOST_PROG
    if !has('nvim') 
          \ && (has('win16') || has('win32') || has('win64'))
          \ && exists('&pythonthreedll')
          \ && exists('&pythonthreehome')
      let &pythonthreedll = get(split(globpath(fnamemodify($PYTHON3_HOST_PROG, ':h'), 'python*.dll'), '\n'), -1, '')
      let &pythonthreehome = fnamemodify($PYTHON3_HOST_PROG, ':h')
    endif
  endif
endif
"let g:python2_host_prog = expand("")
"let g:node_host_prog = expand("<path to node with neovim installed>")
"let g:node_host_prog = expand("~/.nvm/versions/node/v12.16.1/bin/node") " <- example
