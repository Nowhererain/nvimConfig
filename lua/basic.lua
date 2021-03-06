--utf8
vim.g.encoding = "utf-8"
vim.o.fileencoding = 'utf-8'

--设置vim透明
vim.g.background_transparency = true

--jk移动时光标上下保留8行
vim.o.scrolloff = 8
vim.o.sidescrolloff = 8

--使用相对行号
vim.wo.number = true
vim.wo.relativenumber = true

--高亮所在行
vim.wo.cursorline = true

--显示左侧图标索引列
vim.wo.signcolumn = "yes"

--右侧参考线
vim.wo.colorcolumn = "80"

--搜索大小写不敏感，除非包含大写
vim.o.ignorecase = true
vim.o.smartcase = true

--搜索不要高亮
vim.o.hlsearch = false

--边输入边搜索
vim.o.incsearch = true

--行结尾可以跳到下一行
vim.o.whichwrap = 'b,s,<,>,[,],h,l'

--鼠标支持
vim.o.mouse = "a"

--补全增强
vim.o.wildmenu = true
<<<<<<< HEAD
=======

--自动缩进的策略为plugin
--vim.o.list = true 
vim.o.listchars = "space:."
vim.o.filetype = "plugin"

--设置缩进
-- 是否将 tab 替换为 space
vim.bo.expandtab = false
-- 换行或 >> << 缩进时的 space 数量    
vim.bo.shiftwidth = 4    
-- 一个 tab 占用几个 space    
vim.bo.tabstop = 4    
-- tab 和 space 的混合，和上面 2 个设置成相同即可    
vim.bo.softtabstop = 4 

--always show tabline
--vim.o.showtabline = 2
>>>>>>> [init]add new setting
