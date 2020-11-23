let g:pymode = 1

"  Turn off plugin's warnings                                 *'g:pymode_warnings'*
let g:pymode_warnings = 1
"Add paths to `sys.path`                                         *'g:pymode_paths'*
"Value is list of path's strings. 

"let g:pymode_paths = []
"Trim unused white spaces on save                   *'g:pymode_trim_whitespaces'*

let g:pymode_trim_whitespaces = 1

"Setup default python options                                *'g:pymode_options'*

let g:pymode_options = 1
"Setup max line length                       *'g:pymode_options_max_line_length'*


let g:pymode_options_max_line_length = 79

"*'g:pymode_quickfix_maxheight'* *'g:pymode_quickfix_minheight'*

let g:pymode_quickfix_minheight = 3
let g:pymode_quickfix_maxheight = 6

let g:pymode_python = 'python3'

let g:pymode_indent = 1
let g:pymode_folding = 1
let g:pymode_doc = 1
let g:pymode_doc_bind = 'K'
"""
"Enable automatic virtualenv detection                     *'g:pymode_virtualenv'*
"let g:pymode_virtualenv = 1
"Set path to virtualenv manually                  *'g:pymode_virtualenv_path'*
"let g:pymode_virtualenv_path = $VIRTUAL_ENV
"
let g:pymode_run = 1
let g:pymode_run_bind = '<leader>r'
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = '<leader>b'
let g:pymode_breakpoint_cmd = ''
let g:pymode_lint = 1
let g:pymode_lint_on_write = 1
let g:pymode_lint_unmodified = 1
let g:pymode_lint_on_fly = 1
let g:pymode_lint_message = 0
let g:pymode_lint_checkers = ['pyflakes', 'pep8', 'mccabe','pylint']
let g:pymode_lint_ignore = ["E501,W"]
let g:pymode_lint_select = ["E501,W0011,W430"]
let g:pymode_lint_cwindow = 0
let g:pymode_lint_signs = 1
let g:pymode_lint_todo_symbol = ''
let g:pymode_lint_comment_symbol = ''
let g:pymode_lint_visual_symbol = 'RR'
let g:pymode_lint_error_symbol = ''
let g:pymode_lint_info_symbol = ''
let g:pymode_lint_pyflakes_symbol = 'ﰕ'
let g:pymode_lint_options_pep8 =
        \ {'max_line_length': g:pymode_options_max_line_length}
let g:pymode_lint_options_pyflakes = { 'builtins': '_' }
let g:pymode_lint_options_mccabe = { 'complexity': 12 }
let g:pymode_lint_options_pep257 = {}
let g:pymode_lint_options_pylint =
        \ {'max-line-length': g:pymode_options_max_line_length}
let g:pymode_rope_lookup_project = 0
let g:pymode_rope_project_root = ""
let g:pymode_rope_ropefolder='.ropeproject'
let g:pymode_rope_show_doc_bind = '<C-c>d'
let g:pymode_rope_regenerate_on_write = 1
let g:pymode_rope_completion = 0
let g:pymode_rope_complete_on_dot = 0
let g:pymode_rope_completion_bind = '<C-Space>'
let g:pymode_rope_autoimport = 1
"let g:pymode_rope_autoimport_modules = ['os', 'shutil', 'datetime'])
let g:pymode_rope_autoimport_import_after_complete = 0
let g:pymode_rope_goto_definition_bind = '<C-S-g>'
"Command for open window when definition has been found
"Values are (`e`, `new`, `vnew`)           
let g:pymode_rope_goto_definition_cmd = 'new'
let g:pymode_rope_rename_bind = '<C-c>rr'
let g:pymode_rope_organize_imports_bind = '<C-c>ro'
let g:pymode_rope_autoimport_bind = '<C-c>ra'
let g:pymode_syntax = 0
"let g:pymode_syntax_slow_sync = 1
"let g:pymode_syntax_all = 1

