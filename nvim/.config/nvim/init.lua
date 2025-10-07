-- lazy.nvim のブートストラップ
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup(require("plugins"))



-- -- 診断の見せ方
vim.diagnostic.config({
  virtual_text = true,     -- 行末にエラー文字
  underline = true,        -- 下線
  signs = true,            -- 左端のサイン
  update_in_insert = true, -- Insert中も更新
})

-- 基本設定
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.termguicolors = true
vim.opt.clipboard = "unnamedplus"
vim.opt.scrolloff = 5
-- カラースキーム
vim.opt.termguicolors = true
vim.cmd.colorscheme("catppuccin")

-- 透過を強制（links / 上書きを切る）
local function transparent()
  vim.cmd("hi clear Normal")
  vim.cmd("hi clear NormalNC")
  vim.cmd("hi clear NormalFloat")
  vim.cmd("hi clear FloatBorder")
  vim.cmd("highlight Normal guibg=NONE ctermbg=NONE")
  vim.cmd("highlight NormalNC guibg=NONE ctermbg=NONE")
  vim.cmd("highlight NormalFloat guibg=NONE ctermbg=NONE")
  vim.cmd("highlight FloatBorder guibg=NONE ctermbg=NONE")
end
-- 関数実行
transparent()

-- colorscheme 変更時にも維持
vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",
  callback = transparent,
})



vim.g.mapleader = " "  -- leaderをSpaceにする（まだなら）

vim.keymap.set("n", "<leader>t", ":NvimTreeToggle<CR>", {
  noremap = true,
  silent = true,
})
