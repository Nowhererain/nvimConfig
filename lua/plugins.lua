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

<<<<<<< HEAD
=======


>>>>>>> [init]add new setting
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

<<<<<<< HEAD
=======
  --  nvim-telescope
  use{
	  "nvim-telescope/telescope.nvim",
	  requires = {
		  "nvim-lua/plenary.nvim",
		  "kyazdani42/nvim-web-devicons"
	  },
	  config = function()
		  require("plugins-config.telescope")
	  end
  }

  --  telescope-fzf
  use{"nvim-telescope/telescope-fzf-native.nvim",run = "make"}

-- tabout
use {
  'abecodes/tabout.nvim',
  config = function()
    require('tabout').setup {
    tabkey = '<Tab>', -- key to trigger tabout, set to an empty string to disable
    backwards_tabkey = '<S-Tab>', -- key to trigger backwards tabout, set to an empty string to disable
    act_as_tab = true, -- shift content if tab out is not possible
    act_as_shift_tab = false, -- reverse shift content if tab out is not possible (if your keyboard/terminal supports <S-Tab>)
    default_tab = '<C-t>', -- shift default action (only at the beginning of a line, otherwise <TAB> is used)
    default_shift_tab = '<C-d>', -- reverse shift default action,
    enable_backwards = true, -- well ...
    completion = true, -- if the tabkey is used in a completion pum
    tabouts = {
      {open = "'", close = "'"},
      {open = '"', close = '"'},
      {open = '`', close = '`'},
      {open = '(', close = ')'},
      {open = '[', close = ']'},
      {open = '{', close = '}'}
    },
    ignore_beginning = true, --[[ if the cursor is at the beginning of a filled element it will rather tab out than shift the content ]]
    exclude = {} -- tabout will ignore these filetypes
}
  end,
	wants = {'nvim-treesitter'}, -- or require if not used so far
	after = {'completion-nvim'} -- if a completion plugin is using tabs load it before
}
>>>>>>> [init]add new setting


end)
