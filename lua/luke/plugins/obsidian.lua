local obsidian_setup, obsidian = pcall(require, "obsidian")
if not obsidian_setup then
    return
end

-- configure obsidian.nvim
obsidian.setup({
    workspaces = {
        {
            name = "school",
            path = "/Users/lukiee/Documents/Obsidian Vault/school/",
        },
        {
            name = "personal",
            path = "/Users/lukiee/Documents/Obsidian Vault/personal/"
        }
    },
    completion = {
        nvim_cmp = true,
        min_chars = 3,
    },
    new_notes_location = "current_dir",
    mappings = {
        ["fd"] = {
            action = function()
                return require("obsidian").util.gf_passthrough()
            end,
            opts = { noremap = false, expr = true, buffer = true},
        },
        ["<cr>"] = {
            action = function ()
                return require("obsidian").util.smart_action()
            end,
            opts = { buffer = true, expr = true }, 
        }
    }
})
