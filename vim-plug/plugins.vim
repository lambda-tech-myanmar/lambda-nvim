" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    "Plug 'scrooloose/NERDTree'
    "Plug 'jistr/vim-nerdtree-tabs'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    "FOR PYTHON
    "
    Plug 'Vimjas/vim-python-pep8-indent'
    "Coompletions
    " Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'neoclide/coc.nvim', {'branch/': 'release'}
    "Syntax highlight
    Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
    "ALE
    "Plug 'dense-analysis/ale'
    "style
    Plug 'itchyny/lightline.vim'
    Plug 'sainnhe/artify.vim'
    "git 
    Plug 'tpope/vim-fugitive'
    Plug 'itchyny/vim-gitbranch'
    "indent lines
    Plug 'Yggdroot/indentLine'
    Plug 'macthecadillac/lightline-gitdiff'
    "Plug 'maximbaz/lightline-ale'
    Plug 'albertomontesg/lightline-asyncrun'
    Plug 'rmolin88/pomodoro.vim'
    "DIrstrution free
    Plug 'junegunn/goyo.vim'
    "Auto resize pane
    Plug 'camspiers/animate.vim'
    Plug 'camspiers/lens.vim'
    "finding
    Plug 'junegunn/fzf', {'dir': '~/.fzf','do': './install --all'}
    Plug 'junegunn/fzf.vim' " needed for previews
    Plug 'antoinemadec/coc-fzf', {'branch': 'release'}


    let g:make = 'gmake'
    if exists('make')
            let g:make = 'make'
    endif
    Plug 'Shougo/vimproc.vim', {'do': g:make}
    
    "" Vim-Session
    Plug 'xolox/vim-misc'
    Plug 'xolox/vim-session'

    if v:version >= 703
      Plug 'Shougo/vimshell.vim'
    endif

    if v:version >= 704
      "" Snippets
      Plug 'SirVer/ultisnips'
    endif

    Plug 'honza/vim-snippets'
    Plug 'airblade/vim-rooter'
    "Dashboard
    "Plug 'glepnir/dashboard-nvim'
    "tab style
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'ryanoasis/vim-devicons'
    " Plug 'romgrk/lib.kom' -- removed! You can remove it from your vimrc
    "Plug 'romgrk/barbar.nvim'
    Plug 'patstockwell/vim-monokai-tasty'
    "for comment
    Plug 'preservim/nerdcommenter'
    "multi cursor
    Plug 'mg979/vim-visual-multi', {'branch': 'master'}
    Plug 'preservim/tagbar'
    "fancy screen
    Plug 'mhinz/vim-startify'
    "LightLine Art
    Plug 'delphinus/lightline-delphinus'
    Plug 'airblade/vim-gitgutter'
    Plug 'mhinz/vim-signify'
    "colorized
    Plug 'norcalli/nvim-colorizer.lua'
    Plug 'junegunn/rainbow_parentheses.vim'

    "RAMGER
    "Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
    "Plug 'rbgrouleff/bclose.vim'
    " tabular plugin is used to format tables
    Plug 'godlygeek/tabular'
    " JSON front matter highlight plugin
    "Plug 'elzr/vim-json'
    Plug 'plasticboy/vim-markdown'
    "For Django python
    
" python
"" Python Bundle
"    Plug 'zchee/deoplete-jedi'
    Plug 'raimon49/requirements.txt.vim', {'for': 'requirements'}
    
    Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }

    Plug 'tweekmonster/django-plus.vim', { 'for': ['python', 'htmldjango', 'html'] }
    " One filetype plugin to rule them all
    Plug 'sheerun/vim-polyglot'
    """Netranger"""
    "Plug 'ipod825/vim-netranger'
"Neovim Deubgger
    Plug 'puremourning/vimspector' 
"X tabline
    Plug 'mg979/vim-xtabline'
"FLoating Terminal
    Plug 'voldikss/vim-floaterm'
"CHoose Win Like SpaceVim
    Plug 't9md/vim-choosewin',  { 'on': 'ChooseWin' }
"FOR MARKDOWN 
    Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug', 'vimwiki'], 'on': 'MarkdownPreview'}
"FOR TMUX
    if  executable("tmux") && strlen($TMUX)
        Plug 'christoomey/vim-tmux-navigator'
        Plug 'tmux-plugins/vim-tmux-focus-events'
        Plug 'roxma/vim-tmux-clipboard'
        Plug 'wellle/tmux-complete.vim'
    endif
"FOR MOVING THE BLOCK IN
    Plug 'matze/vim-move', {'on': [
            \ '<Plug>MoveBlockDown',
            \ '<Plug>MoveBlockUp',
            \ '<Plug>MoveBlockRight',
            \ '<Plug>MoveBlockLeft']}
"FADING PANE 
     Plug 'TaDaa/vimade'
call plug#end()
