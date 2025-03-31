return {
    {
      "nvim-neo-tree/neo-tree.nvim",
      opts = {
        filesystem = {
          filtered_items = {
            visible = true, -- 显示所有文件，包括隐藏文件
            hide_dotfiles = false, -- 不隐藏以 . 开头的文件
            hide_gitignored = false, -- 不隐藏 .gitignore 中的文件
          },
        },
      },
    },
  }