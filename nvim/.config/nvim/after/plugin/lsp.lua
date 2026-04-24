-- lsp.lua
local lsp = require('lsp-zero').preset({
  name = 'minimal',
  set_lsp_keymaps = true,
  manage_nvim_cmp = true,
  suggest_lsp_servers = false,
})

-- Setup mason first
require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = { 'lua_ls', 'ts_ls', 'gopls'}, -- add your preferred servers here
  handlers = {
    -- This function is called for each server installed by mason-lspconfig
    -- It ensures that lsp-zero's default setup (which includes keymaps, etc.)
    -- is applied to each language server.
    function(server_name)
      require('lsp-zero').default_setup(server_name)
    end,
    -- Configure lua_ls specifically. This handler will be called when 'lua_ls' is processed.
    -- This is where you put server-specific settings.
    lua_ls = function()
      local lspconfig = require('lspconfig')
      lspconfig.ts_ls.setup({
    -- your existing config (on_attach, capabilities, etc.)
})
      lspconfig.lua_ls.setup(lsp.nvim_lua_ls()) -- Use lsp.nvim_lua_ls() for Neovim-specific settings
      lspconfig.gopls.setup({
        settings = {
          gopls = {
            analyses = {
              unusedparams = true,
            },
            staticcheck = true,
            gofumpt = true,
          },
        },
      })

      -- Optional: Add other general lua_ls settings here if needed
      -- lspconfig.lua_ls.setup({
      --   settings = {
      --     Lua = {
      --       workspace = {
      --         checkThirdParty = false, -- Example: disable checking third-party dependencies
      --       },
      --       completion = {
      --         callSnippet = 'Replace',
      --       },
      --     },
      --   },
      -- }, lsp.nvim_lua_ls()) -- Always pass lsp.nvim_lua_ls() if you want Neovim-specific features
    end,
  },
})

-- The lsp.setup() call should be last, as it finalizes the LSP setup.
lsp.setup()
