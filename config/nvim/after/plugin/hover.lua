local hover = require("hover")

hover.setup {
    init = function ()
        require("hover.providers.lsp")
        require("hover.providers.gh")
        require("hover.providers.man")
        require("hover.providers.dictionary")
    end,
    preview_opts = {
        border = nil
    },
    title = true
}
