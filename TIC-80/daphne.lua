-- title:  Ruby Quest
-- author:lala fairys
-- desc:   Go on a magical quest to find the ruby and save your kingdom!
-- script: lua
DEBUG=false

function randelem(t)
 return t[math.random(#t)]
end

scene=nil

function TIC()
 scene()
end

rooms={}

roomn=nil
room=nil

player={spr=256} -- *** change later

amobs=nil
m_fduck={spr=272,a=2,d=1}
m_gobln={spr=274,a=2,d=1}
m_dragn={spr=290,a=1,d=2}
m_ljell={spr=278,a=2,d=1}
function mob_init(k,x,y)
 return {k=k,x=x,y=y,ca=0,at=0,mt=0}
end

function start_game() 
 scene=sc_explore
 enter_room(1,1)
end

function enter_room(rn,en)
 roomn=rn
 room=rooms[rn]
	ent=room.ent[en]
	player.x=ent.px-room.mx
	player.y=ent.py-room.my
	
	amobs={}
	local m=room.mobs
	if m then
 	for i=1,m.c do
		 local mx=m.x+math.random(m.w)-1
			      my=m.y+math.random(m.h)-1
			amobs[#amobs+1]=mob_init(randelem(m.k),mx,my)
		end
	end
end

function sc_explore_mob(m)
 local mx=(m.x-room.mx)*8
	local my=(m.y-room.my)*8
	local k=m.k
	spr(k.spr+m.ca,mx,my,0,1,0,0,k.d,k.d)

 if m.mt == 0 then
	 local dx=math.random(3)-2
	 local dy=math.random(3)-2
		local nx=m.x+dx
		local ny=m.y+dy
		if not fget(mget(nx,ny),0) then
		 m.x=nx
			m.y=ny
		end
	 m.mt=30
	else
	 m.mt=m.mt-1
	end
	
 if m.at == 0 then
  m.ca=(m.ca+1)%k.a
		m.at=15
	else
  m.at=m.at-1
	end
end
function sc_explore()
	cls(0)
	map(room.mx,room.my)
	if DEBUG then print("ROOM #"..roomn) end
	p=player
	spr(p.spr,p.x*8,p.y*8,0)
	
	for mi,m in pairs(amobs) do
	 sc_explore_mob(m)
 end 
	
	function move(dx,dy)
	 nx=p.x+dx
		ny=p.y+dy
		mnx=room.mx+nx
		mny=room.my+ny
		if room.ext then
		for ei,e in ipairs(room.ext) do
		 if mnx==e.x and mny==e.y then
			 enter_room(e.r,e.e)
				return
			end
		end
		end
		if not fget(mget(mnx,mny),0) then
		 p.x=nx
			p.y=ny
			return
		end
		--- XXX add a bump sound
	end
	if btnp(0,1,10) then move(0,-1) end
	if btnp(1,1,10) then move(0,1) end
	if btnp(2,1,10) then move(-1,0) end
	if btnp(3,1,10) then move(1,0) end
end

rooms[1]=
 { mx=0
 , my=0
	, ent={[1]={ px=1
	           , py=2}
							,[2]={ px=29
							     , py=15}
							,[3]={ px=1
							     , py=16} }
	, ext={[1]={ x=29
	           , y=15
												, r=2
												, e=1 }
							,[2]={ x=1
							     , y=16
												, r=9
												, e=1 } }
 ,	mobs={x=1, y=7, w=27, h=8, c=6
	       ,k={m_fduck, m_ljell} } }

rooms[2]=
 { mx=30
 , my=0
	, ent={[1]={ px=30
	           , py=15 } }
	, ext={[1]={ x=30
	           , y=15
												, r=1
												, e=2 } }
 ,	mobs={x=31, y=11, w=28, h=5, c=7
	       ,k={m_fduck} } }

rooms[9]=
 { mx=0
 , my=17
	, ent={[1]={ px=1
	           , py=17 } }
	, ext={[1]={ x=1
	           , y=17
												, r=1
												, e=3 }
							,[2]={ x=29
							     , y=23
												, r=10
												, e=1 } }
 ,	mobs={x=8, y=17, w=18, h=15, c=8
	       ,k={m_gobln} } }

rooms[10]=
 { mx=30
 , my=17
	, ent={[1]={ px=30
	           , py=23 }
							,[2]={ px=59
							     , py=23 } }
	, ext={[1]={ x=30
	           , y=23
												, r=9
												, e=2 }
							,[2]={ x=59
							     , y=23
												, r=11
												, e=1 } } }

rooms[11]=
 { mx=60
 , my=17
	, ent={[1]={ px=60
	           , py=23 }
							,[2]={ px=89 
							     , py=93 } }
	, ext={[1]={ x=60
	           , y=23
												, r=10
												, e=2 }
							,[2]={ x=89
							     , y=23
												, r=12
												, e=1 } }
 ,	mobs={x=70, y=22, w=1, h=1, c=1
	       ,k={m_dragn} } }
												
rooms[12]=
 { mx=90
 , my=17
	, ent={[1]={ px=90
	           , py=23 } }
	, ext={[1]={ x=90
	           , y=23
												, r=11
												, e=2 }
							,[2]={ x=113
							     , y=23
												, r=13
												, e=1 } } }
rooms[13]=
 { mx=120
 , my=17
	, ent={[1]={ px=135
	           , py=31 } }
	, ext={} } 



start_game()

-- <TILES>
-- 001:ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
-- 002:8888888888888888888888888888888888888888888888888888888888888888
-- 003:4444444444444444444444444444444444444444444444444444444444444444
-- 004:aaaaaaababaaaaaaaaaabaaabbaabbaabaaaabbabbaaaaaaaaaaaaaaabaaabaa
-- 005:4444444444444414444441114444511141144555111144441111544455554444
-- 006:2222222222122222212122222222212222221212221222222121222222222222
-- 007:1616161611111111222222221121121122222222211221126666666666666666
-- 008:116126112d611c1266666666216116161161661266d666661661161121621416
-- 009:6666666666111d66611111c66121211d6122121661fd111671d6111767776776
-- 010:6666666667666666676666766766667666666676666766666667666666666666
-- 011:66777766677777766777777666777766666ee666666ee666666ee666666ee666
-- 012:6666666676766616767661116666611161166666111167661111677666666676
-- 013:666666666636666663f36666663666666666636663663f363f36636663666666
-- 014:6666666666d666666dfd666666d6666666666d666d66dfd6dfd66d666d666666
-- 015:eeeee1eeeeeeee1e11111111eeeeee1eeeeee1ee666ee666666ee666666ee666
-- 016:6666666666ffff666fff33f66ffff3f66ffffff66ffffff666ffff6666666666
-- 017:1111111111ffff111fff33f11ffff3f11ffffff11ffffff111ffff1111111111
-- 018:8888888888ffff888fff33f88ffff3f88ffffff88ffffff888ffff8888888888
-- 019:6666666666cccc666cdd33c6cdddd3dc6cddddc666cddc66666cc66666666666
-- 020:111ee1111120321112000321200000022aa00aa22ddaadd212dddd2111222211
-- 021:666ee6666620326662000326200000022aa00aa22ddaadd262dddd2666222266
-- 022:888ee8888820328882000328200000022aa00aa22ddaadd282dddd2888222288
-- 023:66a666c6d6668666664666668666b696eeeeeeee666ee666666ee666666ee666
-- 024:666666666696666669f96666669666666666696669669f969f96696669666666
-- 025:6666666666b666666bfb666666b6666666666b666b66bfb6bfb66b666b666666
-- 026:666666666656666665f56666665666666666656665665f565f56656665666666
-- 027:6666666666c666666cfc666666c6666666666c666c66cfc6cfc66c666c666666
-- 028:6666666676666666766666116661611166611111661111116111111161111111
-- 029:6666666666666666116666661111666611116666111111111111111111111111
-- 030:6666766676667766766667767666667666666666111166661111116611111111
-- 031:6666666666666666666676666666766666667666666776666666766611666666
-- 032:efeeeefeefeeeefeefeeeefefff22fffefe22efeefeeeefeefeeeefeefeeeefe
-- 033:1111111111111111111111111111111111111111111111111111111111111111
-- 034:2222222222eeee222eeeeee2feeeeee22eeeefe22eeee2e2feeeeee22eeeeee2
-- 035:0000000033200000312222202021212022201010111000000000000000000000
-- 036:0000000000000000332000003122222020212120222010101110000000000000
-- 038:4444444444444444466666646666666646666666666666664666666644666664
-- 039:444fff444ddfffdd46ddddd4666ddd6646666666666666664666666644666664
-- 040:4444444444444444444444114441411144411111441111114111111141111111
-- 041:4444444444444444114444441111444411114444111111111111111111111111
-- 042:4444444444444444444444444444444444411111111111111111111111111111
-- 043:4444444444444444444444444444444414444444114444441144444411444444
-- 044:6111111161111111111111111111111111111111611111116111111161111111
-- 045:1111111111111111111111111111111111111111111111111111111111111111
-- 046:1111111111111111111111111111111111111111111111111111111111111111
-- 047:1116666611116666111166661111666611116676111166771111666711116667
-- 056:4111111141111111111111111111111111111111411111114111111141111111
-- 057:1111111111111111111111111111111111111111111111111111111111111111
-- 058:1111111111111111111111111111111111111111111111111111111111111111
-- 059:1114444411114444111144441111444411114444111144441111444411114444
-- 060:1111111111111111111111111111111111111111111111111111111111111111
-- 061:1111111111111111111111111111111111111111111111111111111111111111
-- 062:1111111111111111111111111111111111111111111111111111111111111111
-- 063:1111666611166666111666661166666611666666116666661166666616666666
-- 072:1111111111111111111111111111111111111111111111111111111111111111
-- 073:1111111111111111111111111111111111111111111111111111111111111111
-- 074:1111111111111111111111111111111111111111111111111111111111111111
-- 075:1111444411144444111444441144444411444444114444441144444414444444
-- 076:1111111111111111111111111111111166111111666111117666111176666666
-- 077:1111111111111111111111111111111111111111111111111666667666666677
-- 078:1111111111111111111111111111111111111111111111166666666666666666
-- 079:1666666616666666166667661666766666667666666676666666666666666666
-- 088:1111111111111111111111111111111144111111444111114444111144444444
-- 089:1111111111111111111111111111111111111111111111111444444444444444
-- 090:1111111111111111111111111111111111111111111111144444444444444444
-- 091:1444444414444444144444441444444444444444444444444444444444444444
-- 176:1111111111111111666116666661166666611666666116666661166666611666
-- 177:1166611611666116116661161111111611111116116661161166611611666116
-- 178:1111166616666666166666661111166616666666166666661666666611111666
-- 179:6111116616666666166116661666116616666166116661666111116666666666
-- 180:6166666661111166611661666166666661666666616666666166666661666666
-- 181:6666666661666661611666616111666161611661616611616166611161666611
-- 182:6666661111666616611611666611166666116666611666661166666616666666
-- 183:6111166661666166616661666111166661666166616661666166616661111166
-- 184:1111111666616666666166666661666666616666666166666661666611111116
-- 185:6666666666111111616666666166666666111116666666616666661661111166
-- 186:6611666666116666661166666611666666116666666666666611666666116666
-- 255:dddddddddb6ee69dd66ff66dd3cccc3dd63cc36dd66c6c6dd76666fddddddddd
-- </TILES>

-- <TILES1>
-- 000:0000000000000000000000000080000000000000000000000000000000000000
-- </TILES1>

-- <SPRITES>
-- 000:0000d0050eeeec550e6f6ed90efffe09cecccec9fcdddcf90cdddc09cdf0fdc0
-- 001:0000d0050eeeec550e6f6ed90efffe09cecccec9fcdddcf90cdddc09cdfffdc0
-- 002:0000d0050eeeec550e6f6ed90efffe09cecccec9fcdddcf90cdddc09cdf0fdc0
-- 003:0000d0050eeeec550e6f6ed90efffe09cecccec9fcdddcf90cdddc09cd000dc0
-- 004:000000000000d0000eeeec000e6f6ed0fefffe00cecccec00cdddcf0cdf0fdc0
-- 005:000000000000c00020333c00003232c030333300c0c3c3200cdddc30cd303dc0
-- 006:0000000000000000000000000000c00003333c0303232033033330033c3c3d30
-- 007:95503449555449400e08f8f00e0ffff00f4444440e04444f0e0455400e450054
-- 008:0000000000aa0aa00aaaa33a0aaaaa3a0aaaaaaa00aaaaa0000aaa000000a000
-- 016:0000000000044400004454400044449900444440044444000444440000909000
-- 017:0000000000044400004454400044449900444440044444000444440000999000
-- 018:00000000000000000060006009666660090a6a0006eeeee0040eee60000e0e00
-- 019:00000000000000000060006009666660090a6a0006eeeee0040eee60000eee00
-- 020:0002220000233320023131320233333202333332023333320232323200202020
-- 021:0002220000233320023131320233333202333332023333320223232202020202
-- 022:0aaaaaa0aabaabaaaaaaaaaaaaaaaaaa0b000b000bb00bb0bb000b000b00bb00
-- 023:0aaaaaa0aabaabaaaaaaaaaaaaaaaaaa00b000b000bb00bb0bb000b000b00bb0
-- 032:00aaaa000abbfba0abbfba00afffbba0abbfba000abbfba000aaaa0000000000
-- 033:00aaaaa00abbfa00abbfbba0afffba00abbfbba00abbfa0000aaaaa000000000
-- 034:000000b00000cacb00cca7cc0ccccccc030300cc000030cc0ccccccc000000cc
-- 035:0000000000000000cbb00000cccbb000ccccb000cccccbb0ccccccb0cccccc00
-- 050:0000bccc0b000bcc0bb000b00cccc0000bcccccc000bcccc0000bcbb00000000
-- 051:00ccccb00000ccb00000cc0000ccccbbcccccccbccccccc0ccccccb00cbbcbb0
-- </SPRITES>

-- <MAP>
-- 000:70707070707070707070707070707070707070707070707070707070707030303030308292a2b23030303030723030308292a2b23030308292a2b230c512c5000012c512c512c512c512c512c512c512c512c512c512c512c512121212121212121212121212121212121212121212121212121212121212000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
-- 001:0b1b2b3b4b5b6b7b2b3b8b9babd0d0d0d0d0d0d0d0d0d0d0d0d0d0d0d0d030303030728393a3b33050303030303030308393a3b33062308393a3b330121200000000000000000012121212121212121212121212121212121212001200120012001200120012001200120012001200120012000000120012000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
-- 002:d0a1a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0d030503030308494a4b430308292a2b23072308494a4b43050308494a4b430c5000012c512c512c5120012c512c512c512c512c512c512c512c512c512121200000012121212121212121212121212121212121200000012121212000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
-- 003:d0a0a0a0a0a0a0a0a0e0a0a0a0a0a1a081a0a0a0a0a0a081a0a0a0a0a0d030303072308595a5b530308393a3b33030308595a5b53030308595a5b530001212121212121212120000120000001212121212120012120000001212001200120012001200120012000000000000001200000000001200120012000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
-- 004:d0a0a0a0010101a0a0a0a0b1a0a0a0a0a0a0a0a091a0a0a0a0a0a0a0a0d0308292a2b23030303072308494a4b4305030303030308292a2b2303050620012c500000000000012c5000000c500c512c512c51200120000c500c512121200121212121212121212000012120012121200120012000012121212000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
-- 005:d0b1a05101010102e0a0a0a0a0a0e0a0a0a0a1a0a0a0a0a0a0a0a0a0a0d0308393a3b3308292a2b2308595a5b58292a2b26230308393a3b330303030001212001212121200121212120012121212000000000012121212001212001200120012000000120012000000120012001200120012000000120012000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
-- 006:d0a0a0a0010101a0a081a0a0a0a0a0a0a0a0a0a0a0a0b1a0b1a0a091a0d0308494a4b4308393a3b330303030308393a3b33030308494a4b48292a2b200000000c512c512c512c51212001212c512c512c5120012c512c5000012121200121212120000121200001212120000120000120012000012121212000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
-- 007:d0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0b1a0a0e0a0a0a0a0a0a0a0a0d0308595a5b5308494a4b430305030308494a4b48292a28595a5b58393a3b3121212121212120000121212120012121212121212120012120000120012121200120012000000000000001200120000000000120000000000120000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
-- 008:d0b1a0a1a0a0a1a0a0a0a0a0a081a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0d06230303030308595a5b572303030308595a5b58393a3b33030308494a4b4c512c512c50000000012c512c5001212c512c512c512c5000000c5120000001200121212000012121212121212120012121212121212120012120012000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
-- 009:d0a0a0a0a0a0a0a0a091a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0d0303030625030303030303030623030306230308494a4b43050308595a5b5121212121200121200121212001212121212121212120000120012121212000000120012001200120012001200120012001200120012000000000012000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
-- 010:d0a0a0a0a0e0a0a0a0a0a0a0a0a1a0a0a0a081a0a0a0a0a0a0a081a0a0d0303050303030303050303030303030303030308595a5b530303030303030c512c512c500c5120012000000000000c512c512c5120012c500c512c512121200001200001212121212120000000000001212121212121212121212000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
-- 011:d0a0a1a0a0a0a0a0a0a0a0a0a0a0a0e0a0a0a0a0b1a0a0e0a0a0a0a0a0d0212121212121212121212121212121212121212121212121212121212121121212121200001200121200121200001212000000000012120012121212001200000000001200120012000000120012000000000012001200120012000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
-- 012:d0a0a0a0a0a0a0a0b1a0a081a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0d021212121212121212121212121212121212121212121212121212121212100120000001200120012c500c5120012c5120012c500c512c512c512c512121212120012121212121212120012121212120000121212121212121212000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
-- 013:d0a091a0a081a0a0a0a0a0a0a0a0a0a081a0a0a0a0a0a0a0a0a0b1a0a0d0101010101010101010101010101010101010101010101010101010101010121200120000001200000000121200121212121212001212121212121212c51200120000001200120012000000120012001200000000001200120012000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
-- 014:d0a0a0a0a0a0a0a0a0a0e0a0a0a0a1a0a0a091a0a0a0a081a0a0a0a0a0f010101010101010101010101010101010101010101010101010101010101000000012c512c512c512c500c512c500000000000000c512c512c512c512121212120000000000001200001212121212121212121200000012121212000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
-- 015:d0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0101010101010101010101010101010101010101010101010101010101010121212121212121212121200000000121212120012001212121212121212c51200120012001200000000001200120012001200120012001200120012000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
-- 016:d022d0d0d0d0d0d0d0d0d0d0d0d0d0d0d0d0d0d0d0d0d0d0d0d0d0d0d0d0101010101010101010101010101010101010101010101010101010101010c512c512c512c512c512c512c512c512c512c512c512c512c512c512c512121212121212121212121212121212121212121212121212121212121212000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
-- 017:a0a0a0a0a0a0a0a060606060606060606060606060606060606060a0a0a0404040404040404040404040404040404040404040404040404040404040404040404040404040404040404040404040404040404040404040404040b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
-- 018:a0a0a0a0a0a0a0a060606060606060606060606060606060606060a0a0a0404040404040404040404040404040404040404040404040404040404040404040404040404040404040404040404040404040404040404040404040b0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0b0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a031a0a0b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
-- 019:a0a0a0a0a0a0a0a060606060606060606060606060606060606060a0a0a0404040404040404040404040404040404040404040404040404040404040404040404060606060606060606060404040404040404040404040404040b0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0b0ffa0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0ffa0a0a0a0a0a0a031a0a0b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
-- 020:a0c0a0c0a0a0c0a060606060606060606060606060606060606060a0a0a0404040404040404040404040404040404040404040404040404040404040404040404060606060606060606060404040404040404040404040404040b0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0b031a0a0a0a031a031a0a0a0a0a0a0a031a031a0a0a0a0a0a0a031a0a0b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
-- 021:a0a0a0a0a0e0a0a060606060606060606060606060606060606060a0a0a0404040404040404040404040404040404040404040404040404040404040404040404060606060606060606060404040404040404040404040404040b0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0b031a0a0a0a031a031a0a0a0a0a0a0a031a0a0a0a0a0a0a0a0a031a0a0b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
-- 022:a0e0a0a0c1d1e1f160606060606060606060606060606060606060a0a0a0404040404040404040404040404040404040404040404040404040404040404040404041606060606060606060404040404040404040404040404040b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b031b0a0a0a0a0a0b031a0a0a0a031a031a0a0a0ffa0a0a031a031a03131313131a031a0a0b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
-- 023:a0c0a0a0c2d2e2f260606060606060606060606060606060606060a0f0a0414111111111606060606040111141111140111141606040606060606040111160604041606060606060606060808080808080808080808080808080808080808080808080808080808080808080808080808071b0a0a0a0a0a0b031a0a0a0a031a031a0a0a031a0a0a031a031a031a0a0a031a031a0a0b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
-- 024:a0a0a0a0c3d3e3f360606060606060606060606060606060606060a0a0a0404040404040404040404040404040404040404040404040404040404040404040404041606060606060606060404040404040404040404040404040b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0a0a0a0a0a0b031a0a0a0a031a031a0a0a031a0a0a031a031a031a0ffa031a0ffa0a0b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
-- 025:a0a0c0a0c4d4e4f460606060606060606060606060606060606060a0a0a0404040404040404040404040404040404040404040404040404040404040404040404060606060606060606060404040404040404040404040404040b0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0b0313131313131a0313131313131313131a031a031a0a0a031a031a0a0b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
-- 026:a0a0a0e0a0a0a0e060606060606060606060606060606060606060a0a0a0404040404040404040404040404040404040404040404040404040404040404040404060606060606060606060404040404040404040404040404040b0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0b0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
-- 027:a0c0a0a0c0a0a0a060606060606060606060606060606060606060a0a0a0404040404040404040404040404040404040404040404040404040404040404040404060606060606060606060404040404040404040404040404040b0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0b0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
-- 028:e0a0a0a00101a0a060606060606060606060606060606060606060a0a0a0404040404040404040404040404040404040404040404040404040404040404040404060606060606060606060404040404040404040404040404040b0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0b0a0a0a0ffa0a0a0a0a0a0a0a0a0ffa0a0a0a0a0a0a0a0a0a0a0a0a0a0b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
-- 029:a0a0a0a00101c0a060606060606060606060606060606060606060a0a0a0404040404040404040404040404040404040404040404040404040404040404040404040404040404040404040404040404040404040404040404040b0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0b0a0a0a0a0a0a0a0a0a0a0a0a0b0b0b0b0b0a0a0a0a0a0a0a0a0a0a0a0b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
-- 030:a0c0a0c0a0a0a0a060606060606060606060606060606060606060a0a0a0404040404040404040404040404040404040404040404040404040404040404040404040404040404040404040404040404040404040404040404040b0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0b0a0a0a0a0a0a0a0a0a0a0a0a0b0a0a0a0b0a0a0a0a0a0a0ffa0a0a0a0b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
-- 031:a0a0a0a0a0a0c0a060606060606060606060606060606060606060a0a0a0404040404040404040404040404040404040404040404040404040404040404040404040404040404040404040404040404040404040404040404040b0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0b0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0a0b0a0a0a0a0a0a0a0a0a0a0a0b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
-- 032:a0a0e0a0a0a0a0a060606060606060606060606060606060606060a0a0a0404040404040404040404040404040404040404040404040404040404040404040404040404040404040404040404040404040404040404040404040b0a0a0b0a0a0a0a0a0a0a0a0a0a0a0b0a0a0a0a0a0a0a0a0a0a0a0a0a0a0b0a0a0a0a0a0a0a0a0a0a0a0a0b0a0a0a0b0a0a0a0a0a0a0a0a0a0a0a0b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
-- 033:a0a0a0c0a0a0a0e060606060606060606060606060606060606060a0a0a0404040404040404040404040404040404040404040404040404040404040404040404040404040404040404040404040404040404040404040404040b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
-- 034:000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000969696969696969696969696969696969696969696969696969600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
-- 035:000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000096969696969696969696969696969696969696969696969696969600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
-- 036:000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000096969600969696969696969696969696969696969696969696969696969600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
-- 037:000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009696969696969696969696969696969696969696969696969696969600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
-- 038:000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000969696969696969696969600122232425262729696969696969600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
-- 039:000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000869696969696969696969603132333435363739696969696969600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
-- 040:000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000869696969696969696969604142434445464749696969696969600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
-- 041:000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000869696969696969696969605152535455565759696969696969600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
-- 042:000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000869696969696969696969606169636465666769696969696969600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
-- 043:000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000869696969696969696969607172737475767779696969696969600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
-- 044:000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000869696969696969696969608182838485868789696969696969600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
-- 045:000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000869696969696969696969609192939499696969696969696969600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
-- 046:000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000868686869696969696969696969696969696969696969696969600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
-- 047:000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000969696969696969696969696969696969696969696969696969600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
-- 048:000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000969696969696969696969696969696969696969696969696969600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
-- 049:000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000969696969696969696969696969696969696969696969696969600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
-- 050:000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000969696969696969696969696969696969696969696969696969600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
-- 135:000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
-- </MAP>

-- <WAVES>
-- 000:00000000ffffffff00000000ffffffff
-- 001:0123456789abcdeffedcba9876543210
-- 002:0123456789abcdef0123456789abcdef
-- </WAVES>

-- <SFX>
-- 000:000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000500000000000
-- </SFX>

-- <FLAGS>
-- 000:00000010001000100010001010100010202020202020200000000000101010100010000000000000101010101010101000000000000000001010101010101010000000000000000010101010101010100000001000000000101010100000000000000000000000000000000000000000000000000000000010100000000000001010101010101010101010000000000010101010101010101010100000000000101010101010101010101000000000001010101010101010101010000000000010101010101010101010100000000000101010101010101010101000000000001010101010101010101010000000000010101010101010101010100000000000
-- </FLAGS>

-- <PALETTE>
-- 000:000000555555aaaaaaffffff0000aa5555ff00aa0055ff5500aaaa5dffffaa0000ff5555aa00aaff55ffaa5500ffff55
-- </PALETTE>

-- <PALETTE1>
-- 000:040014616165da00ffff00ff0095c200008199000000fa00006100faee0004ffff0485854c4848995000faffffff7900
-- </PALETTE1>
