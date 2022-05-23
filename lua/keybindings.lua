
local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true}
<<<<<<< HEAD

=======
map("n","<A-q>","<ESC>",opt)
map("v","<A-q>","<ESC>",opt)
map("n","O","o<ESC>k",opt)
--
map("n","QQ",":q!<CR>:q!<CR>",opt)
map("n","WW","ZZ",opt)
>>>>>>> [init]add new setting
--设定ijkl为上下左右
map("n",'i','k',opt)
map("n",'j','h',opt)
map("n",'k','j',opt)

--9行翻页
map("n", "<C-u>", "15k", opt)
map("n", "<C-o>", "15j", opt)

--visual模式下<>缩进
map("v",'<','<gv',opt)
map("v",'>','>gv',opt)

--分屏相关
map("n", "sv", ":vsp<CR>", opt)
map("n", "sh", ":sp<CR>", opt)
map("n", "sc", "<C-w>c", opt)
map("n", "so", "<C-w>o", opt) -- close others

-- 比例控制（不常用，因为支持鼠标拖拽）
map("n", "s.", ":vertical resize +20<CR>", opt)
map("n", "s,", ":vertical resize -20<CR>", opt)
map("n", "s=", "<C-w>=", opt)
map("n", "si", ":resize +10<CR>",opt)
map("n", "sk", ":resize -10<CR>",opt)

--窗口跳转相关
map("n", "<A-j>", "<C-w>h", opt)
<<<<<<< HEAD
map("n", "<A-k>", "<C-w>j", opt)
map("n", "<A-i>", "<C-w>k", opt)
=======
--map("n", "<A-k>", "<C-w>j", opt)
--map("n", "<A-i>", "<C-w>k", opt)
>>>>>>> [init]add new setting
map("n", "<A-l>", "<C-w>l", opt)

--nvim-tree
map('n',"<A-o>",':NvimTreeToggle<CR>',opt)

-- bufferline 左右Tab切换
map("n", "<C-j>", ":BufferLineCyclePrev<CR>", opt)
map("n", "<C-l>", ":BufferLineCycleNext<CR>", opt)

<<<<<<< HEAD
=======

--telescope
map("n", "ff", ":Telescope find_files<CR>", opt)
map("n", "fg", ":Telescope live_grep<CR>", opt)
map("n", "fb", ":Telescope buffers<CR>", opt)
map("n", "fh", ":Telescope help_tags<CR>", opt)
map("n", "fB", ":Telescope file_browser<CR>", opt)
map("n", "fF", ":Telescope current_buffer_fuzzy_find<CR>", opt)

>>>>>>> [init]add new setting
local pluginKeys = {}

-- lsp 回调函数快捷键设置
pluginKeys.maplsp = function(mapbuf)
  -- rename
  mapbuf('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opt)
  -- code action
  mapbuf('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opt)
  -- go xx
  mapbuf('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opt)
  mapbuf('n', 'gh', '<cmd>lua vim.lsp.buf.hover()<CR>', opt)
  mapbuf('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opt)
  mapbuf('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opt)
  mapbuf('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opt)
  -- diagnostic
  mapbuf('n', 'go', '<cmd>lua vim.diagnostic.open_float()<CR>', opt)
  mapbuf('n', 'gp', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opt)
  mapbuf('n', 'gn', '<cmd>lua vim.diagnostic.goto_next()<CR>', opt)
  -- mapbuf('n', '<leader>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opt)
  -- leader + =
  mapbuf('n', '<leader>=', '<cmd>lua vim.lsp.buf.formatting()<CR>', opt)
  -- mapbuf('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opt)
  -- mapbuf('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opt)
  -- mapbuf('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opt)
  -- mapbuf('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opt)
  -- mapbuf('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opt)
end

<<<<<<< HEAD
-- nvim-cmp 自动补全
pluginKeys.cmp = function(cmp)
  return {
    -- 上一个
    ['<C-k>'] = cmp.mapping.select_prev_item(),
    -- 下一个
    ['<C-j>'] = cmp.mapping.select_next_item(),
=======

-- nvim-cmp 自动补全
pluginKeys.cmp = function(cmp)
  return {
	['<Tab>'] = cmp.mapping(function(fallback)
								if cmp.visible() then
									if cmp.get_active_entry() then
										cmp.select_next_item()
									else
										cmp.select_next_item()
										cmp.close()
									end
								return
								end
								fallback()
							end
	, { 'i', 'c' }),
    ['<S-Tab>'] = cmp.mapping(function(fallback)
								if cmp.visible() then
									cmp.select_prev_item()
									return
								end
								fallback()
							end
	, { 'i', 'c' }),
	-- 上一个
    ['<A-i>'] = cmp.mapping.select_prev_item(),
    -- 下一个
    ['<A-k>'] = cmp.mapping.select_next_item(),
>>>>>>> [init]add new setting
    -- 出现补全
    ['<A-.>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
    -- 取消
    ['<A-,>'] = cmp.mapping({
      i = cmp.mapping.abort(),
      c = cmp.mapping.close(),
    }),
    -- 确认
    -- Accept currently selected item. If none selected, `select` first item.
    -- Set `select` to `false` to only confirm explicitly selected items.
    ['<CR>'] = cmp.mapping.confirm({
      select = true ,
      behavior = cmp.ConfirmBehavior.Replace
    }),
    -- ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
    ['<C-u>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
    ['<C-d>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
  }
end

return pluginKeys

<<<<<<< HEAD

=======
>>>>>>> [init]add new setting
