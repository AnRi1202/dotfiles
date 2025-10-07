return {
  -- Mason: tool installer
  {
    "williamboman/mason.nvim",
    config = true,
  },

  -- Mason-lspconfig: installs LSP servers (names must match lspconfig server names)
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim" },
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "pyright",
          "clangd",
          "vhdl_ls",
          -- ⚠️ SystemVerilog は環境で名前が違うことがある（後述）
          -- "verible_verilog_ls",
        },
      })
    end,
  },

  -- nvim-lspconfig: provides server configs; Neovim 0.11+ uses vim.lsp.config/enable
  {
    "neovim/nvim-lspconfig",
    dependencies = { "williamboman/mason-lspconfig.nvim" },
    config = function()
      -- Lua
      vim.lsp.config("lua_ls", {
        settings = {
          Lua = {
            runtime = { version = "LuaJIT" },
            diagnostics = { globals = { "vim" } },
            workspace = {
              checkThirdParty = false,
              library = vim.api.nvim_get_runtime_file("", true),
            },
            telemetry = { enable = false },
          },
        },
      })

      -- Python
      vim.lsp.config("pyright", {
        settings = {
          python = {
            analysis = {
              typeCheckingMode = "basic", -- "strict" も可
            },
          },
        },
      })

      -- C/C++
      vim.lsp.config("clangd", {
        cmd = { "clangd", "--background-index", "--clang-tidy" },
      })

      -- VHDL
      vim.lsp.config("vhdl_ls", {})

      -- 有効化はまとめて
      vim.lsp.enable({ "lua_ls", "pyright", "clangd", "vhdl_ls" })
    end,
  },
}
