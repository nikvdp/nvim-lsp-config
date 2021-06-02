vim.o.completeopt = "menuone,noselect"

require'compe'.setup {
    enabled = true,
    autocomplete = true,
    debug = false,
    min_length = 1,
    preselect = 'enable',
    throttle_time = 80,
    source_timeout = 200,
    incomplete_delay = 400,
    max_abbr_width = 100,
    max_kind_width = 100,
    max_menu_width = 100,
    documentation = true,

    source = {
        path = {kind = "   (Path)"},
        buffer = {kind = "   (Buffer)"},
        calc = {kind = "   (Calc)"},
        vsnip = {kind = "   (Snippet)"},
        nvim_lsp = {kind = "   (LSP)"},
        -- nvim_lua = {kind = "  "},
		nvim_lua = false,
        spell = {kind = "   (Spell)"},
        tags = false,
        vim_dadbod_completion = true,
        -- snippets_nvim = {kind = "  "},
        -- ultisnips = {kind = "  "},
        treesitter = {kind = "  "},
        emoji = {kind = " ﲃ  (Emoji)", filetypes={"markdown", "text"}}
        -- for emoji press : (idk if that in compe tho)
    }
}

local t = function(str)
    return vim.api.nvim_replace_termcodes(str, true, true, true)
end

local check_back_space = function()
    local col = vim.fn.col('.') - 1
    if col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') then
        return true
    else
        return false
    end
end

