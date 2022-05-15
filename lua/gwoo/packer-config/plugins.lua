local has,_ = pcall(require,"packer")
if not has then
    return
end

_.startup(function()
    -- packer 管理器
    use 'wbthomason/packer.nvim'

    -- nvim-treesitter 渲染
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

    -- theme 主题
    use {'yonlu/omni.vim'}
    use {'rcarriga/nvim-notify'}


    -- 状态栏
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use {'akinsho/toggleterm.nvim'}

    -- lsp代码补全
    use {
    'junnplus/nvim-lsp-setup',
    requires = {
        'neovim/nvim-lspconfig',
        'williamboman/nvim-lsp-installer',
       }
    }
    use {'ray-x/lsp_signature.nvim'}
    use {'hrsh7th/nvim-cmp'}
    use {'hrsh7th/cmp-nvim-lua'}
    use {'onsails/lspkind-nvim'}
    use {'hrsh7th/cmp-nvim-lsp-signature-help'}
    use {'windwp/nvim-autopairs'}
    use {'hrsh7th/cmp-buffer'}
    use {'hrsh7th/cmp-path'}
    use {'hrsh7th/cmp-calc'}
    use {'dmitmel/cmp-digraphs'}
    use {'f3fora/cmp-spell'}
    use {'hrsh7th/cmp-nvim-lsp'}
    -- 以上全为lsp插件

    use 'folke/lua-dev.nvim'
    use {'L3MON4D3/LuaSnip', requires={'rafamadriz/friendly-snippets'} }
    use {"saadparwaiz1/cmp_luasnip"}
    use {'skywind3000/asyncrun.vim',requires={'skywind3000/asynctasks.vim'}}

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


    --  buffer栏
    use {'akinsho/bufferline.nvim'}

    -- nvim-tree (新增)
    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons'
    }

    -- 远程编辑
 use {
  'chipsenkbeil/distant.nvim',
  config = function()
    require('distant').setup {
      -- Applies Chip's personal settings to every machine you connect to
      --
      -- 1. Ensures that distant servers terminate with no connections
      -- 2. Provides navigation bindings for remote directories
      -- 3. Provides keybinding to jump into a remote file's parent directory
      ['*'] = require('distant.settings').chip_default()
    }
  end
}

    -- 主页插件
    use {'glepnir/dashboard-nvim'}
    use {'liuchengxu/vim-clap'}
    use {'junegunn/fzf.vim'}
    use {'nvim-telescope/telescope.nvim'}

    -- 代码片段
    use { 'L3MON4D3/LuaSnip',
    requires = { 'rafamadriz/friendly-snippets' }
  }
  use { "saadparwaiz1/cmp_luasnip" }

    -- 记录树 
  use { "mbbill/undotree"}

  -- 补全括号
  use {"windwp/nvim-autopairs"}
  
end)
