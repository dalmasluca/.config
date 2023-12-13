-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
--

vim.opt.relativenumber = true

lvim.format_on_save.enabled = true

vim.opt.wrap = true


formatters = require "lvim.lsp.null-ls.formatters"

formatters.setup {
  {
    command = "google-java-format",
    fyletype = { "java" },
  },
  {
    command = "gofmt",
    fyletype = { "go" },
  },
  {
    command = "goimports-reviser",
    typefile = { "go" },
  },
  {
    command = "goimports",
    typefile = { "go" },
  },
  {
    command = "ocamlformat",
    typefile = { "ml" },
  }
}

lvim.plugins = {
  {
    "danymat/neogen",
    dependencies = "nvim-treesitter/nvim-treesitter",
    config = true,
    -- Uncomment next line if you want to follow only stable versions
    version = "*"
  },
  {
    "scalameta/nvim-metals",
    dependencies = { "nvim-lua/plenary.nvim" }
  },
  {
    "L3MON4D3/LuaSnip",
    -- follow latest release.
    version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
    -- install jsregexp (optional!).
    build = "make install_jsregexp"
  }
}

require('neogen').setup {
  enabled = true,
}
