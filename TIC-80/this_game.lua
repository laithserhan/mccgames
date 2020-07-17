-- title:  Commander Grey
-- author: Blaistic Ghoul Studios
-- desc:   Nothing yet more to come
-- script: lua

t=0
x=4*8
y=5*8

function TIC()

	if btnp(0) then y=y-8 end
	if btnp(1) then y=y+8 end
	if btnp(2) then x=x-8 end
	if btnp(3) then x=x+8 end

	cls(0)
	map(0,0)
	spr(256,x,y,0)
	t=t+1
end

-- <TILES>
-- 001:011dd110007777000076670000776700007677000077670000777700011dd110
-- 002:011dd110007667000077670000767700007767000077770000777700011dd110
-- 003:011dd110007777000076670000776700007677000077670000777700011dd110
-- 004:011dd110007777000077770000766700007767000076770000776700011dd110
-- 005:0115511000222200002020000000000000000000000202000022220001155110
-- 006:0115511000222200000202000000000000000000002020000022220001155110
-- 007:2222222021121120211211202112112021151120211211202112112021121120
-- 008:2222222021000120210001202100012027000020210001202100012021000120
-- 009:5555555554544555555445455455555554554455555544555545554555555555
-- 010:5551155551111115512112151112211111211211512112155111111445511555
-- 011:5551155554511555555115455451155554511455555114555541154555511555
-- 012:5555555554544555555445451111111111111111555544555545554555555555
-- 013:aaaaaaaaababbaaaaaabbabaabaaaaaaabaabbaaaaaabbaaaabaaabaaaaaaaaa
-- 014:aaa22aaaa222222aa212212a2221122222122122a212212aa222222bbaa22aaa
-- 015:5551155551111115511221151122111111112111512211155111111445511555
-- 016:0006666066677776777777777677767777767777777777777767776777777777
-- 017:2222222221212121111111111111111111111111111111111111111111111111
-- 018:0000000000000000111111110101010110101010111111110011010000101100
-- 019:0000000000000000111111110101010110101010111111110000000000000000
-- 020:0000000000000000222222220202020220202020222222220022020000202200
-- 021:0000000000000000181111180101010110001000811181110011010000101800
-- 022:0000000000000000811811110101010110008000811111180000000000000000
-- 023:0000000000000000000800000000000000000180010000008100000000000000
-- 025:6666666667677666666776766766666667667766666677666676667666666666
-- 026:6661166661111116612112161112211111211211612112166111111776611666
-- 027:6661166667611666666116766761166667611766666117666671167666611666
-- 028:6666666667677666666776761111111111111111666677666676667666666666
-- 029:aaa22aaaaba22aaaaaa22abaaba22aaaaba22baaaaa22baaaab22abaaaa22aaa
-- 030:aaaaaaaaababbaaaaaabbaba2222222222222222aaaabbaaaabaaabaaaaaaaaa
-- 031:6661166661111116611111161111111111111111611111166111111776611666
-- 032:0000000000000000000666606667777677777777767776777776777777777777
-- 033:4444444445454545555555555555554445455554554455555555545554554455
-- 034:0011010000101100001101000010110000110100001011000011010000101100
-- 035:0000000000000000222222220202020220202020222222220000000000000000
-- 036:0022020000202200002202000020220000220200002022000022020000202200
-- 037:0081010000100100001101000010180000180100001001000081010000101800
-- 039:0000000000000000000000000000000000000000000000000100000081080180
-- 041:0001100001111110012112101112211111211211012112100111111000011000
-- 042:0001100000011000000110000001100000011000000110000001100000011000
-- 043:0000000000000000000000001111111111111111000000000000000000000000
-- 044:7777777777777777777777771111111111111111777777777777777777777777
-- 045:2222222222222222222222222222222222222222222222222222222222222222
-- 046:2221122221111112214114121114411111411411214114122111111222211222
-- 047:aaa22aaaa222222aa222222a2222222222222222a222222aa222222bbaa22aaa
-- 048:7777777777677767777777777633337777313177773323777767776777777777
-- 049:7777777777677767777777777677767777767777777777777767776777777777
-- 050:000110000000110d0000011000d0110000011000001100000d011d0000110000
-- 051:1111111111111111111111111111111111111111111111111111111111111111
-- 052:1111111005050500050505000505050005050500050505000505050011111110
-- 053:1111111000000000000000000000000000000000000000000000000011111110
-- 054:00000000051111e0001991000e11915000191100051111e00000000000000000
-- 055:0000001100000011001111110011111100111111001111111111111111111111
-- 056:1100000011000000111111001111110011111100111111001111111111111111
-- 057:1111111111111111111111111111111111111111111111111111111111111111
-- 058:0000000000011010010110000000000100010000011001110110011100000111
-- 060:2221122221111112214444121141111111441111214111122111111222211222
-- 061:2221122222211222222112222221122222211222222112222221122222211222
-- 062:2222222222222222222222221111111111111111222222222222222222222222
-- 064:2222222222222222221111222211112222111122221111222211112222111122
-- 065:2222220022222200111122001111220011112200111122001111220011112200
-- 066:2222222222222222221100002211000022110000221100002211000022110000
-- 067:2222220022222200001122000011220000112200001122000011220000112200
-- 071:1111111111111111001111110011111100111111001111110000001100000011
-- 072:1111111111111111111111001111110011111100111111001100000011000000
-- 080:2211115522111155221111222211112222111122221111222211112222111122
-- 081:1111220011112200111122001111220011112200111122001111220011112200
-- 082:2277000022770000221100002211000022110000221100002211000022110000
-- 083:0000220000002200001122000011220000112200001122000011220000112200
-- 163:1111111111111111111111111111111111111111111111111111111111111111
-- 178:2222222222222222222222222222222222222222222222222222222222222222
-- 179:2222222222222222222222222222222222222222222222222222222222222222
-- 180:2222222222222222222222222222222222222222222222222222222222222222
-- 181:1111111111111111111111111111111111111111111111111111111111111111
-- 182:1111111111111111111111111111111111111111111111111111111111111111
-- 192:1111111111111111111111111111111111111111111111111111111111111111
-- 193:2222222222222222222222222222222222222222222222222222222222222222
-- 194:7777777777777777777777777777777777777777777777777777777777777777
-- 195:7777777777777777777777777777777777777777777777777777777777777777
-- 196:2222222222222222222222222222222222222222222222222222222222222222
-- 197:2222222222222222222222222222222222222222222222222222222222222222
-- 208:1111111111111111111111111111111111111111111111111111111111111111
-- 209:2222222222222222222222222222222222222222222222222222222222222222
-- 210:7777777777777777777777777777777777777777777777777777777777777777
-- 211:7777777777777777777777777777777777777777777777777777777777777777
-- 212:2222222222222222222222222222222222222222222222222222222222222222
-- 213:2222222222222222222222222222222222222222222222222222222222222222
-- 226:2222222222222222222222222222222222222222222222222222222222222222
-- 227:2222222222222222222222222222222222222222222222222222222222222222
-- 228:2222222222222222222222222222222222222222222222222222222222222222
-- 229:1111111111111111111111111111111111111111111111111111111111111111
-- 230:1111111111111111111111111111111111111111111111111111111111111111
-- 243:1111111111111111111111111111111111111111111111111111111111111111
-- 255:3333333330111103311001133104041331000013311111113111111331333333
-- </TILES>

