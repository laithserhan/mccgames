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
-- 001:9444944494449444944499999444944494449444944494449444944494449444
-- 002:5555555555555555555555555555555555555544555554445555444455554444
-- 003:5555555555555555555555555555555544555555444555554444555544445555
-- 004:4444444444444444444444444444455544445555444555554445555544455555
-- 005:4444444444444444444444445554445555555555555555555555555555555555
-- 006:4444444444444444444444445554444455554444555554445555544455555444
-- 007:4444444444444444444444444444444444444488444448884444888844448888
-- 008:4444444444444444444444444444444488444444888444448888444488884444
-- 009:4444444444444444444444444444488844448888444888884448888844488888
-- 010:4444444444444444444444448884448888888888888888888888888888888888
-- 011:4444444444444444444444448884444488884444888884448888844488888444
-- 012:eeeeeeeeeeeeeeeeeeeeeeeeeeeee444eeee4444eee44444eee44444eee44444
-- 013:eeeeeeeeeeeeeeeeeeeeeeee444eee4444444444444444444444444444444444
-- 014:eeeeeeeeeeeeeeeeeeeeeeee444eeeee4444eeee44444eee44444eee44444eee
-- 015:9eeeeee9e9ee9e9eee9e9eeee9ee99eeee99ee9eeee9e9eee9e9ee9e9eeeeee9
-- 016:9999944494449444944494449444944494449444944594445455545455555555
-- 017:9999944494449444944494449444944494449444944494449444944494449444
-- 018:5555444455554444555554445555554455555555555555555555555555555555
-- 019:4444555544445555444555554455555555555555555555555555555555555555
-- 020:4445555544455555444455554444555544445555444555554445555544455555
-- 021:5555555555555555555555555555555555555555555555555555555555555555
-- 022:5555544455555444555554445555444455554444555544445555544455555444
-- 023:4444888844448888444448884444448844444444444444444444444444444444
-- 024:8888444488884444888444448844444444444444444444444444444444444444
-- 025:4448888844488888444488884444888844448888444888884448888844488888
-- 026:8888888888888888888888888888888888888888888888888888888888888888
-- 027:8888844488888444888884448888444488884444888844448888844488888444
-- 028:eee44444eee44444eeee4444eeee4444eeee4444eee44444eee44444eee44444
-- 029:4444444444444444444444444444444444444444444444444444444444444444
-- 030:44444eee44444eee44444eee4444eeee4444eeee4444eeee44444eee44444eee
-- 031:9444444949449494449494444944994444994494444949444949449494444449
-- 032:4333333443444434434444344399993443999934433333344134431443444434
-- 033:4444494444444344444443444999934449999344411111444344434443444344
-- 034:555555555555555555555555555b5b555555b555555555555555555555555555
-- 035:555555555555655555565655555565555555b5555555b5555555555555555555
-- 036:4445555544455555444555554444555544444555444444444444444444444444
-- 037:5555555555555555555555555555555555444555444444444444444444444444
-- 038:5555544455555444555554445555444455544444444444444444444444444444
-- 039:888888888888888888888888888d888888d8dd88888888888888888888888888
-- 040:8888888888888888888888888888d88888dd8d88888888888888888888888888
-- 041:4448888844488888444888884444888844444888444444444444444444444444
-- 042:8888888888888888888888888888888888444888444444444444444444444444
-- 043:8888844488888444888884448888444488844444444444444444444444444444
-- 044:eee44444eee44444eee44444eeee4444eeeee444eeeeeeeeeeeeeeeeeeeeeeee
-- 045:4444444444444444444444444444444444eee444eeeeeeeeeeeeeeeeeeeeeeee
-- 046:44444eee44444eee44444eee4444eeee444eeeeeeeeeeeeeeeeeeeeeeeeeeeee
-- 047:eee88888eee4d888eee48d88ee4e88d8ee4e888de4e888ffe4e88888eee88888
-- 048:4999999449444494494444944999999449999994433333344914419449444494
-- 049:4494444444344444443444444439999444399994441111144434443444344434
-- 050:ffffffffffffffdfffffffbfffffffffffdfffffffbfffffffffffffffffffff
-- 051:1000000010000000100000001000000000000000000000000000000010000000
-- 052:1100011100000000000000001000000010000000100000001000000011110001
-- 053:1117111711111111171117111111111111171117111111111711171111111111
-- 054:2121121212111121211111121112211111122111211111121211112121211212
-- 055:eeeeeeeeeeeeeeeeeeeeeeeeeeeee888eeee8888eee88888eee88888eee88888
-- 056:eeeeeeeeeeeeeeeeeeeeeeee888eee8888888888888888888888888888888888
-- 057:eeeeeeeeeeeeeeeeeeeeeeee888eeeee8888eeee88888eee88888eee88888eee
-- 058:eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee88eeeee888eeee8888eeee8888
-- 059:eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee88eeeeee888eeeee8888eeee8888eeee
-- 060:eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee8eeeeee88
-- 061:eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee8eeeeeee88eeeeee
-- 062:88888888888888888888888888888888888888888888888e888888ee88888eee
-- 063:8888888888888888888888888888888888888888e8888888ee888888eee88888
-- 064:fffffffffffffffffffffffffffff444ffff4444fff44444fff44444fff44444
-- 065:ffffffffffffffffffffffff444fff4444444444444444444444444444444444
-- 066:ffffffffffffffffffffffff444fffff4444ffff44444fff44444fff44444fff
-- 067:44444444444444444444444444444fff4444ffff444fffff444fffff444fffff
-- 068:444444444444444444444444fff444ffffffffffffffffffffffffffffffffff
-- 069:444444444444444444444444fff44444ffff4444fffff444fffff444fffff444
-- 070:eeeeeeeeeebeebeeeeebbeeeeeb55beeeee99eeeeee49eeeeeeeeeeeeeeeeeee
-- 071:eee88888eee88888eeee8888eeee8888eeee8888eee88888eee88888eee88888
-- 072:eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
-- 073:88888eee88888eee88888eee8888eeee8888eeee8888eeee88888eee88888eee
-- 074:eeee8888eeee8888eeeee888eeeeee88eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
-- 075:8888eeee8888eeee888eeeee88eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
-- 076:eeeeee88eeeeeee8eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
-- 077:88eeeeee8eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
-- 078:88888eee888888ee8888888e8888888888888888888888888888888888888888
-- 079:eee88888ee888888e88888888888888888888888888888888888888888888888
-- 080:fff44444fff44444ffff4444ffff4444ffff4444fff44444fff44444fff44444
-- 081:fffffffffffffffffffffffffffdfffffffbffffffffffffffffffffffffffff
-- 082:44444fff44444fff44444fff4444ffff4444ffff4444ffff44444fff44444fff
-- 083:444fffff444fffff4444ffff4444ffff4444ffff444fffff444fffff444fffff
-- 084:ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
-- 085:fffff444fffff444fffff444ffff4444ffff4444ffff4444fffff444fffff444
-- 086:eeeeeeeee111111ee100022ee100333ee107777ee1aaaaaeeffffffeeeeeeeee
-- 087:eee88888eee88888eee88888eeee8888eeeee888eeeeeeeeeeeeeeeeeeeeeeee
-- 088:8888888888888888888888888888888888eee888eeeeeeeeeeeeeeeeeeeeeeee
-- 089:88888eee88888eee88888eee8888eeee888eeeeeeeeeeeeeeeeeeeeeeeeeeeee
-- 090:eeeeeeeeeeeeeeeeee9999eee944999ee444499ee144449eee1114eeeeeeeeee
-- 091:eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeffeeeeffeeffeeeeeeeeeeeeeeeee
-- 092:4e4444e449999994494444944944449449999994e999999e9999999914444441
-- 093:eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee44eeeee444eeee4444eeee4444
-- 094:eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee44eeeeee444eeeee4444eeee4444eeee
-- 095:fffffffffffffffffffddfffffd55dffff5445fffff4ffffffddddffffffffff
-- 096:fff44444fff44444fff44444ffff4444fffff444ffffffffffffffffffffffff
-- 097:4444444444444444444444444444444444fff444ffffffffffffffffffffffff
-- 098:44444fff44444fff44444fff4444ffff444fffffffffffffffffffffffffffff
-- 099:444fffff444fffff444fffff4444ffff44444fff444444444444444444444444
-- 100:ffffffffffffffffffffffffffffffffff444fff444444444444444444444444
-- 101:fffff444fffff444fffff444ffff4444fff44444444444444444444444444444
-- 102:3333333373100137731001377310013773100137731001377310013773100137
-- 103:eeeeeee4eeeeeee4eeeeee44eeeeee44eeeee444eeee4444ee44444444444444
-- 104:4eeeeeee4eeeeeee44eeeeee44eeeeee444eeeee4444eeee444444ee44444444
-- 105:4444444e4444444e444444ee444444ee44444eee4444eeee44eeeeeeeeeeeeee
-- 106:e4444444e4444444ee444444ee444444eee44444eeee4444eeeeee44eeeeeeee
-- 107:44444444444444444444444444444444444444ee44444eee4444eeee4444eeee
-- 108:44444444444444444444444444444444ee444444eee44444eeee4444eeee4444
-- 109:eeee4444eeee4444eeeee444eeeeee44eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
-- 110:4444eeee4444eeee444eeeee44eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
-- 111:ddffddfdfddddddfddfddddffddfdddffdddfddffddddfdddddddddfdfddfffd
-- 112:ffffffffffffffffffffffffffffffffffffff44fffff444ffff4444ffff4444
-- 113:ffffffffffffffffffffffffffffffff44ffffff444fffff4444ffff4444ffff
-- 114:fff555ffff5f55fdfdd555f5d51111d551ff1f555fffff1155f7ffff55f7ffff
-- 115:3333333373310000731000007310000073100000731000007310000073100000
-- 116:3333333300001337000001370000013700000137000001370000013700000137
-- 117:8fddffdf8fdddffd88fddfff88fffddf888ffddd88888fff888888f888888888
-- 118:dfddffdfdfdddffdddfddfffdfdffddfdfdffdddfffdffdf8f8f8ff888888888
-- 119:44444444ee444444eeee4444eeeee444eeeeee44eeeeee44eeeeeee4eeeeeee4
-- 120:44444444444444ee4444eeee444eeeee44eeeeee44eeeeee4eeeeeee4eeeeeee
-- 121:eeeeeeee44eeeeee4444eeee44444eee444444ee444444ee4444444e4444444e
-- 122:eeeeeeeeeeeeee44eeee4444eee44444ee444444ee444444e4444444e4444444
-- 123:4444eeee4444eeee44444eee444444ee44444444444444444444444444444444
-- 124:eeee4444eeee4444eee44444ee44444444444444444444444444444444444444
-- 125:fdddffdfdfdddffdddfddfffdddffddffddffdddfffddfdddffdddfdfdffdddf
-- 126:fffafffffffaffffffffffffffffffffffffffaaffffffffffffffffffffffff
-- 127:ffffffffffffffffffffffffaafffffffffffaafffffffffffffffffffffffff
-- 128:ffff4444ffff4444fffff444ffffff44ffffffffffffffffffffffffffffffff
-- 129:4444ffff4444ffff444fffff44ffffffffffffffffffffffffffffffffffffff
-- 130:fffffffff111111ff100022ff100333ff107777ff188888ffaaaaaafffffffff
-- 134:88fddddd8ffffdff88fddfdd8fdffddd88fffddf8ffddfff8fdddffd88fdffdf
-- 135:dfdddfdfddfdddfddddfdfdffffdfdddffffdfddfffffdfdfffffddffffffddd
-- 136:fffffddffffffdfdfffffdfdffffdddfffffddddffffdfddfffffdfdfffffddf
-- 137:fffffddffffffdfdfffffddfffffddddfffdfdddfddddfdddfddddfdfdfddddf
-- 138:ddfddddfffdffdfdfffddfddfffffdfdffffffffffffffffffffffffffffffff
-- 139:ffffffffffffafffffffaffffffffffffffffffffffffffffffafffffffaffff
-- 140:ffffffffffffffffffffffffffffffaafffffffffffffffffffafffffffaffff
-- 141:ffffffffffffffffffffffffaaffffffffffffffffffffffffffafffffffafff
-- 142:ffffafffffffafffffffffffffffffffaaffffffffffffffffffffffffffffff
-- 143:5555f5d5d555f5555d5fdf55555ddf5555f55f555fdd5df55f5555f5fd55d5df
-- 189:ffffff33fff33733ff777777ff733333f3733333f77777773333373333333733
-- 190:33ffffff33733fff777777ff333337ff3333373f7777777f3373333333733333
-- 191:00eeee00eeeeeeeee333333e3377773333766733376116733761167333333333
-- 192:fffffffffffffffffffffffffffffffefffffeeefffeeeeefeeeeeeeeeeeeeee
-- 193:ffffffffffffffffffffffffefffffffeeefffffeeeeefffeeeeeeefeeeeeeee
-- 194:555555ee55555bbb555bbbb555bb6bbb5bbbb6bbbbbbbbb6bb6bb5bb5bbbbb55
-- 195:ee555555bbe55555bbbee555b6bbbe55bbbb6be5bbbbbbbebb5bbbbe55bbb5b5
-- 196:555555ee55555bbb555bbbb555bbb5bb5bbbbbbbbbbbbbb5bb5bb5bb5bbbbb55
-- 197:ee555555bbe55555bbbee555b5bbbe55bbbb5be5bbbbbbbeb55bbbbe55bbb5b5
-- 198:eeeeeeeeebbeebbeb55bb55b5ee55ee5eeb55beeeb5555bbb5e49e5b5ee49ee5
-- 199:5595955555595555555599595555459555545555555455555544555555555555
-- 200:7777777d377777a333777a333337a33333311333331111333111111311111111
-- 201:5555f5d5d555f5555d5fdf55555ddf5555f55f555fdd5df55f5555f5fd55d5df
-- 202:eeeeeeeeeeeeeeeeeee33eeeee3333eeeee33eeeeee33eeeeeffffeeee4444ee
-- 203:eeeeeeeeeeeeeeeeeee33eeeee3333eeeee33eeeeee33eeeeeffffeeee4444ee
-- 204:2332332123322222233333332222222222222222233333332332222223323321
-- 205:1233233222222332333333322222222222222222333333322222233212332332
-- 206:1111111112222222123233331233222212332222123233331222222211111111
-- 207:1111111122222221333323212222332122223321333323212222222111111111
-- 208:2222222222333323232333232332222223322333233232332222332223323321
-- 209:2222222233333233333332332222222233233333332333332222222211111111
-- 210:2222222232333322323332322222233233322332332323322233222212332332
-- 211:5455455495545454955495449554955495549554955495544954954444955449
-- 212:5555455455555454555555445555555455555554555555545555554455555449
-- 213:9559555595955555495555559555555595555555955555554955555544955555
-- 214:eee49eeeeee49eeeeee49eeeeee49eeeeee449eeee4449eeee4444eeeeeeeeee
-- 215:5555555555599555559119555549995555444955554444155544449554454955
-- 216:555555555553355555322355532dd235532dd235553223555553355555555555
-- 217:5555555555555555555775555571175555377755553337555533375555533555
-- 218:4444444449999999499999994999999949999999499999994222222244344444
-- 219:4444444499999994999999949999999499999994999999942222222444444344
-- 220:44444444499999944999999449e99e9449499494494994944999999449111194
-- 221:337333333444444374ffff4734f66f4334ffff43744444473373333333733333
-- 222:ffffffffffffffffffffdffffffddffffff55fffffdd5dffff5555fffd55d5df
-- 223:3777777733777773332222333326623333266233332222333111113311111113
-- 224:2332332123323321233222212332332123323321222233212332332123323321
-- 225:ee5bbbb5bbe5bb5bbbbee5bbb5bbbebbbbbb5bebbbbbbbbeb55bbbbe55bbb5b5
-- 226:1233233212332332123322221233233212332332122223321233233212332332
-- 227:4114155541415555441555554155555541555555415555554415555594415555
-- 228:2222222233322333333223332232232232322323323223232232232212322321
-- 229:1111111112222221123333211223322112322321123223211232232112322321
-- 230:ff222222ff222222ff222222ff222222ff222222771111117711111133446433
-- 231:ff666666ff666666ff666666ff666666ff666666771111117711111133449433
-- 232:ffbbbbbbffbbbbbbffbbbbbbffbbbbbbffbbbbbb771111117711111133449433
-- 233:e999999ee444444ee44ee44ee44ee44ee444444ee44ee44ee444444eeee11eee
-- 234:3999999334444443744ee447344ee44334444443744ee4473444444333311333
-- 235:5999999554444445544ee445544ee44554444445544ee4455444444555511555
-- 236:3373333333733333777777773333373333333733777757573573535355555555
-- 237:3373333333733333777777773333376333333616757777673573535355555555
-- 238:f5555d5fd5d5555d555d555555555555fff44ffffff44fffdfd44dfdfd4444df
-- 239:337333333aaafaa37aafaaa73afaaaf33faaaff37aaaffa73aaffaa333733333
-- 240:2332332122223322233232332332233323322222232333232233332322222222
-- 241:1111111122222222332333333323333322222222333332333333323322222222
-- 242:1233233222332222332323323332233222222332323332323233332222222222
-- 243:b4bb41b491141414911491449114911491149114911491144914914444911449
-- 244:1232232122322322323223233232232322322322333223333332233322222222
-- 245:1232232112322321123223211232232112233221123333211222222111111111
-- 246:73eeee3773eeee37a333333a77a7777777a77777aaaaaaaa77777a7777777a77
-- 247:33733333337333337777777733333733333337337777777733733333eeeeeeee
-- 248:aeeeeeee7aeeeeee7aeeeeaa77aaaa77777777773333333333333333eeeeeeee
-- 249:eeeeeeeaeeeeeea7aaeeeea777aaaa77777777773333333333333333eeeeeeee
-- 250:eeeeeeeeeeeeeeeeeeeeeeeeaaaeeeaa777aaa773333333333333333eeeeeeee
-- 251:337333333373333377777777333337333333e73377eeee77eeeffee3eefeeeee
-- 252:337333333373333377777777333337333333373e777777ee3373eeefeeeeeefe
-- 253:3373333333733333777777773333373333333733777777773373333333733333
-- 254:3373333333733333777777773333373333333733757777573573535355555555
-- 255:77a7777777a77777aaaaaaaa77777a7777777a77aaaaaaaa77a7777777a77777
-- </TILES>

