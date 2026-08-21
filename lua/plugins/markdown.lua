local markdownlint_config = vim.fs.joinpath(vim.fn.stdpath("config"), ".markdownlint-cli2.yaml")

local function prettier_args(_, ctx)
  local ft = vim.bo[ctx.buf].filetype
  if ft == "markdown" or ft == "markdown.mdx" then
    return { "--print-width", "140", "--prose-wrap", "always" }
  end
  return {}
end

return {
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters = {
        ["markdownlint-cli2"] = {
          prepend_args = { "--config", markdownlint_config },
        },
      },
    },
  },
  {
    "stevearc/conform.nvim",
    opts = {
      formatters = {
        prettier = {
          prepend_args = prettier_args,
        },
        ["markdownlint-cli2"] = {
          prepend_args = { "--config", markdownlint_config },
        },
      },
    },
  },
}
