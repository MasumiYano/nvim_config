-- import nvim-treesitter plugin safely
local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
  return
end

-- Adding custom parser configuration for FISH
local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.fish = {
  install_info = {
    url = "/Users/lukiee/dev/tree_sitter_fish",
    files = { "src/parser.c" },
    generate_requires_npm = false,
    requires_generate_from_grammar = false,
  },
  filetype = "fis",
}

-- configure treesitter
treesitter.setup({
  -- enable syntax highlighting
  highlight = {
    enable = true,
  },
  -- enable indentation
  indent = { enable = true },
  -- enable autotagging (w/ nvim-ts-autotag plugin)
  autotag = { enable = true },
  -- ensure these language parsers are installed
  ensure_installed = {
    "json",
    "javascript",
    "typescript",
    "tsx",
    "yaml",
    "html",
    "css",
    "markdown",
    "markdown_inline",
    "svelte",
    "graphql",
    "bash",
    "lua",
    "vim",
    "dockerfile",
    "gitignore",
    "python",
    "go",
    "fish",
  },
  -- auto install above language parsers
  auto_install = true,
})
