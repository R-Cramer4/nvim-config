require "opts"
require "launch"

-- plugins spec here
spec("plugins.colorscheme")
spec("plugins.treesitter")
spec("plugins.telescope")
spec("plugins.lualine")
spec("plugins.lsp-zero")
spec("plugins.mason")
spec("plugins.indent-blankline")
spec("plugins.autopairs")
spec("plugins.file-tree")
spec("plugins.comment")


require "plugins.lazy"
require "keymaps"
