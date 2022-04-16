local telescope = require("telescope")

telescope.load_extension("media_files")

telescope.setup {
    pickers = {
        buffers = {
            theme = "dropdown"
        }
    }
}
