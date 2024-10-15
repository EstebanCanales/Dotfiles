return {
  {
    "nvim-telescope/telescope.nvim",
    opts = function(_, opts)
      local actions = require "telescope.actions"

      opts.defaults = {
        file_ignore_patterns = {
          "node_modules",
          "package-lock.json",
          "yarn.lock",
          "bun.lockb",
        },
        prompt_prefix = "𝒇 ",
        layout_strategy = "horizontal", -- Use horizontal layout
        sorting_strategy = "ascending",

        winblend = 0, -- No transparency
        results_title = false, -- Remove the "Results" title

        borderchars = {
          prompt = { "─", " ", "─", " ", "─", " ", " ", "─" }, -- Top border for the prompt only
          results = { "─", " ", " ", " ", " ", " ", " ", " " }, -- Borders for the preview (top and sides)
          preview = { "─", " ", "─", " ", " ", " ", " ", "─" }, -- Borders for the preview (top and sides)
        },
        mappings = {
          i = {
            ["<C-Down>"] = actions.cycle_history_next,

            ["<C-Up>"] = actions.cycle_history_prev,
            ["<C-f>"] = actions.preview_scrolling_down,

            ["<C-b>"] = actions.preview_scrolling_up,
          },
          n = {
            ["q"] = actions.close,
          },
        },
      }

      -- Load the fzf extension for fast searches
      require("telescope").load_extension "fzf"

      -- Add hidden files and no-ignore options to file search and live_grep
      opts.pickers = {
        find_files = {
          find_command = { "rg", "--files", "--hidden", "--no-ignore", "--iglob", "!.git/" },
        },
        live_grep = {
          additional_args = function()
            return { "--hidden", "--no-ignore" }
          end,
        },
      }
      return opts
    end,

    dependencies = {
      {
        "nvim-telescope/telescope-live-grep-args.nvim",
        version = "^1.0.0",
        config = function()
          require("telescope").load_extension "live_grep_args"
        end,
      },
      {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
        config = function()
          require("telescope").load_extension "fzf"
        end,
      },
    },
    config = function(_, opts)
      require("telescope").setup(opts)

      vim.keymap.set("n", "<leader>fg", ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>")
    end,
  },
}
