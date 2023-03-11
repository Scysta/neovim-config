--| Mappings using Which-Key |--
local wk = require("which-key")

wk.register({
    f = {
		name = "fzf",
		f = { "<CMD>lua require('fzf-lua').files()<CR>", "Find Files" },
		c = { "<CMD>lua require('fzf-lua').files({ cwd = '~/.config' })<CR>", "Configuration Files" },
		o = { "<CMD>lua require('fzf-lua').oldfiles()<CR>", "Open Old Files" },
		h = { "<CMD>lua require('fzf-lua').help_tags()<CR>", "Help Tags" },
		b = { "<CMD>lua require('fzf-lua').buffers()<CR>", "Buffers" },
		t = { "<CMD>lua require('fzf-lua').colorschemes()<CR>", "Colorschemes" },
		k = { "<CMD>lua require('fzf-lua').keymaps()<CR>", "Keymaps" },
		},

    z = {
		name = "zen",
		z = { "<CMD>lua require('zen-mode').toggle()<CR>", "Toggle Zen Mode" },
    },

	l = {
		l = { "<CMD>lua require('lsp_lines').toggle()<CR>", "Toggle LSP Lines" },
	},

	h = { "<CMD>nohls<CR>", "Disable Search Highlight" },
}, { prefix = "<LEADER>" })
