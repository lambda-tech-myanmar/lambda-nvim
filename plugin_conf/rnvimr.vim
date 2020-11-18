" Make Ranger replace netrw and be the file explorer
let g:ranger_map_keys = 0
nmap <space>r :RnvimrToggle<CR>
let g:NERDTreeHijackNetrw = 0 ""// add this line if you use NERDTree
let g:ranger_replace_netrw = 1 ""// open ranger when vim open a directory

