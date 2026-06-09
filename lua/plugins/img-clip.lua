if true then
  return {}
end

-- return {
--   "HakonHarnes/img-clip.nvim",
--   event = "VeryLazy",
--   opts = {
--     default = {
--       dir = "~/Pictures", -- 默认目录作为后备
--     },
--   },
--   keys = {
--     -- 原有的快捷键不变
--     { "<leader>p", "<cmd>PasteImage<cr>", desc = "Paste image from system clipboard" },
--     -- 新增：粘贴到指定目录（需要提前设置目标目录）
--     {
--       "<leader>P",
--       function()
--         local target_dir = vim.fn.input("Save image to dir: ", vim.fn.getcwd() .. "/", "dir")
--         if target_dir ~= "" then
--           require("img-clip").paste_image({ dir = target_dir })
--         end
--       end,
--       desc = "Paste image to specific directory",
--     },
--   },
-- }
