return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        tailwindcss = {
          filetypes = {
            "html",
            "css",
            "scss",
            "javascript",
            "javascriptreact",
            "typescript",
            "typescriptreact",
            "vue",
          },
          init_options = {
            userLanguages = {
              eelixir = "html-eex",
              eruby = "erb",
              vue = "html",
            },
          },
          settings = {
            tailwindCSS = {
              classAttributes = { "class", "className", "classList", "ngClass" },
              lint = {
                cssConflict = "warning",
                invalidApply = "error",
                invalidConfigPath = "error",
                invalidScreen = "error",
                invalidTailwindDirective = "error",
                invalidVariant = "error",
                recommendedVariantOrder = "warning",
              },
              validate = true,
              experimental = {
                classRegex = {
                  { "class\\s*:\\s*['\"]([^'\"]*)['\"]", "[\"'`]([^\"'`]*).*?[\"'`]" },
                  { ":\\s*['\"]([^'\"]*)['\"]", ":\\s*[\"'`]([^\"'`]*).*?[\"'`]" },
                },
              },
            },
          },
        },
      },
    },
  },
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      table.insert(opts.ensure_installed, "tailwindcss-language-server")
      table.insert(opts.ensure_installed, "vue-language-server")
    end,
  },
}
