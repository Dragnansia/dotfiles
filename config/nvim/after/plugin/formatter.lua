local prettier = {
    function() 
        return {
            exe = "prettier",
            args = {"--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)), "--double-quote"},
            stdin = true
        }
    end
}

require('formatter').setup({
    filetype = {
        json = prettier,
        javascript = prettier,
        rust = {
            function()
                return {
                    exe = "rustfmt",
                    args = {"--emit=stdout", "--edition=2021"},
                    stdin = true
                }
            end
        },
    }
})

vim.api.nvim_exec([[
    augroup FormatAutogroup
        autocmd!
        autocmd BufWritePost * FormatWrite
    augroup END
]], true)
