vim.opt.termguicolors = true
vim.opt.winblend = 0 -- ウィンドウの不透明度
vim.opt.pumblend = 0 -- ポップアップメニューの不透明度

-- クリップボード
vim.opt.clipboard = "unnamedplus"

-- 改行コード
vim.api.nvim_create_autocmd("TextChanged", {
  pattern = "*",
  callback = function()
    local lines = vim.api.nvim_buf_get_lines(0, 0, -1, false)
    for _, line in ipairs(lines) do
      if line:find("\r") then
        local ok, _ = pcall(function()
          vim.cmd("silent! %s/\\r//g")
        end)
        break
      end
    end
  end,
})

