pico-8 cartridge // http://www.pico-8.com
version 29
__lua__

__gfx__
00000000bbbbbbbbbbbbbbbb3333333333333333bbbbbbbbbbbbbbbbbbbbbbbbccccccccccccccccbbbbbbbbbb33333bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb
08888880bbbbbbbbbbbbbbbb3333333333333333bbbbbbbbbbbbbbbbbbbbbbbbccccccccccccccccbbbbb33b3333333bbbb3bbbbbbbbb33b3b3bb3bbbbb3bbbb
08822280bbbbbbbbbbbbbbbb3333333333333333bbbbbbbbbbbbbbbbbbbbbbbbccccccccccccccccbbbbb3333333333bbb33bbbbbbbbb3333333333bbb33bbbb
082800803b33bb333b33bbbb3333333333333333bbbbbb333b33bb333b33bbbbccccccc666ccccccbbb3b33333333333333333bbbbb3b33333333333b33333bb
080280803333333333333bbb3333333333333333bbbbb3444444244444443bbbccccc66bb36cccccbbb333333333333333333bbbbbb3333333333333b3333bbb
080028803333333333333bbb333333bbbb333333bbbb342aa4a4424a4a423bbbcccc6bbbbbb6ccccbb333333333333333333333bbbb3333333333333b333333b
088888803333333333333bbb33333bbbbbb33333bbb342222222242242243bbbccc6bbbbbbbb6cccb333333333333333333333bbbbbb3333333b3b33b333333b
022222203333333333333bbb33333bbbbbb33333bbb326666666666666623bbbccc6bbbbbbbb6cccbb333333333333333333333bbbbbbbbb333bb3b3bb33333b
bbbb3333333333333333bbbb33333bbbbbb33333bbbb6cccbbbbbbbbccc6bbbbccc63bbbbbb36cccbb333333cccccccc3333333bbb333333bbbbbbbbbb33333b
bbbb333333bbbb333333bbbb33333bbbbbb33333bbbb6cccbbbbbbbbccc6bbbbccc63bbbbbb46ccc33333333c6b3636c33333333bb33333bbbbbbbbbb333333b
bbb333333bbbbbb333333bbb333333bbbb333333bbb36cccbbbbbbbbccc63bbbccc643bbb3246ccc3333333363bbbb3633333333b3333333bbb3bbbb3333333b
bbb333333bbbbbb333333bbb3333333333333333bbb36cccbbbbbb33ccc63bbbccc6423b34446ccc3333333363bbbb3633333333bb33333bbb3333bbb33333bb
bbb333333bbbbbb333333bbb3333333333333333bbb36cccbbbbb333ccc63bbbccc6a44224a26ccc3333333363bbb3b633333333bb3333bbbbb33bbbb3333bbb
bbbb333333bbbbb33333bbbb3333333333333333bbbb6cccbbbb3333ccc6bbbbccc6244444426ccc333333336a23342633333b33b33333bbbbbbbbbb3333bbbb
bbb333333333bb3333333bbb3333333333333333bbb36cccbbb33333ccc63bbbcccc62222426cccc3b3333336224226c333333b3bb333333bbbbbbbbb33333bb
bbb333333333333333333bbb3333333333333333bbb36cccbbb33333ccc63bbbccccc666666cccccb3333333c66666cc33333b3bb333333bbbbbbbbb33333b3b
bbbb3333333333333333bbbb33333bbbbbb33333bbbb6cccccccccccccc6bbbbccc63bbbbbb36cccbb3b3333333333333333333bbb3b333b3b3bb3bbbbbbbbbb
bbb33333333333333333bbbb33333bbbbbb33333bbb36cccccccccccccc6bbbbccc63bbbbbb46cccbbbb333333333333333333bbbbbb333b333333333b333bbb
bb333333333333333333bbbb333333bbbb333333bb346cccccccccccccc6bbbbccc643bbb3246cccbbbb3333333333333333333bbbbb333b33333333333333bb
bbb333333333333333333bbb3333333333333333bbb366666666666666663bbb66c6423b34446cc6bbbb3333333333333333b33bbbbb333b333333333333b33b
bbbbbb3bbbbbbb3b3333bbbb3333333333333333bbbbbb3bbbbbbb3b3333bbbbb366a44224a2666bbbbbb33333333333bb33b3bbbbbbb33b33b33333bb33b3bb
bbbbbbbbbbbbbbbbbbbbbbbbbb333333333333bbbbbbbbbbbbbbbbbbbbbbbbbbbbb6244444426bbbbbb3333333333333bbbbb3bbbbb333bb33bb3b33bbbbb3bb
bbbbbbbbbbbbbbbbbbbbbbbbbbb3333333333bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb62222426bbbbbbbbb33b3b3333333bbbbbbbbbbbb3bb3bbbb3b33bbbbbbb
bbbbbbbbbbbbbbbbbbbbbbbbbbb3333333333bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb66666666bbbbbbbbbbbbb333333bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb
bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbccccccccccccccccccccccccccccccccbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb
bb33bbbbbbb33bbbbbbbbbbbbbbbbbbbccccccccccccccccccccc66cc66cccccbbbbbbbbbbbb9bbbbbbbb33b3b3bb3bbbbb3bbbbbbbbb33b3b3bb3bbbbb3bbbb
bbbbbbbbbbbbbbbbbbbbbbbbb33bbbbbccc666cccccccccccccccc6cc6ccccccbbb2244444494bbbbbbbb3333333333bbb33bbbbbbbbb3333333333bbb33bbbb
bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbcc666cccccccccccccccccccccccccccbb222299499494bbbbb3b33333333333333333bbbbb3b33333333333333333bb
bbbb33bbbbbbbbbbbbbbbbbbbbbbbbbbccccccccccccccccccccccccccccccccbb212222424444bbbbb333333333333333333bbbbbb333333333333333333bbb
bbbbbbbb33bbbbbbbbbbbbbbbbbbbbbbcccccccccccccccccc6cccccccccccccbb221244212221bbbb333333333333333333333bbb333333333333333333333b
33bbbbbbbbbbbbbbbbbbbbbbbbbbb33bcccccccccccccccccc66cccccccccc6cb33224111111133bb333333333333333333333bbb333333333333333333333bb
bbbbbbbbbbbbbb33bbbbbbbbbbbbbbbbccccccccccccccccccccccccccccccccbbbbbbbbbbbbbbbbbb33333bb333333b3b33333bbb333333333333333333333b
bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb333333bbbbbaaaaaaaaaaaaaaaabb33333bbb33333bbb33333bbb333333333333333333333b
bbbbbbbbbbbbbbbbbbbbbbbbbbbddbbbbbbddbbbbbb222bbbbb3331331333bbbaaaaaaaaaaaaaaaabb33333b333333bbb333333bbb333333333333333333333b
bbbbbbb94bbbbbbbbbb9bbbbbbd7ddbbbbd7ddbbbb22122bb33131333311333baa999aaaaaaaaaaab3333333333333333333333bb3333333333333333333333b
bbbbb99a944bbbbbbb9a4bbbbd7115dbbd7a95dbbb22212bb313b33331133b1baaa999aaaaaaaaaabb33333333333333333333bbbb33333333333333333333bb
bbb99aaa99944bbbb9aa94bbbd61d51bbd6ad51bbb42224b33b31b31133bb131aaaaaaaaaaaaaaaabb3333333333333333333bbbbb3333333333333333333bbb
b99aaaaaa999944b9aaa994bbd61551bbd69551bbb4942133b1b313bb3b11331aaaaaaaaaaaaaaaab33333b33333333333333bbbb33333333333333333333bbb
9aaaaaaaa99999949aaa9994bd66551bbd66551bbb34413b333133b113133b31aa999aaaaaaaaaaabb33333333333333b33333bbbb33333333333333333333bb
2999aaaaaa99555b9aaaa95bbd6d151bbd6d951bbbb333bb33bb3313bbb3b131a999aaaaaaaaaaaab333333bb3b333b3b3333b3bb33333333333333333333b3b
bb4999999955225b4999952bbd61551bbd6a551bbbb4bbbbb333b3333113131baaaaaaaaaaaaaaaabb3b333bbb3333bbb333333bbb3b3333333333333333333b
bb9422222222225b9222222bbddd551bbddd551bbb9999bbb31333333333311baaaa999aaa999aaabbbb3333b3333333333333bbbbbb333333333333333333bb
bb9414422220225b9142202bbd61151bbd6a951bbb4224bbbbb1133333311bbbaa9999aaaaa99a9abbbb3333333333333333333bbbbb3333333333333333333b
bb4414444220225b4144202bbd6d151bbd6d951bbb4244bbbbbb11111111bbbba999aaaaaaaaaaaabbbb3333333333333333b33bbbbb3333333333333333b33b
bb2444411442255bb441425bbddd511bbddd511bbb4224bbbbb1941111421bbbaa9999aaaaaaaaaabbbbb33333b33333bb33b3bbbbbbb33333b33333bb33b3bb
bbb2222112255bbbb22125bbbbd111bbbbd111bbbb4444bbbb194142121421bbaaaaaaaaaa99a9aabbb3333333bb3b33bbbbb3bbbbb3333333bb3b33bbbbb3bb
bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb22bbbbbbb12421421bbbbaaaaaaaaaaa99aaabbbbb33b3bbbb3b33bbbbbbbbbbbb33b3bbbb3b33bbbbbbb
bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb3223bbbbbbbbbbbbbbbbbbaaaaaaaaaaaaaaaabbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb
bbb333bbbbb333bbbbb333bbbbb333bbbbb333b3311333bbbbbbb333333bbbbbbbbbb333333bbbbbbbbbb333333bbbbbbbbbb3333333b33331131333333bbbbb
bb31333bbb31333bbb31333bbb31333bbb3133333331333bbbb3331331333bbbbbb3331331333bbbbbb3331331333bbbbbb33313313333333333331331333bbb
b3333133b3333133b3333133b3333133b333313333333133b33131333311333bb33131333311333bb33131333311333bb331313333113333333131333311333b
b1b33131b1b33131b1b33131b1b33131b1b3313111b33131b313b33331133b1bb313b33331133b1bb313b33331133b1bb313b33331133b111313b33331133b1b
3b1313b33b1313b33b1313b33b1313b33b1313b33b1313b333b31b31133bb13133b31b31133bb13133b31b31133bb13133b31b31133bb13133b31b31133bb131
3133bb133133bb133133bb133133bb133133bb133133bb133b1b313bb3b113313b1b313bb3b113313b1b313bb3b113313b1b313bb3b113313b1b313bb3b11331
333b1133333b1133333b1133333b1133333b1133333b1133333133b113133b31333133b113133b31333133b113133b31333133b113133b31333133b113133b31
3b31bbb33b31bbb33b31bbb33b31bbb33b31bbb33b31bbb333bb3313bbb3b13133bb3313bbb3b13133bb3313bbb3b13133bb3313bbb3b13133bb3313bbb3b131
b3b33111b3b3311333b3311333b3311133b3311333b33113b333b333311313333333b333311313333333b3333113131b3333b333311313333333b33331131333
b1333331b133333133333331333333313333333133333331b3133333333333133133333333333313313333333333311b31333333333333133133333333333313
bb13331bbb133333313333333133331b3133333331333333bbb113333331313333113333333131333311333333311bbb33113333333131333311333333313133
bb1111bbbb1111b3313111b3313111bb313111b3313111b3bbbb11111313b33331133b111313b33331133b111111bbbb31133b111313b33331133b111313b333
bb11141bbb113b1313b33b1313b3141b13b33b1313b33b13bbb1141133b31b31133bb13133b31b31133bb13111421bbb133bb13133b31b31133bb13133b31b31
b14411bbb1443133bb133133bb1311bbbb133133bb133133bb1141423b1b313bb3b113313b1b313bb3b11331121421bbb3b113313b1b313bb3b113313b1b313b
bb141bbbbb14333b1133333b11331bbb1133333b1133333bbbbb1242333133b113133b31333133b113133b311421bbbb13133b31333133b113133b31333133b1
bbbbbbbbbbbb3b31bbb33b31bbb3bbbbbbb33b31bbb33b31bbbbbbbb33bb3313bbb3b13133bb3313bbb3b131bbbbbbbbbbb3b13133bb3313bbb3b13133bb3313
bbbbbbbbbbb333b3311333b3311333bb311333b3311333b3bbbbb3333333b333311313333333b33331131333333bbbbb311313333333b333311313333333b333
bbbbbbbbbb313333333133333331333b3331333333313333bbb333133133333333333313313333333333331331333bbb33333313313333333333331331333333
bbbbbbbbb333313333333133333331333333313333333133b3313133331133333331313333113333333131333311333b33313133331133333331313333113333
bbbbbbbbb1b3313111b3313111b3313111b3313111b33131b313b33331133b111313b33331133b111313b33331133b1b1313b33331133b111313b33331133b11
bbbbbbbb3b1313b33b1313b33b1313b33b1313b33b1313b333b31b31133bb13133b31b31133bb13133b31b31133bb13133b31b31133bb13133b31b31133bb131
bbbbbbbb3133bb133133bb133133bb133133bb133133bb133b1b313bb3b113313b1b313bb3b113313b1b313bb3b113313b1b313bb3b113313b1b313bb3b11331
bbbbbbbb333b1133333b1133333b1133333b1133333b1133333133b113133b31333133b113133b31333133b113133b31333133b113133b31333133b113133b31
bbbbbbbb3b31bbb33b31bbb33b31bbb33b31bbb33b31bbb333bb3313bbb3b13133bb3313bbb3b13133bb3313bbb3b13133bb3313bbb3b13133bb3313bbb3b131
bbbbbbbbb3b3311333b3311333b33111b3b3311333b33111b333b333311313333333b333311313333333b3333113131bb333b333311313333333b3333113131b
bbbbbbbbb13333313333333133333331b133333133333331b3133333333333133133333333333313313333333333311bb313333333333313313333333333311b
bbbbbbbbbb133333313333333133331bbb1333333133331bbbb113333331313333113333333131333311333333311bbbbbb11333333131333311333333311bbb
bbbbbbbbbb1111b3313111b3313111bbbb1111b3313111bbbbbb11111313b33331133b111313b33331133b111111bbbbbbbb11111313b33331133b111111bbbb
bbbbbbbbbb113b1313b33b1313b3141bbb113b1313b3141bbbb1141133b31b31133bb13133b31b31133bb13111421bbbbbb1141133b31b31133bb13111421bbb
bbbbbbbbb1443133bb133133bb1311bbb1443133bb1311bbbb1141423b1b313bb3b113313b1b313bb3b11331121421bbbb1141423b1b313bb3b11331121421bb
bbbbbbbbbb14333b1133333b11331bbbbb14333b11331bbbbbbb1242333133b113133b31333133b113133b311421bbbbbbbb1242333133b113133b311421bbbb
bbbbbbbbbbbb3b31bbb33b31bbb3bbbbbbbb3b31bbb3bbbbbbbbbbbb33bb3313bbb3b13133bb3313bbb3b131bbbbbbbbbbbbbbbb33bb3313bbb3b131bbbbbbbb
bbbbbbbbbbb333b3311333b3311333bb311333b3311333bbbbbbb3333333b333311313333333b33331131333333bbbbbbbbbb3333333b33331131333333bbbbb
bbbbbbbbbb313333333133333331333b333133333331333bbbb333133133333333333313313333333333331331333bbbbbb33313313333333333331331333bbb
bbbbbbbbb333313333333133333331333333313333333133b3313133331133333331313333113333333131333311333bb331313333113333333131333311333b
bbbbbbbbb1b3313111b3313111b3313111b3313111b33131b313b33331133b111313b33331133b111313b33331133b1bb313b33331133b111313b33331133b1b
bbbbbbbb3b1313b33b1313b33b1313b33b1313b33b1313b333b31b31133bb13133b31b31133bb13133b31b31133bb13133b31b31133bb13133b31b31133bb131
bbbbbbbb3133bb133133bb133133bb133133bb133133bb133b1b313bb3b113313b1b313bb3b113313b1b313bb3b113313b1b313bb3b113313b1b313bb3b11331
bbbbbbbb333b1133333b1133333b1133333b1133333b1133333133b113133b31333133b113133b31333133b113133b31333133b113133b31333133b113133b31
bbbbbbbb3b31bbb33b31bbb33b31bbb33b31bbb33b31bbb333bb3313bbb3b13133bb3313bbb3b13133bb3313bbb3b13133bb3313bbb3b13133bb3313bbb3b131
bbbbbbbbb3b33111b3b33111b3b3311133b33111b3b33113b333b3333113131bb333b3333113131bb333b3333113131b3333b3333113131bb333b33331131333
bbbbbbbbb1333331b1333331b133333133333331b1333331b31333333333311bb31333333333311bb31333333333311b313333333333311bb313333333333313
bbbbbbbbbb13331bbb13331bbb13331b3133331bbb133333bbb1133333311bbbbbb1133333311bbbbbb1133333311bbb3311333333311bbbbbb1133333313133
bbbbbbbbbb1111bbbb1111bbbb1111bb313111bbbb1111b3bbbb11111111bbbbbbbb11111111bbbbbbbb11111111bbbb31133b111111bbbbbbbb11111313b333
bbbbbbbbbb11141bbb11141bbb11141b13b3141bbb113b13bbb1141111421bbbbbb1141111421bbbbbb1141111421bbb133bb13111421bbbbbb1141133b31b31
bbbbbbbbb14411bbb14411bbb14411bbbb1311bbb1443133bb114142121421bbbb114142121421bbbb114142121421bbb3b11331121421bbbb1141423b1b313b
bbbbbbbbbb141bbbbb141bbbbb141bbb11331bbbbb14333bbbbb12421421bbbbbbbb12421421bbbbbbbb12421421bbbb13133b311421bbbbbbbb1242333133b1
bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb3bbbbbbbb3b31bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb3b131bbbbbbbbbbbbbbbb33bb3313
bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb99999444bbbbbbb00bbbbbb00bbbbbb00bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb
bbb99bbbbbb94bbbbbb94bbbbbb94bbbbbb9494944494bbbbb0420bbb00420bbbb0420bbbbb00bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb
bb9999bbbb9994bbbb9994bbbb9994bbbb999449449994bbbb0ff0bb056ff10bbb0ff0bbbb04200bb00bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb
b9a9494bb9a9494bb9a9494bb9a9494bb9a9494449a9494bb0df950b0f6f9010b0df950bb05ff5100970b0bbbb0000bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb
99999444999994449999944499999444999994449999944405dd5510b0065f0b05dd5510051f95f0b070070bb055510bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb
9949444499494499494944994949444449494449494944490f0d50f0bb02210b0f0d50f0b0f6500bb067760b0d1d1510bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb
b449444bb4494999944949999449444b9449449994494499b022110bbbb0040bb022110bb02210bbb0d6650b0dd11110bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb
bbbbbbbbbbbb9a9494449a94944bbbbb49444999494449a9b040040bbbbbb0bbb040040bb0400bbbbb0450bbb002020bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb
94449999bbb99999444499994444bbbb4444999944449999bbb00bbbbbbbbbbbbbb00bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb
44494949bbb944944449449444494bbb4449449444494494bb0240bbbbb00bbbbb0240bbbbb00bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb
44999449bb99949444999494449994bb4499949444999494bb0ff0bbbb0240bbbb0ff0bbbb0240bbbb0bbbbbb0bb0bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb
49a14944b9a9494449a9494449a9494b49a9494449a94944b019f0bbb00ff0bbb019f0bbbb0ff0bbb080b0bb0e00e00bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb
991554449999944499999444999994449999944499999444b050660b0519f00bb050660bb050f00b0770070bb0ee00e0bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb
991554449949444949494449494944449949444949494444b0f0560b0f0051f0b0f0560bbb0f060b0877760bb0ee8e0bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb
b415544bb4494499944944999449444bb44944999449444bbb0120bbb001200bbb0120bbbb0120bbb066650bbb08880bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb
bbbbbbbbbbbbb9a9494449a9494bbbbbbbbbb9a9494bbbbbbbb040bbbb04040bbbb040bbb020040bbb0950bbbb02020bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb
bbbb9999bbbb9999944499999444bbbbbbbb99999444bbbbbbb00bbbbbbbbbbbbbb00bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb
bbb94949bbb949494449494944494bbbbbb9494944494bbbbb0440bbbbb00bbbbb0440bbbbb00bbbb000bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb
bb999449bb99944944999449449994bbbb999449449994bbbb0420bbbb0440bbbb0420bbbb0440bb047400bbb0bb0bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb
b9a14944b9a9494449a9494449a9494bb9a9494449a9494bb052210bb054210bb052210bb054210bb077570b0400400bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb
99155444999994449999944499999444999994449999944405651510056515100565151005651510b0667750b04e0040bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb
99155444994944449949444499494444494944449949449905065010b00650f0050650100f06500bbb057550b0ee840bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb
b415544bb449444bb449444bb449444b9449444bb4494999b022110bb022100bb022110bb02210bbbb066050bb08480bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb
bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb944bbbbbbbbb9a94b040040bb0400bbbb040040bb0400bbbbb050050bb04040bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb
bbbbbbbb9444bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb00bbbbbbbbbbbbbb00bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb
bbb99bbb44494bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb0420bbbbb00bbbbb0420bbbbb00bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb
bb9999bb449994bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb0ff0bbbb0420bbbb0ff0bbbb0420bbbbb000bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb
b9a1494b49a1494bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb0f910bbb0ff00bbb0f910bbb0ff0bbbb07770bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb
9915544499155444bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb066050bb00f9150b066050bb00f050bb0777770bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb
9915544499155444bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb0650f0b0f1500f0b0650f0bb060f0bb0d6d7760bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb
b415544bb415544bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb0210bbb004100bbb0210bbbb0210bb0dd6660bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb
bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb040bbbb04040bbbb040bbbb040020bb002020bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb
