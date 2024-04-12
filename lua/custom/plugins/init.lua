-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {

  {
    'kylechui/nvim-surround',
    version = '*', -- Use for stability; omit to use `main` branch for the latest features
    event = 'VeryLazy',
    config = function()
      require('nvim-surround').setup {
        -- Configuration here, or leave empty to use defaults
      }
    end,
  },

  {
    'CopilotC-Nvim/CopilotChat.nvim',
    branch = 'canary',
    dependencies = {
      { 'zbirenbaum/copilot.lua' }, -- or github/copilot.vim
      { 'nvim-lua/plenary.nvim' }, -- for curl, log wrapper
    },
    opts = {
      debug = true, -- Enable debugging
      -- See Configuration section for rest
    },
    -- default mappings
    mappings = {
      complete = {
        detail = 'Use @<Tab> or /<Tab> for options.',
        insert = '<Tab>',
      },
      close = {
        normal = 'q',
        insert = '<C-c>',
      },
      reset = {
        normal = '<C-l>',
        insert = '<C-l>',
      },
      submit_prompt = {
        normal = '<CR>',
        insert = '<C-m>',
      },
      accept_diff = {
        normal = '<C-S-y>',
        insert = '<C-S-y>',
      },
      yank_diff = {
        normal = 'gy',
      },
      show_diff = {
        normal = 'gd',
      },
      show_system_prompt = {
        normal = 'gp',
      },
      show_user_selection = {
        normal = 'gs',
      },
    },
  }, -- See Commands section for default commands if you want to lazy load on them
}