-- <SPRITES>
-- 000:0000000000000000008888000089990000889900008888000808808000800800
-- 001:0000000000000000008888000089990000889900008888000808808000088000
-- 002:0000000000000000008888000089990000889900008888000808808000800800
-- 003:0000000000000000008888000089990000889900088888800008800000800800
-- 004:0000000000000000008888000089990000889900008888000808808000800800
-- 005:0000000000888800008999000088990008888880000880000080080000000000
-- 006:0000000000000000008888000089990000889900008888110808808000800800
-- 007:0000000000000000008888000089990000889910008888100808808000800800
-- 008:0099990009333390093131900933239093233329099239900939939000900900
-- 009:0000000000000000000000000000000000888800008990000688096061888816
-- 010:0000000000000000000000000000000000055000000000000000000000000000
-- 011:0000000000001000011222000022ff210022ff21011222000000100000000000
-- 016:000000000000000000cccc0000ceee0000ccee0000cccc000c0cc0c000c00c00
-- 017:000000000000000000cccc0000ceee0000ccee0000cccc000c0cc0c0000cc000
-- 018:000000000000000000cccc0000ceee0000ccee0000cccc000c0cc0c000c00c00
-- 019:000000000000000000cccc0000ceee0000ccee000cccccc0000cc00000c00c00
-- 020:000000000000000000cccc0000ceee0000ccee0000cccc000c0cc0c000c00c00
-- 021:0000000000cccc0000ceee0000ccee000cccccc0000cc00000c00c0000000000
-- 022:000000000000000000cccc0000ceee0000ccee0000cccc110c0cc0c000c00c00
-- 023:000000000000000000cccc0000ceee0000ccee1000cccc100c0cc0c000c00c00
-- 024:00ffff000f3333f00f3131f00f3323f0f323332f0ff23ff00f3ff3f000f00f00
-- 025:0000000000000000000000000000000000cccc0000cee00004cc0e404dccccd4
-- 026:00000000000000000000000000000000000ff000000000000000000000000000
-- 032:0000000000000c00008888c0008c9cc00088c90c008888c00c08808000800800
-- 033:0000000000000c00008888c0008c9cc00088c90c008888c00c08808000088000
-- 034:0000000000000c00008888c0008c9cc00088c90c008888c00c08808000800800
-- 035:0000000000000c00008888c0008c9cc00088c90c0c8888800008800000800800
-- 036:0000000000000c00008888c0008c9cc00088c90c008888c00c08808000800800
-- 037:00000c00008888c0008c9cc00088c90c0c888880000880000080080000000000
-- 038:0000000000000c00008888c0008c9cc00088c90c008888110c08808000800800
-- 039:0000000000000c00008888c0008c9cc00088c91c008888100c08808000800800
-- 040:0099990009333390093c3c900933d39093d333d9099d39900939939000900900
-- 041:00000000000000000000000000000c00008888c0008c9cc00688c96c61888816
-- 042:0000000000000000000000000000000000077000000000000000000000000000
-- 048:0000000000000000007070000077770000717100007777000707707000700700
-- 049:0000000000000000007070000077770000717100007777000707707000077000
-- 050:0000000000000000007070000077770000717100007777000707707000700700
-- 051:0000000000000000007070000077770000717100077777700007700000700700
-- 052:0090900009393900093333900931319093233329099239900939939000900900
-- 053:000000000000000000000000000000000070700000777700067171606e7777e6
-- 064:0000000000000000001111000011110000141400001111000101101000100100
-- 065:0000000000000000001111000011110000141400001111000101101000011000
-- 066:0000000000000000001111000011110000141400001111000101101000100100
-- 067:0000000000000000001111000011110000141400011111100001100000100100
-- 068:0000000000000000001111000011110000141400001111000101101000100100
-- 069:0000000000111100001111000014140001111110000110000010010000000000
-- 070:0099990009333390093333900931319093233329099239900939939000900900
-- 071:0000000000000000000000000000000000111100001111000214142023111132
-- 080:0000000000555500005454000055550005055050005555000505505000500500
-- 081:0000000000555500005454000055550005055050005555000505505000055000
-- 082:0000000000555500005454000055550005055050005555000505505000500500
-- 083:0000000000555500005454000555555000555500055555500005500000500500
-- 084:0099990009333390093131900933239092933939092332909392392909399390
-- 085:0000000000000000000000000000000000000000005555000554545054555545
-- 096:0000000000000000000220000024520000244200002222000210021002100210
-- 097:0000000000000000000220000024520000244200002222000120012001200120
-- 098:0000000000000000000220000024520000244200002222000210021002100210
-- 099:0000000000000000000220000025420000244200002222000210021002100210
-- 100:0000000000000000000000000000500000050000000000000000000000000000
-- 101:0000000000000000000000000000000000055000000000000000000000000000
-- 102:0000000000000000000000000000500000005000000000000000000000000000
-- 103:0000000000000000000220000024520000244200002222000210021002100210
-- 104:0000000000900000000290900099920000299900092922000210091002100210
-- 105:0000000000000000000000000000000000022000002052000024020022222211
-- 112:00000000000000000002c0000024520000244c0000c22200021002100c100210
-- 113:00000000000000000002c0000024520000244c0000c222000120012001c00120
-- 114:00000000000000000002c0000024520000244c0000c22200021002100c100210
-- 115:00000000000000000002c0000025420000244c0000c22200021002100c100210
-- 116:0000000000000000000000000000500000050000000000000000000000000000
-- 117:0000000000000000000000000000000000055000000000000000000000000000
-- 118:0000000000000000000000000000500000005000000000000000000000000000
-- 119:00000000000000000002c0000024520000244c0000c222000210021002100210
-- 120:0000000000d000000002d0d000ddd200002ddd000dcd220002100d1002100210
-- 121:000000000000000000000000000000000002c0000020520000240c00c2c2221c
-- 144:00044400004444400043030001440030d10444400010d000110111000d1010d0
-- 145:00000000000444000044444001430300d144003000144440110111000d1010d0
-- 146:00000000000000000d00044000114000010d0440001000000d01000011110000
-- 147:00000000000000400d00040000114000010d0400001000400d01000011110000
-- 160:00ccc0000c999c000c909c000c999cc000ccc0c000000ccc0cccccdccddddddc
-- 161:00ccc0000c999c000c099c000c999cc000ccc0c000000ccc0cccccdccddddddc
-- 162:00ccc0000c999c000c909c000c999cc000ccc0c000000ccc0cccccdccddddddc
-- 163:00ccc0000c999c000c990c000c999cc000ccc0c000000ccc0cccccdccddddddc
-- 164:00ccc0000ccccc000ccccc000cccccc000ccc0c000000ccc0cccccdccddddddc
-- 176:000ccc0000c999c000c099c00cc999c00c0ccc00ccc00000cdccccc0cddddddc
-- 177:000ccc0000c999c000c909c00cc999c00c0ccc00ccc00000cdccccc0cddddddc
-- 178:000ccc0000c999c000c990c00cc999c00c0ccc00ccc00000cdccccc0cddddddc
-- 179:000ccc0000c999c000c909c00cc999c00c0ccc00ccc00000cdccccc0cddddddc
-- 180:000ccc0000ccccc000ccccc00cccccc00c0ccc00ccc00000cdccccc0cddddddc
-- 192:0000000000000000000000000000000000333300003131000133231013233321
-- 193:0000000000000000000000000000000000333300003c3c000c33d3c0c3d333dc
-- 194:000000000000000000333300003c3c000033d30000d33300030d30d000300300
-- 195:000000000000000000333300003c3c000033d30000d33300030d30d000033000
-- 196:0000000000000000003333000031310000332300002333000302302000300300
-- </SPRITES>

