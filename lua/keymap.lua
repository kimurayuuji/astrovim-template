vim.keymap.set("v", "<Leader>*", function()
  -- ヤンク（選択範囲をコピー）
  vim.cmd("normal! y")

  -- レジスタから取得
  local selected = vim.fn.getreg("\"")

  -- エスケープして単語境界で囲む
  local escaped = vim.fn.escape(selected, "\\")
  vim.fn.setreg("/", "\\<" .. escaped .. "\\>")
  vim.cmd("set hlsearch")
end, { noremap = true, silent = true, desc = "Search selected text" })
