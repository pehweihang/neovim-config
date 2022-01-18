local status_ok, luasnip = pcall(require, "luasnip")
if not status_ok then
	return
end

luasnip.snippets = {all = {}, html = {}}

-- enable html snippets in javascript/javascript(REACT)
luasnip.snippets.javascript = luasnip.snippets.html
luasnip.snippets.javascriptreact = luasnip.snippets.html
luasnip.snippets.typescriptreact = luasnip.snippets.html
require("luasnip/loaders/from_vscode").load({include = {"html"}})


require("luasnip/loaders/from_vscode").load()
