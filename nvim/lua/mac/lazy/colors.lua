function ColorMyPencils(color)
	color = color or "catppuccin-frappe"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end


return {

	{
		"catppuccin/nvim",
		name = "catppuccin",
		config = function()
			require('catppuccin').setup({
                flavour = "frappe",
				disable_background = true,
				styles = {
					italic = false,
				},
			})

			ColorMyPencils();
		end
	},
    {
        "sainnhe/gruvbox-material",
        name = "gruvbox",
    },
}

