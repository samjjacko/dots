return {
  {
    "dense-analysis/ale",
    event = "VeryLazy", -- Or your preferred event
    config = function()
      -- Optional: Configure ALE
      require("ale").setup({
        -- Example: Enable hover functionality
        lsp = {
          hover = {
            -- Enable mouse hovering
            enabled = true,
            --  You can customize the display further here
          },
          -- Example: Enable symbol search
          symbol_search = {
            enabled = true,
          },
          -- Example: Enable refactoring
          refactor = {
            enabled = true,
          },
        },
        -- Example: Configure linting on save
        lint_on_the_fly = {
          enabled = true,
        },
        -- Example: Set a different command for diagnostics
        -- command = "eslint_d",

        -- Example: Use a different sign for warnings
        -- signs = { warning = "" }

        -- Add more configurations as needed
      })
    end,
  },
}
