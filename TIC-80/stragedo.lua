-- title:  game title
-- author: game developer
-- desc:   short description
-- script: lua

t=0
x=96
y=24

function TIC()

	if btn(0) then y=y-1 end
	if btn(1) then y=y+1 end
	if btn(2) then x=x-1 end
	if btn(3) then x=x+1 end

	cls(13)
	spr(1+t%60//30*2,x,y,14,3,0,0,2,2)
	print("HELLO WORLD!",84,84)
	t=t+1
end

-- <TILES>
-- 064:00000000000000000000000000000000000000ff0000ffaf00ffaaffffaaaffa
-- 065:000000000000000000000000ffff0000ffaaff00faaaaaffaaaaaaaaaaaaaaaf
-- 066:000000000000000000000000000000000000000000000000ff000000ffff0000
-- 067:0000000000000000000000000000000000000099000099940099444499494449
-- 068:0000000000000000000000009999000044449900494444994449944494499444
-- 069:0000000000000000000000000000000000000000000000009900000044990000
-- 070:0000000000000000000000000000000000000044000044420044222244242224
-- 071:0000000000000000000000004444000022224400242222442224422242244222
-- 072:0000000000000000000000000000000000000000000000004400000022440000
-- 073:00000000000000000000000000000000000000ff0000ffdf00ffddffffdddffd
-- 074:000000000000000000000000ffff0000ffddff00fdddddffdddddddddddddddf
-- 075:000000000000000000000000000000000000000000000000ff000000ffff0000
-- 076:00000000000000000000000000000000000000dd0000dddd00dd11d1ddd11ddd
-- 077:000000000000000000000000dddd0000d11ddd00111d11dd11d1111ddd11111d
-- 078:000000000000000000000000000000000000000000000000dd000000dddd0000
-- 080:faaaffaafaaffaaafaffaaaafffaaaaaffaaaaaafaaaaaaafaaaaaaafaaaaaaf
-- 081:aaaaaaffaaaaafffaaaaffffaaafffffaaffffffaffffffffffffffffffffffa
-- 082:ffff0000ffff0000ffff0000ffff0000ffaf0000faaf0000aaaf0000aaff0000
-- 083:9444444994994944949944449444444494494494994444449944444494449944
-- 084:9444444944444949944444444449444499444444994449944444499444494444
-- 085:9449000094990000444900009449000044990000444900004949000044490000
-- 086:4222222442442422424422224222222242242242442222224422222242224422
-- 087:4222222422222424422222222224222244222222442224422222244222242222
-- 088:4224000042440000222400004224000022440000222400002424000022240000
-- 089:fdddffddfddffdddfdffddddfffdddddffddddddfdddddddfdddddddfddddddf
-- 090:ddddddffdddddfffddddffffdddfffffddffffffdffffffffffffffffffffffd
-- 091:ffff0000ffff0000ffff0000ffff0000ffdf0000fddf0000dddf0000ddff0000
-- 092:ddddd111ddd1111ddd1111ddd1111dddd111d111ddd11111dd111111d111111d
-- 093:dd11111dd111111dd11111ddd111d111dddd1111ddd11111dd11111dd111111d
-- 094:dddd0000d11d0000d11d0000d1dd0000dddd0000dddd0000d11d0000111d0000
-- 096:faaaaafffaaaafffffaaffff00ffffff0000ffff000000ff0000000000000000
-- 097:ffffffaafffffaaaffffaaaffffaaaffffaaaffffaaaff00ffff000000000000
-- 098:afff0000ffff0000ffff0000ff00000000000000000000000000000000000000
-- 099:9494994494444444994444940099444400009944000000990000000000000000
-- 100:9444444944449444994444449949449444444499444499009999000000000000
-- 101:4499000044490000449900009900000000000000000000000000000000000000
-- 102:4242442242222222442222420044222200004422000000440000000000000000
-- 103:4222222422224222442222224424224222222244222244004444000000000000
-- 104:2244000022240000224400004400000000000000000000000000000000000000
-- 105:fdddddfffddddfffffddffff00ffffff0000ffff000000ff0000000000000000
-- 106:ffffffddfffffdddffffdddffffdddffffdddffffdddff00ffff000000000000
-- 107:dfff0000ffff0000ffff0000ff00000000000000000000000000000000000000
-- 108:d11111ddd111ddd1ddddddd100dddd110000dd11000000dd0000000000000000
-- 109:111111d1111111111111d111111dd1111ddddddddddddd00dddd000000000000
-- 110:111d000011dd00001ddd0000dd00000000000000000000000000000000000000
-- 112:0000000000000000000000000000000000000000000000ff0000fffa00ffaaaa
-- 113:00000000000000000000000000000000ffff0000aaaaff00afaaaaffaaaffaaa
-- 114:00000000000000000000000000000000000000000000000000000000ff000000
-- 115:0000000000000000000000000000000000000000000000aa0000aaa300aa3333
-- 116:00000000000000000000000000000000aaaa00003333aa003a3333aa333aa333
-- 117:00000000000000000000000000000000000000000000000000000000aa000000
-- 118:0000000000000000000000000000000000000000000000220000222600226666
-- 119:0000000000000000000000000000000022220000666622006266662266622666
-- 120:0000000000000000000000000000000000000000000000000000000022000000
-- 121:0000000000000000000000000000000000000000000000ff0000ffff00ffddfd
-- 122:00000000000000000000000000000000ffff0000fddfff00dddfddffddfddddf
-- 123:00000000000000000000000000000000000000000000000000000000ff000000
-- 124:0000000000000000000000000000000000000000000000990000999e0099999e
-- 125:0000000000000000000000000000000099990000ee999900ee99e999ee9ee999
-- 126:0000000000000000000000000000000000000000000000000000000099000000
-- 128:ffafaaaffaaaaaaffaffafaafaffaaaafaaaaaaafaafaafaffaaaaaaffaaaaaa
-- 129:faaffaaafaaaaaafaaaaafaffaaaaaaaaaafaaaaffaaaaaaffaaaffaaaaaaffa
-- 130:aaff0000faaf0000faff0000aaaf0000faaf0000aaff0000aaaf0000afaf0000
-- 131:aa3a333aa333333aa3aa3a33a3aa3333a3333333a33a33a3aa333333aa333333
-- 132:a33aa333a333333a33333a3aa3333333333a3333aa333333aa333aa333333aa3
-- 133:33aa0000a33a0000a3aa0000333a0000a33a000033aa0000333a00003a3a0000
-- 134:2262666226666662262262662622666626666666266266262266666622666666
-- 135:2662266626666662666662622666666666626666226666662266622666666226
-- 136:6622000026620000262200006662000026620000662200006662000062620000
-- 137:fffddffffffffdddfffddddfffddddfffddddffffdddfdddfffdddddffdddddd
-- 138:ffdddddfffdddddffddddddffdddddfffdddfdddffffddddfffdddddffdddddf
-- 139:ffff0000ffff0000fddf0000fddf0000fdff0000ffff0000ffff0000fddf0000
-- 140:99e9999e9ee999ee9e999ee99999ee99999eee99999eee99999eeee9999ee9ee
-- 141:e9eee9ee9eee9eee9eeeeee9eeeeee99ee9ee999ee9ee99e9ee9e99e99eee99e
-- 142:9999000099e9000099e900009ee90000eee90000eee90000e9e90000e9990000
-- 144:faaaffaafafaffaafaaaaaaaffaaaafa00ffaaaa0000ffaa000000ff00000000
-- 145:aaafaaaafaaaaaafaaaafaaaffaaaaaaffafaafaaaaaaaffaaaaff00ffff0000
-- 146:aaaf0000aaff0000aaaf0000aaff0000ff000000000000000000000000000000
-- 147:a333aa33a3a3aa33a3333333aa3333a300aa33330000aa33000000aa00000000
-- 148:333a3333a333333a3333a333aa333333aa3a33a3333333aa3333aa00aaaa0000
-- 149:333a000033aa0000333a000033aa0000aa000000000000000000000000000000
-- 150:2666226626262266266666662266662600226666000022660000002200000000
-- 151:6662666626666662666626662266666622626626666666226666220022220000
-- 152:6662000066220000666200006622000022000000000000000000000000000000
-- 153:fddddddffdddddfffdddfffdfffffffd00ffffdd0000ffdd000000ff00000000
-- 154:fddddddfddddddfdddddddddddddfddddddffddddfffffffffffff00ffff0000
-- 155:dddf0000dddf0000ddff0000dfff0000ff000000000000000000000000000000
-- 156:9e99ee9e9ee99eee9eee99ee99ee999e0099999e000099ee0000009900000000
-- 157:e99eee9eee99eee9ee999eeeee999eeeee999eeee999ee99999e990099990000
-- 158:ee990000eee900009ee900009e99000099000000000000000000000000000000
-- 160:0000000000000000000000000000000000000000000000330000333700337777
-- 161:0000000000000000000000000000000033330000777733007377773377733777
-- 162:0000000000000000000000000000000000000000000000000000000033000000
-- 163:0000000000000000000000000000000000000000000000990000999e0099eeee
-- 164:0000000000000000000000000000000099990000eeee9900e9eeee99eee99eee
-- 165:0000000000000000000000000000000000000000000000000000000099000000
-- 166:0000000000000000000000000000000000000000000000550000555100551111
-- 167:0000000000000000000000000000000055550000111155001511115511155111
-- 168:0000000000000000000000000000000000000000000000000000000055000000
-- 169:0000000000000000000000000000000000000000000000bb0000bbbb00bb55b5
-- 170:00000000000000000000000000000000bbbb0000b55bbb00555b55bb55b5555b
-- 171:00000000000000000000000000000000000000000000000000000000bb000000
-- 172:0000000000000000000000000000000000000000000000990000999400999994
-- 173:0000000000000000000000000000000099990000449999004499499944944999
-- 174:0000000000000000000000000000000000000000000000000000000099000000
-- 176:3373777337777773373373773733777737777777377377373377777733777777
-- 177:3773377737777773777773733777777777737777337777773377733777777337
-- 178:7733000037730000373300007773000037730000773300007773000073730000
-- 179:99e9eee99eeeeee99e99e9ee9e99eeee9eeeeeee9ee9ee9e99eeeeee99eeeeee
-- 180:9ee99eee9eeeeee9eeeee9e99eeeeeeeeee9eeee99eeeeee99eee99eeeeee99e
-- 181:ee9900009ee900009e990000eee900009ee90000ee990000eee90000e9e90000
-- 182:5515111551111115515515115155111151111111511511515511111155111111
-- 183:5115511151111115111115155111111111151111551111115511155111111551
-- 184:1155000051150000515500001115000051150000115500001115000015150000
-- 185:bbb55bbbbbbbb555bbb5555bbb5555bbb5555bbbb555b555bbb55555bb555555
-- 186:bb55555bbb55555bb555555bb55555bbb555b555bbbb5555bbb55555bb55555b
-- 187:bbbb0000bbbb0000b55b0000b55b0000b5bb0000bbbb0000bbbb0000b55b0000
-- 188:9949999494499944949994499999449999944499999444999994444999944944
-- 189:4944494494449444944444494444449944944999449449949449499499444994
-- 190:9999000099490000994900009449000044490000444900004949000049990000
-- 192:3777337737373377377777773377773700337777000033770000003300000000
-- 193:7773777737777773777737773377777733737737777777337777330033330000
-- 194:7773000077330000777300007733000033000000000000000000000000000000
-- 195:9eee99ee9e9e99ee9eeeeeee99eeee9e0099eeee000099ee0000009900000000
-- 196:eee9eeee9eeeeee9eeee9eee99eeeeee99e9ee9eeeeeee99eeee990099990000
-- 197:eee90000ee990000eee90000ee99000099000000000000000000000000000000
-- 198:5111551151515511511111115511115100551111000055110000005500000000
-- 199:1115111151111115111151115511111155151151111111551111550055550000
-- 200:1115000011550000111500001155000055000000000000000000000000000000
-- 201:b555555bb55555bbb555bbb5bbbbbbb500bbbb550000bb55000000bb00000000
-- 202:b555555b555555b5555555555555b555555bb5555bbbbbbbbbbbbb00bbbb0000
-- 203:555b0000555b000055bb00005bbb0000bb000000000000000000000000000000
-- 204:9499449494499444944499449944999400999994000099440000009900000000
-- 205:4994449444994449449994444499944444999444499944999994990099990000
-- 206:4499000044490000944900009499000099000000000000000000000000000000
-- 208:0000000000000000000000000000000000000000000000bb0000bb5b00bb5b55
-- 209:00000000000000000000000000000000bbbb00005555bb005b55b5bb5b55b5b5
-- 210:00000000000000000000000000000000000000000000000000000000bb000000
-- 211:0000000000000000000000000000000000000000000000550000551500551511
-- 212:0000000000000000000000000000000055550000111155001511515515115151
-- 213:0000000000000000000000000000000000000000000000000000000055000000
-- 214:0000000000000000000000000000000000000000000000aa0000aa3300aa3333
-- 215:00000000000000000000000000000000aaaa000033aaaa003aa333aaaa33333a
-- 216:00000000000000000000000000000000000000000000000000000000aa000000
-- 217:0000000000000000000000000000000000000000000000330000337700333337
-- 218:0000000000000000000000000000000033330000337333007773333333733333
-- 219:0000000000000000000000000000000000000000000000000000000033000000
-- 220:0000000000000000000000000000000000000000000000990000999900994499
-- 221:0000000000000000000000000000000099990000944499009944499999949999
-- 222:0000000000000000000000000000000000000000000000000000000099000000
-- 224:bbb55555b5b5b55bb555bb5bb5555b55b5b55555b5b5b555b555b5b5bb5555b5
-- 225:55555555555b555b5b5b5b5b5b555b5555555555b55b55b5bb5b5bb55b555b55
-- 226:b5bb0000b55b0000555b000055bb000055bb0000b55b0000b55b000055bb0000
-- 227:5551111151515115511155155111151151511111515151115111515155111151
-- 228:1111111111151115151515151511151111111111511511515515155115111511
-- 229:5155000051150000111500001155000011550000511500005115000011550000
-- 230:aa3333aaaaa3333aa3aa3333a33aaa33a333a33aaa33333aa33a3333a3aa333a
-- 231:a3333a333333aa3333333aa3aaa333aaaaaa333aaaaa3333a3aa33a3aaa333aa
-- 232:a3aa0000333a0000333a0000333a0000aa3a0000a33a0000333a0000333a0000
-- 233:3337333733377777377777333333373333333733377777333333777733337337
-- 234:3377777777777337333373373333777733337333333373337777777733333333
-- 235:7733000033330000333300007773000037330000373300007773000073330000
-- 236:9994449999999449999999449999999499999994999999449499944994444499
-- 237:9994999999949999994499994499499444994444994449949994999499949944
-- 238:9999000094490000444900004999000049990000444900009949000099990000
-- 240:bb5b5555b55b5b55b5555bb5bb5555b500bb55550000bb5b000000bb00000000
-- 241:55555555b555b555b5b5b5b555b555b5555555555555b5bb5b55bb00bbbb0000
-- 242:55bb0000b55b0000b55b000055bb0000bb000000000000000000000000000000
-- 243:5515111151151511511115515511115100551111000055150000005500000000
-- 244:1111111151115111515151511151115111111111111151551511550055550000
-- 245:1155000051150000511500001155000055000000000000000000000000000000
-- 246:a33aa33aa333aa33a3a33aaaaaa333a300aa33330000aa3a000000aa00000000
-- 247:3a333aa33333aa33333aa33a3aaa333333a33a333333aaaaa33aaa00aaaa0000
-- 248:33aa00003aaa0000aa3a0000a3aa0000aa000000000000000000000000000000
-- 249:3333733737777777333333773333337700333373000033730000003300000000
-- 250:3333333333333333333333337777777733337337333373333333330033330000
-- 251:7333000073330000777300007733000033000000000000000000000000000000
-- 252:9499949999999499999944499994499400994999000099990000009900000000
-- 253:9994444499944994994499994449999944999999449999994449990099990000
-- 254:9999000049990000444900004499000099000000000000000000000000000000
-- </TILES>

-- <SPRITES>
-- 000:8880000088002222880222668802260088022600800206008020060000022266
-- 001:00880008200006006209006006000990060099e006009ee00600090862200008
-- 002:bbb00000bb001111bb011133bb011300bb001300bb011300bb000300b0011133
-- 003:00b030bb1000000b310b0300030003300300383003003f3003000f003110000b
-- 004:8000000080440444800444998804490088004900888009008800090080044499
-- 005:0088888840088888940888880900088809ee0088090fe0880900f0089444ef00
-- 006:88888000888800118888011d888801d0888801d0888800d0888000d08800111a
-- 007:0008888811008888dd10088800d1000800d1010800d11008f0d00088fa111008
-- 008:8000000080444aaa8040aaff8044af008004af008804af0088040f008004aaff
-- 009:00888888a0080008fa000f080f00ff000fa0aff00faadfa00f000d00faa00008
-- 010:88000000880f00bb88000bb5800f0b5080fbfb5080bfb050800b005080000bb5
-- 011:00088888bb00888855b0000800500408005b0408005b04080050b40855bb0408
-- 012:bb000000bb070777bb077722000772000800720000000200080002006f677722
-- 013:00bbbbbb700bbbbb270bbbbb020b000b020b080b020b000b0200080027776f60
-- 014:8888000e8800099e8809999e880007998888007c8880013388801ddd88801ddd
-- 015:f0088888ef000888eeff0088eeeff088cc000088acd008883add0888dadd0888
-- 016:0f22222207220222072004440000222288002222800222228066666680000000
-- 017:62222f0862022708440027086220000862208888622008886666088800000888
-- 018:b01f1111b0170111b0170444b0001111bb001111b0011111b0333333b0000000
-- 019:31111f0b3101170b4400170b3110000b3110bbbb31100bbb33330bbb00000bbb
-- 020:804f444480470444804709998000444488004444800444448099999980000000
-- 021:94447ff094004000990000889440888894408888944008889999088800000888
-- 022:8801f1ff8801701a88017044880001118880011188001111880ddddd88000000
-- 023:fff1f108fa107108f44071081d1100081d1108881d110088ddddd08800000088
-- 024:80afaaaa80a40aaa80a404448004aaaa8804aaaa8004aaaa80f4ffff80000000
-- 025:faaaaf08fa0aa7084400a708faa00008faa08888faa00888ffff088800000888
-- 026:80bfbbbb800bb0bb8800004488880bbb88800bbb8880bbbb8880555588800000
-- 027:b5bbbf08b5bbb4084440b408b5bb0408b5bb0408b5bb04085555540800000008
-- 028:0277777700770777b0700444b0007777bb007777b0077777b0222222b0000000
-- 029:277772002707700b440070bb277000bb2770bbbb27700bbb22220bbb00000bbb
-- 030:000001dd0222231d00001aaf80013ddd8013dd008001d0008077008880000888
-- 031:ddd00888dfc08888aa0088881d30088811d30888011008880077088880000888
-- 032:1111110011111006000000bb0aaf00690aaaf06900aaaa691000088911100028
-- 033:0001111199001111bbb00000dcd04aa0cccfa440969aa640bcb800b0e7e20020
-- 034:888800008800067988066726880020268880002688888026888000068000aa6a
-- 035:707708886e67088826200888ccc000004c400740ccc00f74c0000f04fff00f0e
-- 036:888888888888888880000000806677778066777780006666800066668066771c
-- 037:88888888888888880000088877770888777708886666088866660888ccc10888
-- 038:888888888888888888888888888888888888800088880055888005558800555b
-- 039:8888888888888888888888888888888800088888bb008888bbb00888bffb0088
-- 048:1100aca8110acaa4110aaa881100088b11110bbc1111000c1111110c11111100
-- 049:e7eac080444aac20b7baa0b0777b06407c7b04400c0040000c00001100011111
-- 050:003a33c9033307c40000e77c8809ee7788049eee8804449e8807444488007444
-- 051:af4c0f0e4470cfce777e0f0e774e0f0eeee90f04ee940e744444074044470000
-- 052:8066771180007777800777778077707780770777800077708880777088800000
-- 053:cc11088877770888777770087707770877707708077700080777088800000888
-- 054:800555bb80555bbb8055bbbb8055bbbb80555bbb800555bb880055bb88800000
-- 055:bffbb008bbbffb08bbbffb08bbbbbb08bbbbbb08bbbbb008bbbb008800000888
-- 128:000088880ee0088800fe0888800f0088880ef0088800ef0088800ff088880000
-- 129:bb030bbbbb0000bbbbb0300bbb00330bbb03830bbb03f30bbb00f00bbbb000bb
-- 130:888000888800f088880ff008880aff08880dfa088800d0088880008888888888
-- 131:bbbbb000b000b080b080b000b0000080008006f606f6002000200000b000bbbb
-- 144:8880008880006008809006088000990888099e088809ee088800900888800088
-- 145:88888888888000888800f008800afa0080fffff0800afa008800f00888800088
-- 146:888000888880f088888000888800f008880fbf08880bfb088800b00888800088
-- 147:8888888888888888000000080ff00a0000444aa00ff00a000000000888888888
-- 160:88888888888000008880000088800fff88800fff8000000080000000800fffff
-- 161:888888880000000800000008fffff008fffff0080000000800000008fff00888
-- 162:88000000880000008800ffff8800ffff8800ff008800ff008800ff008800ff00
-- 163:0088888800888888ff008888ff00888800ff008800ff008800ff008800ff0088
-- 164:888880008888800088800fff88800fff800ff000800ff000800ff008800ff008
-- 165:0008888800088888fff00888fff00888000ff008000ff008800ff008800ff008
-- 166:8880088888800888800ff008800ff008800ff008800ff008800ff008800ff008
-- 167:8880088888800888800ff008800ff008800ff008800ff008800ff008800ff008
-- 168:8000000880000008800ff008800ff008800ffff0800ffff0800ff00f800ff00f
-- 169:8000000880000008800ff008800ff008000ff008000ff008f00ff008f00ff008
-- 170:8000000080000000800fffff800fffff800ff000800ff000800ff008800ff008
-- 171:0008888800088888fff00888fff00888000ff008000ff008800ff008800ff008
-- 172:888888888000000080000000800fffff800fffff800000008000000088800fff
-- 173:888888880000088800000888fff00888fff008880000000800000008fffff008
-- 174:8888888888888888888000008880000088800fff88800fff88800ff088800ff0
-- 175:88888888888888880000088800000888fff00888fff008880ff008880ff00888
-- 176:800fffff800000008000000088800fff88800fff888000008880000088888888
-- 177:fff008880000000800000008fffff008fffff008000000080000000888888888
-- 178:8800ffff8800ffff8800ff008800ff008800ff008800ff008800000088000000
-- 179:ff008888ff00888800ff008800ff008800ff008800ff00880000008800000088
-- 180:800ff008800ff008800ff000800ff00088800fff88800fff8888800088888000
-- 181:800ff008800ff008000ff008000ff008fff00888fff008880008888800088888
-- 182:800ff008800ff008800ff000800ff00088800fff88800fff8888800088888000
-- 183:800ff008800ff008000ff008000ff008fff00888fff008880008888800088888
-- 184:800ff000800ff000800ff008800ff008800ff008800ff0088000000880000008
-- 185:0ffff0080ffff008800ff008800ff008800ff008800ff0088000000880000008
-- 186:800ff008800ff008800ff000800ff000800fffff800fffff8000000080000000
-- 187:800ff008800ff008000ff008000ff008fff00888fff008880008888800088888
-- 188:88800fff8000000080000000800fffff800fffff800000008000000088888888
-- 189:fffff0080000000800000008fff00888fff00888000008880000088888888888
-- 190:88800ff088800ff088800ff088800ff088800fff88800fff8880000088800000
-- 191:0ff008880ff008880ff008880ff00888fff00888fff008880000088800000888
-- 192:888888888888888888888000888880008888800f8888800f8888800f8888800f
-- 193:88888888888888880008888800088888f0088888f0088888f0088888f0088888
-- 194:8888888888888888888000008880000088800fff88800fff8880000088800000
-- 195:88888888888888880000088800000888fff00888fff008880ff008880ff00888
-- 196:8888888888888888888000008880000088800fff88800fff8880000088800000
-- 197:88888888888888880000088800000888fff00888fff008880ff008880ff00888
-- 198:8888888888888888888000008880000088800ff088800ff088800ff088800ff0
-- 199:888888888888888800000888000008880ff008880ff008880ff008880ff00888
-- 200:8888888888888888888000008880000088800fff88800fff88800ff088800ff0
-- 201:88888888888888880000088800000888fff00888fff008880000088800000888
-- 202:8888888888888888888000008880000088800fff88800fff88800ff088800ff0
-- 203:88888888888888880000088800000888fff00888fff008880000088800000888
-- 204:88888888888000008880000088800fff88800fff888000008880000088888880
-- 205:888888880000088800000888fff00888fff008880ff008880ff008880ff00888
-- 206:8888888888888888888000008880000088800fff88800fff88800ff088800ff0
-- 207:88888888888888880000088800000888fff00888fff008880ff008880ff00888
-- 208:8888800f8888800f8888800f8888800f8888800f8888800f8888800088888000
-- 209:f0088888f0088888f0088888f0088888f0088888f00888880008888800088888
-- 210:88800fff88800fff88800ff088800ff088800fff88800fff8880000088800000
-- 211:fff00888fff008880000088800000888fff00888fff008880000088800000888
-- 212:8888800f8888800f888000008880000088800fff88800fff8880000088800000
-- 213:fff00888fff008880ff008880ff00888fff00888fff008880000088800000888
-- 214:88800fff88800fff888000008880000088888880888888808888888088888880
-- 215:fff00888fff008880ff008880ff008880ff008880ff008880000088800000888
-- 216:88800fff88800fff888000008880000088800fff88800fff8880000088800000
-- 217:fff00888fff008880ff008880ff00888fff00888fff008880000088800000888
-- 218:88800fff88800fff88800ff088800ff088800fff88800fff8880000088800000
-- 219:fff00888fff008880ff008880ff00888fff00888fff008880000088800000888
-- 220:8888888088888880888888808888888088888880888888808888888088888880
-- 221:0ff008880ff008880ff008880ff008880ff008880ff008880000088800000888
-- 222:88800fff88800fff88800ff088800ff088800fff88800fff8880000088800000
-- 223:fff00888fff008880ff008880ff00888fff00888fff008880000088800000888
-- 224:88888888888000008880000088800fff88800fff88800ff088800ff088800fff
-- 225:888888880000088800000888fff00888fff008880ff008880ff00888fff00888
-- 226:88888888888888888000000080000000800ff00f800ff00f800ff00f800ff00f
-- 227:88888888888888880000000800000008fffff008fffff008f00ff008f00ff008
-- 228:8888888888888888888000008880000088800ff088800ff088800ff088800ff0
-- 229:888888888888888800000888000008880ff008880ff008880ff008880ff00888
-- 230:88888888888888888000000080000000800ff00f800ff00f800ff000800ff000
-- 231:88888888888888880000000800000008fffff008fffff008000ff008000ff008
-- 232:88888888888888888000000080000000800ff00f800ff00f800ff000800ff000
-- 233:88888888888888880000000800000008fffff008fffff008000ff008000ff008
-- 234:88888888888888888000000080000000800ff00f800ff00f800ff00f800ff00f
-- 235:88888888888888880000000800000008f00ff008f00ff008f00ff008f00ff008
-- 236:88888888888888888000000080000000800ff00f800ff00f800ff00f800ff00f
-- 237:88888888888888880000000800000008fffff008fffff008f0000008f0000008
-- 238:88888888888888888000000080000000800ff00f800ff00f800ff00f800ff00f
-- 239:88888888888888880000000800000008fffff008fffff008f0000008f0000008
-- 240:88800fff88800000888000008888888088888880888888808888888088888880
-- 241:fff008880ff008880ff008880ff008880ff008880ff008880000088800000888
-- 242:800ff00f800ff00f800ff00f800ff00f800ff00f800ff00f8000000080000000
-- 243:f00ff008f00ff008f00ff008f00ff008fffff008fffff0080000000800000008
-- 244:88800ff088800ff088800ff088800ff088800ff088800ff08880000088800000
-- 245:0ff008880ff008880ff008880ff008880ff008880ff008880000088800000888
-- 246:800ff00f800ff00f800ff00f800ff00f800ff00f800ff00f8000000080000000
-- 247:fffff008fffff008f0000008f0000008fffff008fffff0080000000800000008
-- 248:800ff000800ff000800ff000800ff000800ff00f800ff00f8000000080000000
-- 249:0ffff0080ffff008000ff008000ff008fffff008fffff0080000000800000008
-- 250:800ff00f800ff00f800ff000800ff000800ff000800ff0008000000080000000
-- 251:fffff008fffff008000ff008000ff008000ff008000ff0080000000800000008
-- 252:800ff00f800ff00f800ff000800ff000800ff00f800ff00f8000000080000000
-- 253:fffff008fffff008000ff008000ff008fffff008fffff0080000000800000008
-- 254:800ff00f800ff00f800ff00f800ff00f800ff00f800ff00f8000000080000000
-- 255:fffff008fffff008f00ff008f00ff008fffff008fffff0080000000800000008
-- </SPRITES>

-- <WAVES>
-- 000:00000000ffffffff00000000ffffffff
-- 001:0123456789abcdeffedcba9876543210
-- 002:0123456789abcdef0123456789abcdef
-- </WAVES>

-- <SFX>
-- 000:000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000304000000000
-- </SFX>

-- <PALETTE>
-- 000:0000001d2b537e255383769cab5236008751ff004d5f574fff77a8ffa300c2c3c700e436ffccaa29adffffec27ffffff
-- </PALETTE>

