    
-- generates Plug commands for use by vim-plug
-- plugin_list should be a table suitable for passing to vim-plug.
-- you can use a nested table to pass in the second parameter to vimplug's 
-- Plug command. These should be STRINGS!
-- Example:
--  plugins = {
--    "hrsh7th/nvim-compe",
--    {"nvim-treesitter/nvim-treesitter", "{'do': ':TSUpdate'}"},
--  }
local function gen_vimplug(path, plugin_list)
  -- adapted from https://github.com/junegunn/vim-plug/issues/912#issuecomment-559973123
  out = string.format("call plug#begin('%s')\n", path)
  for _, v in ipairs(plugin_list) do
    if type(v) == 'string' then
      out = out .. string.format("  Plug '%s'\n", v)
    elseif type(v) == 'table' then
      local p = v[1]
      assert(p, 'Must specify package as first index.')
      v[1] = nil
      out = out .. string.format("  Plug '%s', %s\n", p, v[2])
      v[1] = p
    end
  end
  out = out .. "call plug#end()\n"
  return out
end

-- loads the given plugin list using vim-plug by running it as vimscript
function Load_plugins(plugins)
    local install_plugin_path = vim.fn.stdpath("data") .. "/plugged"
    local viml_pluglist = gen_vimplug(install_plugin_path, plugins)
    -- print([[echom "Loading plugins: ]] .. viml_pluglist .. [["]])
    return vim.cmd(viml_pluglist)
end
