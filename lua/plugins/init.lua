return {
	-- plugin ini merupakan penyedia library neovim lua
	{
		"nvim-lua/plenary.nvim",
		lazy = true,
	},
	-- plugin untuk java jdtls
	-- { "mfussenegger/nvim-jdtls", event = "BufRead" },
	-- snippets
	{
		"rafamadriz/friendly-snippets",
		event = "InsertEnter",
		config = function()
			require("luasnip.loaders.from_vscode").lazy_load()
			require("emha.snip")
		end,
	},
	-- snippets
	{
		"L3MON4D3/LuaSnip",
		dependencies = {
			"rafamadriz/friendly-snippets",
			config = function()
				require("luasnip.loaders.from_vscode").lazy_load()
			end,
		},
		opts = {
			history = true,
			delete_check_events = "TextChanged",
		},
      -- stylua: ignore
      keys = {
        { "<tab>", function() require("luasnip").jump(1) end, mode = "s" },
        { "<s-tab>", function() require("luasnip").jump(-1) end, mode = { "i", "s" } },
      },
	},
}
