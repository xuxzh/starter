-- 在 ~/.config/nvim/lua/plugins/gitsigns.lua
return {
  "lewis6991/gitsigns.nvim",
  opts = {
    current_line_blame = true, -- 在当前行显示 blame 信息
    current_line_blame_opts = {
      virt_text = true,
      virt_text_pos = "eol", -- 在行尾显示
      delay = 1000,
      ignore_blank_lines = false,
    },
    current_line_blame_formatter = "<author>, <author_time:%Y-%m-%d> - <summary>",
  },
}