-- <MAP>
-- 001:000000009090909090900000000000000091919191919191919191910000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
-- 002:0000009090a3a390909090a3a3a3a3a3a391919191919191919191910000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
-- 003:000000909090a3a0a3c0a0c0b2b2b2b2c1a1c1c1c1f1c1c1c1a191910000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
-- 004:00000090909090b0a3a3909090a3a3a39191919191b1919191b191910000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
-- 005:00000090f0c0c0a0909090a3900000009191919191b1919191b191910000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
-- 006:000000009090909090909090a30000000091919191a1c1c1c1a191910000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
-- 007:00000000009090909090909000a3a3000000919191b19191919191000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
-- 008:000000000000000000000000000000a3a300009191b19191919100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
-- 009:0000000000000000000000000000000000a3000091b19191919100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
-- 010:00000a1a2a3a4a5a6a0000000000000000000000a3a2a300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
-- 011:00000b1b2b3b4b5b6ba3a3a3a3a3a30000000000d0d1d0d0d0d000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
-- 012:00000cc3c2c2e3e2b2b2b2b2b292a300d0d0d0d0d0d1d0d0d0d0d0d00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
-- 013:00000d1d2d3d4d5da3a3a3a3a3a2a3d0d0e0e1e1e1f2e1e1e1e1e0d0d000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
-- 014:00000e1e2e3e4e5e6e000000a3a2d0d0d0d1d0d0d0d0d0d0d0d0d1d0d000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
-- 015:00000f1f2f3f4f5f6f000000a3e0e1e1e1f2e1e1e1e0e1e1e1e1f2d0d0d0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
-- 016:00000000000000000000000000d0d0d0d0d0d0d0d0d0d0d0d0d0d0d0d0d0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
-- </MAP>

-- <WAVES>
-- 000:00000000ffffffff00000000ffffffff
-- 001:0123456789abcdeffedcba9876543210
-- 002:0123456789abcdef0123456789abcdef
-- </WAVES>

-- <SFX>
-- 000:000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000304000000000
-- </SFX>

-- <FLAGS>
-- 000:00000000000000000010000000100000001010101010100000100000000000000010001000000000000000000010000000000010100000101010100000000000000000000000001010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000001010101010000000000000000000101010101010000000000000000000001010101010100000000000000000000000001010101010000000000000000000000000100000000000000000000000
-- </FLAGS>

-- <PALETTE>
-- 000:0000007e7e7ebebebeffffff7e0000ff0000007e0000ff007e7e00ffff0000007e0000ff7e007eff00ff007e7e00ffff
-- </PALETTE>
