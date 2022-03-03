local status_ok, luasnip = pcall(require, "luasnip")
if not status_ok then
	return
end

require("luasnip/loaders/from_vscode").load{
  paths = "~/.config/nvim/lua/user/cp-snippets/"
}

luasnip.filetype_extend("typescript", {"javascript"})
