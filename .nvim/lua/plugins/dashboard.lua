local function split(inputstr)
	local sep = "\n"
	local t = {}
	for str in string.gmatch(inputstr, "([^" .. sep .. "]+)") do
		table.insert(t, str)
	end
	return t
end

return {
	"nvimdev/dashboard-nvim",
	event = "VimEnter",
	config = function()
		require("dashboard").setup {
			shortcut_type = "number",
			hide = { tabline = true },
			config = {
				-- week_header = { enable = true },
				shortcut = {
					{ desc = '󰊳 Update ', group = '@variable', key = 'u', action = 'Lazy update' },
					{ desc = ' Find file ', group = '@variable', key = 'f', action = 'Telescope find_files' },
					{ desc = ' Find word ', group = '@variable', key = 'g', action = 'Telescope live_grep' },
					{ desc = 'Configure LSP ', group = '@variable', key = 'c', action = 'ToggleServer' },
					{ desc = " New File", group = '@variable', key = "n", action = "enew", },
				},
				packages = { enable = false },
				header = split [[
                                               ..                                                   
                                              :*--.                                                 
                                            .*##+..::                                               
                                         -==#####+   -:              .                              
                                      .:###+..####+.   :-:.      ::=#.::                            
                            :+=::   -*######=  .:*#*:     .:..:=#####*= ::. .==-.                   
                          -*##-  .:*#########=    -#+.      .+#########-  .-##*..:                  
                       .*######-    :##########=    .==        -#######*:    :*#- :-:               
                    .-#########*      -#########*.      .        .+#####+.      +*-    ::.          
                  :+############-       .-=+*#####+.               .-*####+.      -+-.      .       
              .:=*###############=           .-+*###+.                 .:=+*+-.     .==:            
       .-+*#######################*+-.            .:+###*-.                 ....       ...          
""
	 NEOVIM - Bright Systems 


         ]],
				footer = {}
			},
		}
	end,
	dependencies = { { "nvim-tree/nvim-web-devicons" } },
}
