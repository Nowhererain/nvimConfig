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
