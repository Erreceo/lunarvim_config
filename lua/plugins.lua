lvim.plugins = {
  "jose-elias-alvarez/typescript.nvim",
  { "mxsdev/nvim-dap-vscode-js", requires = { "mfussenegger/nvim-dap" } },
  "Mofiqul/dracula.nvim",
  { "microsoft/vscode-js-debug", opt = true, run = "npm install --legacy-peer-deps && npm run compile" },
  "lvimuser/lsp-inlayhints.nvim",
  "mattn/webapi-vim",
  "windwp/nvim-ts-autotag",
  "mfussenegger/nvim-jdtls",
  { "christianchiarulli/telescope-tabs", branch = "chris" },
  {
    "zbirenbaum/copilot.lua",
    event = { "VimEnter" },
    config = function()
      vim.defer_fn(function()
        require("copilot").setup {
          plugin_manager_path = os.getenv "LUNARVIM_RUNTIME_DIR" .. "/site/pack/packer",
        }
      end, 100)
    end,
  },
  {
    "zbirenbaum/copilot-cmp",
    after = { "copilot.lua" },
    config = function()
      require("copilot_cmp").setup()
    end,
  }, {
    "nacro90/numb.nvim",
    event = "BufRead",
    config = function()
      require("numb").setup {
        show_numbers = true, -- Enable 'number' for the window while peeking
        show_cursorline = true, -- Enable 'cursorline' for the window while peeking
      }
    end,
  }, {
    "wakatime/vim-wakatime"
  }, {
    "olexsmir/gopher.nvim"
  }, {
    "leoluz/nvim-dap-go"
  }, {
    "christoomey/vim-tmux-navigator"
  }, {
    "digitaltoad/vim-pug"
  }
}
