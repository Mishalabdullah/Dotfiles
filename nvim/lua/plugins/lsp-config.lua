return {
    {
        "williamboman/mason.nvim",
        lazy = false,
        opts = {}, -- Calls require("mason").setup({})
    },
    {
        "williamboman/mason-lspconfig.nvim",
        opts = {
            ensure_installed = { "lua_ls", "ts_ls" },
            -- In 2026, mason-lspconfig can automatically call vim.lsp.enable()
            automatic_enable = true, 
        },
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            -- 1. Get completion capabilities
            local capabilities = require("cmp_nvim_lsp").default_capabilities()

            -- 2. Use native vim.lsp.config instead of lspconfig[server].setup
            -- This merges your custom settings with the defaults from nvim-lspconfig
            vim.lsp.config("lua_ls", {
                capabilities = capabilities,
                settings = {
                    Lua = {
                        diagnostics = { globals = { "vim" } },
                    },
                },
            })

            vim.lsp.config("ts_ls", {
                capabilities = capabilities,
            })

            -- 3. Explicitly enable the servers (required in Nvim 0.11+)
            vim.lsp.enable({ "lua_ls", "ts_ls" })

            -- 4. Set up standard keymaps via the LspAttach autocommand
            vim.api.nvim_create_autocmd("LspAttach", {
                callback = function(args)
                    local opts = { buffer = args.buf }
                    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
                    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
                    vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
                    vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
                end,
            })
        end,
    },
}

