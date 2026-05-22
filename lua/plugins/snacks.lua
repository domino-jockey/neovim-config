local header = [[
                                             ◢◣                      
      ◢████◣ ◢██████◤           ◥█████◣      ◥██◤             v0.12.2
     ◢██████◣◥█████◤             ◥█████◣ ◣                           
     ◢███████◣◥██◤ ◢████████◤◢███◣◥█████◣███ ███◣   ◢███◣████◣████◣  
    ◢█◣◥████████◤  ◢███◤    ◢█████◣◥████████ █████ █████◥████◥█████  
   ◢███◣◥██████◤ ◢████████◤◢██◤ ◥██◣◥███████ █████ █████ ████ █████  
 ◢██████◤◥█████◤ ◢███◤    ◢███◣ ◢███◣◥██████ █████ █████ ████ █████◣ 
◢██████◤  ◥███◤◢█████████◣◥█████████◤ ◥████◤ █████ █████ ████ ██████◣

_______________________________
]]
local board_normal = {
    width = 12,
    enabled = true,
    preset = {
		header = header,
		-- Remove the startup section from the default preset
		keys = {
			{ key = "f", desc = "f̲ind file",    action = ":lua Snacks.picker.files()" },
			{ key = "n", desc = "n̲ew file",     action = ":enew" },
			{ key = "g", desc = "g̲rep text",    action = ":lua Snacks.picker.grep()" },
			{ key = "r", desc = "r̲ecent files", action = ":lua Snacks.picker.recent()" },
			{ key = "c", desc = "c̲onfig",       action = ":cd)" },
			{ key = "q", desc = "q̲uit",         action = ":qa" },
		},
    },
    formats = {
		key = { "" },
    },
    sections = {
		{ section = "header" },
		{ section = "keys", gap = 1 },
    },
}

require("snacks").setup({
	indent = { enabled = true },
	-- picker = { enabled = true },
	scroll = { enabled = true },
	-- dashboard = board_normal,
})
