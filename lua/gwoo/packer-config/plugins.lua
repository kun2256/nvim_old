local has,_ = pcall(require,"packer")
if not has then
    return
end

_.startup(function()
    use 'wbthomason/packer.nvim'
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
    use {'ray-x/aurora'}
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use {'akinsho/toggleterm.nvim'}
    use {
    'junnplus/nvim-lsp-setup',
    requires = {
        'neovim/nvim-lspconfig',
        'williamboman/nvim-lsp-installer',
    }
}
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
    use 'folke/lua-dev.nvim'
    use {'L3MON4D3/LuaSnip',
        requires={'rafamadriz/friendly-snippets'}
    }
    use {"saadparwaiz1/cmp_luasnip"}
    use {'skywind3000/asyncrun.vim',requires={'skywind3000/asynctasks.vim'}}
end)
