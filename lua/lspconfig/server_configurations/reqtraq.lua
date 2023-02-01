local util = require 'lspconfig.util'

local root_files = {
  'reqtraq_config.json',
}

local default_capabilities = {
  offsetEncoding = { 'utf-8', 'utf-16' },
}

return {
  default_config = {
    cmd = { 'reqtraq', 'lsp' },
    filetypes = { 'c', 'cpp', 'go' },
    root_dir = function(fname)
      return util.root_pattern(unpack(root_files))(fname) or util.find_git_ancestor(fname)
    end,
    single_file_support = true,
    capabilities = default_capabilities,
  },
  commands = { },
  docs = {
    description = [[ TODO(javier-varez): Add description ]],
    default_config = {
      root_dir = [[
        root_pattern(
          'reqtraq_config.json',
        )
      ]],
      capabilities = [[default capabilities, with offsetEncoding utf-8]],
    },
  },
}
