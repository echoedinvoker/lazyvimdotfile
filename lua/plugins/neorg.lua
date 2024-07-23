return {
  "nvim-neorg/neorg",
  build = ":Neorg sync-parsers",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {
    load = {
      ["core.defaults"] = {}, -- Loads default behaviour
      ["core.summary"] = {},
      ["core.concealer"] = {
        config = {
          icon_preset = "diamond",
          icons = {
            todo = {
              uncertain = {
                icon = "",
              },
            },
          },
        },
      }, -- Adds pretty icons to your documents
      ["core.dirman"] = { -- Manages Neorg workspaces
        config = {
          workspaces = {
            node = "~/notes/node",
            pomodoro = "~/notes/pomodoro",
            money = "~/notes/money",
            meaning = "~/notes/meaning",
            health = "~/notes/health",
            work = "~/notes/work",
            learnEng = "~/notes/learn-eng",
            tsc = "~/notes/tsc",
            redis = "~/notes/redis",
            svelte = "~/notes/svelte",
            svkit = "~/notes/svkit",
            threejs = "~/notes/threejs",
            rust = "~/notes/rust",
            devops = "~/notes/devops",
            d3 = "~/notes/d3",
            todo = "~/notes/todo",
            vuetdd = "~/notes/vuetdd",
            react = "~/notes/react",
            nodetrade = "~/notes/nodetrade",
            interview = "~/notes/interview",
            scss = "~/notes/scss",
            next = "~/notes/next",
            free = "~/notes/free",
            godot = "~/notes/godot",
            rn = "~/notes/rn",
            rn_p1 = "~/notes/rn-p1",
            dnd = "~/notes/dnd",
            sql = "~/notes/sql",
            plotly = "~/notes/ploty",
            langchain = "~/notes/langchain",
            omniverse = "~/notes/omniverse",
            miro = "~/notes/miro",
            plotlyjs = "~/notes/plotlyjs",
            microfrontend = "~/notes/microfrontend",
            other = "~/notes/other",
          },
          default_workspace = "node",
        },
      },
      ["core.export"] = {},
      ["core.export.markdown"] = {},
    },
  },
}
