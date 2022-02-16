
local function load_dashboard()
	vim.g.dashboard_custom_header = {
[[                                               .---.                    ]],
[[                                               `.   \                   ]],
[[                                                 \   \                  ]],
[[                                                  .   \                 ]],
[[                                                  |    |                ]],
[[  ..._  ___                                       |    |                ]],
[[ `."".`''''""--..___                              |    |                ]],
[[ ,-\  \             ""-...__         _____________/    |                ]],
[[ / ` " '                    `""""""""                  .                ]],
[[ \                                                      L               ]],
[[ (>                                                      \              ]],
[[/                                                         \             ]],
[[\_    ___..---.                                            L            ]],
[[  `--'         '.                                           \           ]],
[[                 .                                           \_         ]],
[[                _/`.                                           `.._     ]],
[[             .'     -.                                             `.   ]],
[[            /     __.-Y     /''''''-...___,...--------.._            |  ]],
[[           /   _."    |    /                ' .      \   '---..._    |  ]],
[[          /   /      /    /                _,. '    ,/           |   |  ]],
[[          \_,'     _.'   /              /''     _,-'            _|   |  ]],
[[                  '     /               `-----''               /     |  ]],
[[                  `...-'     LazyCat                           `...-'   ]],
[[                                                                        ]]
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
	}
end

load_dashboard()
