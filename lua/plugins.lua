return require('packer').startup(function()
	--Packer can manage itselt
  
  use 'wbthomason/packer.nvim'

--暗色主题catppuccin
  use{
	"catppuccin/nvim",
	as = "catppuccin",
	config = function()
          --插件加载完后自动运行lua/conf/catppuccin.lua中的代码
	  require("plugins-config.catppuccin")
  	end
  }

--nvim-tree插件
  use{
	"kyazdani42/nvim-tree.lua",
	requires = {
        -- 依赖一个图标插件
	"kyazdani42/nvim-web-devicons"
	},
	config = function()
	-- 插件加载完成后自动运行 lua/plugins-config/nvim-tree.lua 文件中的代码
	  require("plugins-config.nvim-tree")
    	end
  }

--bufferline插件
  use {
	  'akinsho/bufferline.nvim', 
	  requires = {'kyazdani42/nvim-web-devicons'},
	  config = function()
	  -- 插件加载完成后自动运行 lua/plugins-config/bufferline 文件中的代码
	    require("plugins-config.bufferline")
    	  end
  }

--nvim-treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
	config = function()
	  require("plugins-config.nvim-treesitter")
  	end
    }

--lsp
  use {
	'neovim/nvim-lspconfig',
	'williamboman/nvim-lsp-installer',
	config = function()
	  require("lsp.setup")
	end
  }

  -- nvim-cmp
  use 'hrsh7th/cmp-nvim-lsp' -- { name = nvim_lsp }
  use 'hrsh7th/cmp-buffer'   -- { name = 'buffer' },
  use 'hrsh7th/cmp-path'     -- { name = 'path' }
  use 'hrsh7th/cmp-cmdline'  -- { name = 'cmdline' }
  use 'hrsh7th/nvim-cmp'
  -- vsnip
  use 'hrsh7th/cmp-vsnip'    -- { name = 'vsnip' }
  use 'hrsh7th/vim-vsnip'
  use 'rafamadriz/friendly-snippets'
  -- lspkind
  use 'onsails/lspkind-nvim'



end)
