return {
    "nvim-treesitter/nvim-treesitter",
    branch = "main", -- Using the new API
    build = ":TSUpdate",
    config = function()
        local ts = require("nvim-treesitter")

        -- 1. Initialize
        ts.setup()

        -- 2. List the parsers you want
        ts.install({ "lua", "vim", "vimdoc", "query", "markdown", "python", "javascript" })

        -- 3. The Defensive Autocommand
        vim.api.nvim_create_autocmd("FileType", {
            callback = function(args)
                local ft = vim.bo[args.buf].filetype
                
                -- Ignore list: UI plugins that don't need Treesitter
                local ignore = { "neo-tree", "TelescopePrompt", "lazy", "mason", "notify", "noice" }
                for _, name in ipairs(ignore) do
                    if ft == name then return end
                end

                -- Only start if a parser is actually installed for this language
                local lang = vim.treesitter.language.get_lang(ft) or ft
                if lang then
                    -- pcall (protected call) prevents the red error message if it fails
                    pcall(vim.treesitter.start, args.buf, lang)
                    
                    -- Optional: Enable indentation
                    pcall(function()
                        vim.bo[args.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
                    end)
                end
            end,
        })
    end,
}
