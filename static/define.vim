let mapleader = ";"
set hidden
set termguicolors
set scrolloff=5
set encoding=UTF-8
filetype on 
set nobackup
set nowritebackup
set cmdheight=1
set updatetime=300
set sw=4  " 设置tab宽度
set ts=4  " 缩进宽度
set tabstop=4
set shiftwidth=4
set clipboard=unnamed
set foldcolumn=0
set nofoldenable
set signcolumn=auto:1-2
set cursorline
set virtualedit=block,onemore
set autoindent
set nobackup
set noswapfile
set numberwidth=1
set nu
set hidden
set shortmess+=c
set updatetime=100
set termguicolors
set expandtab
set fo-=r
set selection=exclusive
set noshowmode  "不显示模式信息"
set timeoutlen=400
"=== asyncrun
let g:asyncrun_open = 10
let g:asynctask_template  =  ' ~/.config/nvim/static/templates/task_template.ini'
let g:asynctasks_config_name = ['main.tasks', '.git/tasks.ini', '.svn/tasks.ini']
let g:asynctasks_extra_config = [
      \ '~/.config/nvim/static/templates/task_template.ini',
      \ ]
let g:asynctasks_term_pos = 'bottom'
let g:asynctasks_term_rows = 10    " 设置纵向切割时，高度为 10
let g:asynctasks_term_rows = 10    " 设置水平端子拆分的高度
let g:asynctasks_term_cols = 30    " 设置垂直端子分割的宽度
let g:asyncrun_save = 2
let g:asyncrun_bell = 1
let g:asyncrun_trim = 1
let g:asyncrun_open = 1
let g:asynctasks_term_reuse=1

nmap <leader>r <Cmd>AsyncTask file-run<cr>
nmap <leader>d <Cmd>AsyncTask file-build<cr>
nmap <leader>w <Cmd>w<cr>
nmap <leader>q <Cmd>q<cr>
nmap b <Cmd>BufferLinePick<cr>
nmap cb <Cmd>BufferLinePickClose<cr>
