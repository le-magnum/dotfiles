function ColorMyPencils(color)
    color = color or "tokyonight"
    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    vim.g.tokyonight_transparent_sidebar = true
    vim.g.tokyonight_transparent = true
    vim.api.nvim_set_hl(0, "LineNr", {fg = "#a9b1d6" })
    vim.api.nvim_set_hl(0, "LineNrAbove", {fg = "#a9b1d6" })
    vim.api.nvim_set_hl(0, "LineNrBelow", {fg = "#a9b1d6" })


end

ColorMyPencils()
