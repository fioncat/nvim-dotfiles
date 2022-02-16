
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
[[                  `...-'     @LazyCat                          `...-'   ]],
[[                                                                        ]]
	}

	vim.g.dashboard_custom_section = {
		find_frecency = {
			description = { " File frecency              SPC s r " },
			command = "Telescope frecency",
		},
		find_project = {
			description = { " Project find               SPC s p " },
			command = "Telescope project",
		},
		find_file = {
			description = { " File find                  SPC s f " },
			command = "Telescope find_files",
		},
	}
end

load_dashboard()
