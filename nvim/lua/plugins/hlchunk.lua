return {
  "shellRaining/hlchunk.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    require("hlchunk").setup({
      chunk = {
        enable = true,
        style = {
          { fg = "#ff5ef1" },
          { fg = "#ff6e5e" },
        },
      },
      indent = {
        enable = true,
        chars = {
          "│",
        },
        style = {
          "#3c4048",
          --   "#ff5ef1",
          --   "#ffbd5e",
          --   "#5ef1ff",
          --   "#ff6e5e",
          --   "#5eff6c",
          --   "#bd5eff",
          --   "#5ea1ff",
        },
      },
      -- line_num = {
      --   enable = true,
      -- },
      -- blank = {
      --   enable = true,
      --   chars = {
      --     " ",
      --     "․",
      --     "⁚",
      --     "⁖",
      --     "⁘",
      --     "⁙",
      --   },
      --   style = {
      --     "#ff5ef1",
      --     "#ffbd5e",
      --     "#5ef1ff",
      --     "#ff6e5e",
      --     "#5eff6c",
      --     "#bd5eff",
      --     "#5ea1ff",
      --   },
      -- },
    })
  end,
}
