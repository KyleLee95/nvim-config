local status_ok, dashboard = pcall(require, 'dashboard')
if not status_ok then
	return
end

dashboard.setup({
  theme = 'doom',
  config = {
    header = {
'kkkkkOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOkkkkkkkkkkkkkkxxxxxxxxxx',
'kOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO00000000000000000OOOOOOOOOOOOOOOOOOOOOOOOOOOkkkkkkkkkkkkxxxxxxxxxxx',
'OOOOOOOOOOOOOOOOOOOOOOO00000OOOOkkkxxxdddddddddxxkkOO00000000OOOOOOOOOOOOOOOOOOOkkkkkkkkkkkkkxxxxxxxx',
'OOOOOOOOOOOOOOO0OOkkxxdddooooollcccc:::::::::::::cccloxkO000000OOOOOOOOOOOOOOOOOkkkkkkkkkkkkkkxxxxxxx',
'OOOOOOOOOOOOOkdlc:;,,,,,`,:lxkkxdolcc:::::::::::::::;;;:lodxkkOOOOOOOOOOOOOOOOOOOOkkkkkkkkkkkkxxxxxxx',
'OOOOOOOOO0Odc`;..``````:dk000000OOkdolc::::::;;;;;;;;;;::ccllooddddxxxxxxxdddxxxxxxkkkkkkkkkkkxxxxxxx',
'OOOOOOO0Od;`......````;oO0000OOOkkxxxxddolc::;;;;;;;;;;;;::cccllllooooollllccccccc:cccloxkkkkkkkxxxxx',
'OOOOOO0kc``........`.`ck000Okkxxddddoooooooollc::;;;;;;;;;:::cccllllllooollllccccc:::::;;:lxkkkkkkxkxx',
'OOOOO0k:...`........`lO0OOkxdooollllllllllllllllc:::;;;;;;::::cccllllllloolllllcccc::::::;;okkkkkkxxxx',
'OOOO0Oc....`....'..'ckOkxdollccccccccccccccccccccc:::::;;;:::::ccccllllllolllllcccc::::::;,:dkkkxkxxx',
'OO0O0d,....`....``.;xOkdollllllllllllllllllcccccccc::::::::::::cccccllllllllllllcccc::::;`.`lxxxxxxxx',
'OOO0Oc.`````...`.`lkxollllooooooddddddxxdddddooollllcccc::::::ccccccllllllllllllccc::;`....;oddxxxxx',
'OOO0kw:````....`.;dxollloooodddxxxxxxkkkkxxkkkkxxxxxddoollccc::ccccccllllllllllllcc;`......,lddddddd',
'OOO0kc`,,`````..:dolloooddxxxxkkkkkkkkkkkkkkkkkkkkkkkkkxxxddolcccccccllllllllllc;`.........:odddodd',
'O0O0Ol,,,,,`````:ooooddxxxkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkxddolllcccccllc;,............,loooooo',
'00000x:,;,,,,```.;loodxxxkkkkkkkOOOOOOOkOOOOOkkkkkkkkkkkkkkkkkkkkkkkkkxxdo:;,...............`:oooooo',
'0O000Od:;;;;,,,``,lodxxkkkkkOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO0000000Oxo:,...................,looooo',
'OO0O000xc;;;;;,,`,cdxkkkkOOOOOOOOOOOO000OO0000000000000000000KKK0kdlc,`......................`cooooo',
'OOOOO000Odc;;;;;;,;okkOOOOO00000000000000000000000000KKKKKK0Oxoc;`............................:ddddo',
'OOO0OOOOOOkoc::;;;;cxOO0000000000KKKKKKKKKKKKKKKKKKKK0Oxdlc;,................................`cxxxdd',
'OOOOOOOOOOkkxdolc:;;lk000KKKKKKKKKKKKKKKKK00Okkxdoll:;,`....................................`:dkkxxd',
'OOOOOOOOOOOkkxdddoc:;:loooddddddddddoollcc:;,,`............................................,coxxxxxx',
'OOOOOOOOOOkkkkxxdddolc:;,,`````````.....................................................`;clodxxxxxx',
'OOOOOOOOkkkkOOkkxxddooolc:;;,,,`````````````.........................................`;:cllloxxxxxxx',
'OOOOOOOOkkkkkOkkkkkxxddoooolc:;,,,,,````````````.................................,;:cllllloddxxxxxxd',
'OOOOOOOOkkkkkkkkkkkkkxxxddoddddol:;,,,,,,``````````````....................`,;:cloooolllooddddxddddd',
'OOOOOOOOkkkkkkkkkkkkkkkkkxxxxxxxxxxdolc:;,,,,`````````````........``,,;;:cloodoooolllooodddddddddddd',
'OOOOOOkkkkkkkkkkkkkkkkkkkkkkkxxkkkkkOOkkxdollcc::::::::;;::::::cclloooddddoooooooooddddooooddddddxxx',
'OOOOOOkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkOOOOOOOOOOkkkxxxxxxxxxxxxdddddddddooodddddddddddddooooddddxxxxxx',
'OOOOOOOkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkOOOOOOO0OOOOOOOOkkkkkkxxxxxxxxxxxxxxxxxxdddddddddddddxxxxxxxxx',
'OOOOOOkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkOOOOOOOOOOOOOOOOOOOOOOOkkkkkkkkxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
	}, --your header
    center = {
      {
        icon = ' ',
        icon_hl = 'Title',
        desc = 'Find File           ',
        desc_hl = 'String',
        key = 'b',
        keymap = ', f f',
        key_hl = 'Number',
        action = 'lua print(2)'
      },
    },
    footer = {}  --your footer
  }
})

