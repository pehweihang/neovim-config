local status_ok, filetype = pcall(require, "filetype")
if not status_ok then
	return
end

filetype.setup({
	overrides = {
		-- extensions = {
		-- 	-- Set the filetype of *.pn files to potion
		-- 	pn = "potion",
		-- },
		-- literal = {
		-- 	-- Set the filetype of files named "MyBackupFile" to lua
		-- 	MyBackupFile = "lua",
		-- },
		-- complex = {
		-- 	-- Set the filetype of any full filename matching the regex to gitconfig
		-- 	[".*git/config"] = "gitconfig", -- Included in the plugin
		-- },

		-- The same as the ones above except the keys map to functions
		-- function_extensions = {
		-- 	["cpp"] = function()
		-- 		vim.bo.filetype = "cpp"
		-- 		-- Remove annoying indent jumping
		-- 		vim.bo.cinoptions = vim.bo.cinoptions .. "L0"
		-- 	end,
		-- 	["pdf"] = function()
		-- 		vim.bo.filetype = "pdf"
		-- 		-- Open in PDF viewer (Skim.app) automatically
		-- 		vim.fn.jobstart("open -a skim " .. '"' .. vim.fn.expand("%") .. '"')
		-- 	end,
		-- },
		-- function_literal = {
		-- 	Brewfile = function()
		-- 		vim.cmd("syntax off")
		-- 	end,
		-- },
		function_complex = {
			["Dockerfile.*"] = function()
				vim.bo.filetype = "Dockerfile"
			end,
		},

		-- shebang = {
		-- 	-- Set the filetype of files with a dash shebang to sh
		-- 	dash = "sh",
		-- },
	},
})
