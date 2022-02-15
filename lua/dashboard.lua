
local function load_dashboard()
	vim.g.dashboard_custom_header = {
		[[     /\_____/\     ]],
 		[[    /  o   o  \    ]],
 		[[   ( ==  ^  == )   ]],
 		[[    )         (    ]],
 		[[   (           )   ]],
 		[[  ( (  )   (  ) )  ]],
		[[ (__(__)___(__)__) ]],
		[[                   ]],
		[[      LazyCat      ]]
	}

	vim.g.dashboard_custom_section = {
		find_frecency = {
			description = { " File frecency              comma f r " },
			command = "Telescope frecency",
		},
		find_project = {
			description = { " Project find               comma f p " },
			command = "Telescope project",
		},
		find_file = {
			description = { " File find                  comma f f " },
			command = "Telescope find_files",
		},
		file_new = {
			description = { " File new                   comma f n " },
			command = "DashboardNewFile",
		},
		find_word = {
			description = { " Word find                  comma f w " },
			command = "DashboardFindWord",
		},
	}
end

load_dashboard()
