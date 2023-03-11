return require("packer").startup(function(use)
    use "wbthomason/packer.nvim"

    -- Functionality
    use { "jdhao/better-escape.vim", event = "InsertEnter" }
    use {
	"phaazon/hop.nvim",
	branch = "v2",
	config = function()
	    require("hop").setup {}
	end
    }
    use {
	"windwp/nvim-autopairs",
	config = function()
	    require("nvim-autopairs").setup {}
	end
    }
    use {
	"kylechui/nvim-surround",
	tag = "*",
	config = function()
	    require("nvim-surround").setup {}
	end
    }
    use {
	"ibhagwan/fzf-lua",
	requires = { "nvim-tree/nvim-web-devicons" }
    }
	use {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig"
	}
	use {
		"https://git.sr.ht/~whynothugo/lsp_lines.nvim",
		config = function()
			require("lsp_lines").setup {}
		end
	}

    -- UI
    use {
	"nvim-lualine/lualine.nvim",
	requires = { "kyazdani42/nvim-web-devicons", opt = true },
	config = function()
	    require("lualine").setup {
		options = { theme = "moonfly" }
	    }
	end
    }
    use {
	"folke/which-key.nvim",
	config = function()
	    vim.opt.timeout = true
	    vim.opt.timeoutlen = 500
	    require("which-key").setup {}
	end
    }
    use {
	"folke/zen-mode.nvim",
	config = function()
	    require("zen-mode").setup {}
	end
    }
    use {
	"lukas-reineke/indent-blankline.nvim",
	config = function()
	    require("indent_blankline").setup {
			show_trailing_blankline_indent = false,
			max_indent_increase = 1
		}
	end
    }
	use {
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
		-- config = function()
		-- 	require("nvim-treesitter").setup {
		-- 		ensure_installed = {
		-- 			"c",
		-- 			"cpp",
		-- 			"html",
		-- 			"css",
		-- 			"python",
		-- 			"lua",
		-- 			"rust",
		-- 			"java",
		-- 			"scala"
		-- 		}
		-- 		highlight = {
		-- 			enable = true
		-- 		}
		-- 	}
		-- end
	}

    -- Colorschemes
    use "rebelot/kanagawa.nvim"
	use {
		"rose-pine/neovim",
		as = "rose-pine"
	}
end)
