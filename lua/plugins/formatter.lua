-- https://github.com/mhartington/formatter.nvim

return {
    "mhartington/formatter.nvim",
    config = function()
        require("formatter").setup({
            -- Enable or disable logging
            logging = true,
            -- Set the log level
            log_level = vim.log.levels.WARN,

            filetype = {
                lua = {
                    require("formatter.filetypes.lua").stylua,
                },
                html = {
                    require("formatter.filetypes.html").prettier,
                },
                css = {
                    require("formatter.filetypes.css").prettier,
                },
                javascript = {
                    require("formatter.filetypes.javascript").prettier,
                },
                json = {
                    require("formatter.filetypes.json").prettier,
                },
                markdown = {
                    require("formatter.filetypes.markdown").prettier,
                },
                svelte = {
                    require("formatter.filetypes.svelte").prettier,
                },
                typescript = {
                    require("formatter.filetypes.typescript").prettier,
                },
                vue = {
                    require("formatter.filetypes.vue").prettier,
                },
                yaml = {
                    require("formatter.filetypes.yaml").prettier,
                },
                rust = {
                    require("formatter.filetypes.rust").rustfmt,
                },
                -- Use the special "*" filetype for defining formatter configurations on
                -- any filetype
                ["*"] = {
                    -- "formatter.filetypes.any" defines default configurations for any
                    -- filetype
                    require("formatter.filetypes.any").remove_trailing_whitespace,
                },
            },
        })

        require("keybindings.formatter-kb").basic()
    end,
}