-- <SPRITES>
-- 001:004444000444c440045cc54004cccc400066660000666600006cc60000200200
-- 002:004444000444c440045cc54004c4cc400064660000646f00006ce600002ee200
-- 003:004444000444c440045cc54004cc4c400066460000f64600006ec600002ee200
-- 004:0099990000cccc00002cc20000cccc00003377000c3337c00c3337c000200200
-- 005:0099990000cccc04002cc20400cccc040033770c0c3337c40c33370400200244
-- 006:0099990400cccc04002cc20400cccc0c003377c40c3337040c33374400200200
-- 007:00b55b000b5ccb00052cc20005cccc0005533500055555000055550000200200
-- 008:00b55b000b5ccb00b52cc20055cccc0050553500005c55c00055550000200200
-- 009:00b55b000b5ccb00052cc200b5cccc00555355005c55c5000055550000200200
-- 010:0000000f0007700f0031170f0033330f03111134443333034433330000200200
-- 011:0000000f0007700f0031170f0033330444111133443333000033330000200200
-- 016:0066660000644600002cc20000444400006446000c6666c00c6666c000200200
-- 017:0066660000644600002cc200004444000c6446c0c066660c0066660000200200
-- 018:00eeee0000cccc00002cc20000cccc0000fccf00006666000663366066200266
-- 019:00eeee0000cccc00002cc20000cccc0000fccf00006666006663366606200260
-- 020:0000000000000000000000000006600000066000000000000000000000000000
-- 021:6000600606000060006006006000000000000006006006000600006060060006
-- 022:0006660000666660066e6e660666e666066e6e60060666600600606000006000
-- 023:000000000000000000000000000ff000000ff000000000000000000000000000
-- 024:000000000f0000f000f00f00000000000000000000f00f000f0000f000000000
-- 025:f000000f0f0000f0000000000000000000000000000000000f0000f0f000000f
-- 026:099999900444444007444440044444e0044444e0074444400444444000000000
-- 027:0999999004444440074777400447474004477740074474400444444000000000
-- 032:00000b00000b0b000b0b00b00b0b00b00b0bb0bbbb0bb0bbbbbbbbbb0bbbbbb0
-- 033:000000b000b0b0b000b0b0b000b0b0b00b0bb0bbbb0bb0bbbbbbbbbb0bbbbbb0
-- 034:0000000b000b0b0b000b0b0b00b0bb0b0b00b00bbb0bb0bbbbbbbbbb0bbbbbb0
-- 035:000000000000000b0000000b0b000b00bb0000000000000000bbbb00000bbb00
-- 036:00000000000000000b00000000000000000000000000000b0000000000000000
-- 037:000440000aaafff000a44f0000a66f0000a66f000a6666f00a6666f000aaaa00
-- 038:000440000aaafff000a44f0000a22f0000a22f000a2222f00a2222f000aaaa00
-- 039:000440000aaafff000a44f0000a55f0000a55f000a5555f00a5555f000aaaa00
-- 048:eee0000000e000000e000000e0000eeeeee0000e000000e000000e0000000eee
-- 049:0000000000000000000eee0000000e000000e000000e0000000eee0000000000
-- 050:0000a0000a00a00aea00aaaa0a00a0ee0aaaa0e00a00a0eeea00aaaa0000a00a
-- 051:000a0000a00a00a0aaaa00aeee0a00a00e0aaaa0ee0a00a0aaaa00aea00a0000
-- 052:0000000000000000000e00000006000000040000000400000000000000000000
-- 053:000f000000000000000e00000006000000040000000400000000000000000000
-- 054:00000000000000000000e0000000600000040000000400000000000000000000
-- 055:000000000000000000000e000000600000040000000400000000000000000000
-- 056:000000000000000000e000000006000000040000000400000000000000000000
-- 057:0999999049999999499ee99944e00e44999ee999499999994999999944444449
-- 058:44eeee4441111114411111144444444499e11e99499ee9994999999944444449
-- 059:0000099000994499004944490044449004444900444490004449000004400000
-- 071:0033770000300700003007000033330000037000000370000003770000033300
-- 072:0003370000030700000307000003330000003000000030000000300000003700
-- 073:0007700000037000000370000003300000033000000330000003300000037000
-- 074:9999999944444444e44444ee444444e1444444e1e44444ee4444444400000000
-- 075:9999999944444444ee44444e1e4444441e444444ee44444e4444444400000000
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
-- 000:140c1c24203830346d4e4a4f854c30346524d04648757161597dcece612c8595a16daa2cd2aa996dc2caffc21cdeeed6
-- </PALETTE>
