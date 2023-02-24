local status_ok, dashboard = pcall(require, "dashboard")
if not status_ok then
	return
end

dashboard.setup({
	theme = "doom",
	config = {
		header = {
			"kkkkkOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOkkkkkkkkkkkkkkxxxxxxxxxxx",
			"kOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO00000000000000000OOOOOOOOOOOOOOOOOOOOOOOOOOOkkkkkkkkkkkkxxxxxxxxxxx",
			"OOOOOOOOOOOOOOOOOOOOOOO00000OOOOkkkxxxdddddddddxxkkOO00000000OOOOOOOOOOOOOOOOOOOkkkkkkkkkkkkkxxxxxxxx",
			"OOOOOOOOOOOOOOO0OOkkxxdddooooollcccc:::::::::::::cccloxkO000000OOOOOOOOOOOOOOOOOkkkkkkkkkkkkkkxxxxxxx",
			"OOOOOOOOOOOOOkdlc:;,,,,,`,:lxkkxdolcc:::::::::::::::;;;:lodxkkOOOOOOOOOOOOOOOOOOOOkkkkkkkkkkkkxxxxxxx",
			"OOOOOOOOO0Odc`;..``````:dk000000OOkdolc::::::;;;;;;;;;;::ccllooddddxxxxxxxdddxxxxxxkkkkkkkkkkkxxxxxxx",
			"OOOOOOO0Od;`......````;oO0000OOOkkxxxxddolc::;;;;;;;;;;;;::cccllllooooollllccccccc:cccloxkkkkkkkxxxxx",
			"OOOOOO0kc``........`.`ck000Okkxxddddoooooooollc::;;;;;;;;;:::cccllllllooollllccccc:::::;;:lxkkkkkkxxx",
			"OOOOO0k:...`........`lO0OOkxdooollllllllllllllllc:::;;;;;;::::cccllllllloolllllcccc::::::;;okkkkkkxxx",
			"OOOO0Oc....`...." .. "ckOkxdollccccccccccccccccccccc:::::;;;:::::ccccllllllolllllcccc::::::;,:dkkkxkx",
			"OO0O0d,....`....``.;xOkdollllllllllllllllllcccccccc::::::::::::cccccllllllllllllcccc::::;`.`lxxxxxxxx",
			"OOO0Oc.`````...`.`lkxollllooooooddddddxxdddddooollllcccc::::::ccccccllllllllllllccc::;`....;oddxxxxxx",
			"OOO0kw:````....`.;dxollloooodddxxxxxxkkkkxxkkkkxxxxxddoollccc::ccccccllllllllllllcc;`......,ldddddddd",
			"OOO0kc`,,`````..:dolloooddxxxxkkkkkkkkkkkkkkkkkkkkkkkkkxxxddolcccccccllllllllllc;`.........:odddddddd",
			"O0O0Ol,,,,,`````:ooooddxxxkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkxddolllcccccllc;,............,loooooooo",
			"00000x:,;,,,,```.;loodxxxkkkkkkkOOOOOOOkOOOOOkkkkkkkkkkkkkkkkkkkkkkkkkxxdo:;,...............`:ooooooo",
			"0O000Od:;;;;,,,``,lodxxkkkkkOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO0000000Oxo:,...................,loooooo",
			"OO0O000xc;;;;;,,`,cdxkkkkOOOOOOOOOOOO000OO0000000000000000000KKK0kdlc,`......................`coooooo",
			"OOOOO000Odc;;;;;;,;okkOOOOO00000000000000000000000000KKKKKK0Oxoc;`............................:ddddoo",
			"OOO0OOOOOOkoc::;;;;cxOO0000000000KKKKKKKKKKKKKKKKKKKK0Oxdlc;,................................`cxxxddd",
			"OOOOOOOOOOkkxdolc:;;lk000KKKKKKKKKKKKKKKKK00Okkxdoll:;,`....................................`:dkkxxdd",
			"OOOOOOOOOOOkkxdddoc:;:loooddddddddddoollcc:;,,`............................................,coxxxxxxx",
			"OOOOOOOOOOkkkkxxdddolc:;,,`````````.....................................................`;clodxxxxxxx",
			"OOOOOOOOkkkkOOkkxxddooolc:;;,,,`````````````.........................................`;:cllloxxxxxxxx",
			"OOOOOOOOkkkkkOkkkkkxxddoooolc:;,,,,,````````````.................................,;:cllllloddxxxxxxxd",
			"OOOOOOOOkkkkkkkkkkkkkxxxddoddddol:;,,,,,,``````````````....................`,;:cloooolllooddddxdddddd",
			"OOOOOOOOkkkkkkkkkkkkkkkkkxxxxxxxxxxdolc:;,,,,`````````````........``,,;;:cloodoooollloooddddddddddddd",
			"OOOOOOkkkkkkkkkkkkkkkkkkkkkkkxxkkkkkOOkkxdollcc::::::::;;::::::cclloooddddoooooooooddddooooddddddxxxx",
			"OOOOOOkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkOOOOOOOOOOkkkxxxxxxxxxxxxdddddddddooodddddddddddddooooddddxxxxxxx",
			"OOOOOOOkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkOOOOOOO0OOOOOOOOkkkkkkxxxxxxxxxxxxxxxxxxdddddddddddddxxxxxxxxxx",
			"OOOOOOkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkOOOOOOOOOOOOOOOOOOOOOOOkkkkkkkkxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
		}, --your header
		center = {
			{
				icon = " ",
				icon_hl = "Title",
				desc = "Find File",
				desc_hl = "String",
				key = "b",
				keymap = ", f f",
				key_hl = "Number",
				action = "lua print(2)",
			},
		},
		footer = {}, --your footer
	},
})
