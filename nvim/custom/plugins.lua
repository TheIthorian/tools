local plugins = {
   {  
        "neovim/nvim-lspconfig",
        config = function() 
            require "plugins.configs.lspconfig"
            require "custom.configs.lspconfig"
        end,
    },
    {
        "williamboman/mason.nvim", 
        opts = {
            ensure_installed = {
                "rust-analyzer",
                "tsserver", -- typescript-language-server
            },
        },
    },
}

return plugins