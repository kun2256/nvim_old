-- 设置常用前缀
vim.g.mapleader = ";"
vim.g.maplocalleader = ";"
local map = vim.api.nvim_set_keymap
-- 复用 opt 参数
local opt = {noremap = true, silent = true }


-- 取消 s 默认功能
map("n", "s", "<C-w>", opt)
-- windows 分屏快捷键
map("n", "sv", ":vsp<CR>", opt)
-- map("n", "sp", ":sp<CR>", opt)
-- 左右比例控制
map("n", "s,", ":vertical resize -10<CR>", opt)
map("n", "s.", ":vertical resize +10<CR>", opt)
-- 等比例
map("n", "s=", "<C-w>=", opt)

-- visual模式下缩进代码
map("v", "<", "<gv", opt)
map("v", ">", ">gv", opt)
-- 上下移动选中文本
map("v", "J", ":move '>+1<CR>gv-gv", opt)
map("v", "K", ":move '<-2<CR>gv-gv", opt)

-- 上下滚动浏览
map("n", "<C-j>", "4j", opt)
map("n", "<C-k>", "4k", opt)

-- 保存文件
map("n", "<leader>w", ":w<cr>", opt)
-- 退出文件
map("n", "<leader>q", ":q<cr>", opt)




-- 编译
map("n", "<leader>d", ":AsyncTask file-build<cr>", opt)
-- 运行
map("n", "<leader>r", ":AsyncTask file-run<cr>", opt)
-- python3运行
map("n", "<leader>p", ";w:!python3 %<cr>", opt)

-- 切换 buff 栏
map("n", "b", ":BufferLinePick<cr>", opt)
-- 删除 buff 栏
map("n", "cb", ":BufferLinePickClose<cr>", opt)

-- 文件树
map("n", "tr", ":NvimTreeToggle<cr>", opt)
-- 撤回回退栏
map("n", "L", ":UndotreeToggle<cr><C-w>h<C-w>k", opt)
-- 基于首行排版
map("n", "<leader>g", "gg=G<C-o>", opt)
-- 全选
map("n", "<C-a>", "ggVG", opt)
