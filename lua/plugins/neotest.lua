return {
  "nvim-neotest/neotest",
  dependencies = {
    "nvim-neotest/nvim-nio",
    "nvim-lua/plenary.nvim",
    "antoinemadec/FixCursorHold.nvim",
    "nvim-treesitter/nvim-treesitter",
    "jfpedroza/neotest-elixir"
  },
  config = function()
    require("neotest").setup({
      adapters = {
        require("neotest-elixir")({
          mix_task = {"test"},
          extra_formatters = {"ExUnit.CLIFormatter", "ExUnitNotifier"},
          extra_block_identifiers = {"test_with_mock"},
          args = {"--trace"},
          write_delay = 1000,
        }),
      }
    })
  end,
}
