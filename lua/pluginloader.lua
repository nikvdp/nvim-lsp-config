function gen_vimplug(path, config)
  out = string.format("call plug#begin('%s')\n", path)
  for _, v in ipairs(config) do
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

