pico-8 cartridge // http://www.pico-8.com
version 42
__lua__

function _init()
	-- print(stat(90))
	-- print(stat(91))
	-- print(stat(92))
	
	leftspr = 0
	rightspr = 36
	
	cartlever = "neutral"
	cartspeed = 0
	leverpos = 0
	force = 5
	
	seed_fore = .1249
	seed_back = .4629
 	speed = 8
 	distance = 0
 
 dec = {14, 15, 30, 31, 46, 47, 62, 63}
 
 foreground = {}
 background = {}
	
for x = 1, 128 do
  add(background, topography_back(distance))
  add(foreground, topography_fore(distance))
 end
	
end

function _update60()
	if btn(4) and not btn(5) then 
		pumpleft() 
		end
	if btn(5) and not btn(4) then 
		pumpright() 
		end
	if cartspeed > 0 then
		cartspeed -= 1
		end
	if cartspeed > 500 then
		cartspeed *= .995
		end

	if btn(2) then
		cartspeed = 5100
	end
		
for i = 1, 128 do
  del(background, background[1])
  add(background, topography_back(flr(distance/10) + i))
 end

 for i = 1, 128 do
  del(foreground, foreground[1])
  add(foreground, topography_fore(flr(distance/2) + i))
 end

 deco_fill()
 distance += cartspeed/5000

end

function _draw()
 cls(12)
 print(cartlever)
 print(cartspeed)
 print(distance)

 for x = 0, 127 do
	line(x, flr(background[x+1]), x, 127, 2)
	line(x, flr(foreground[x+1]), x, 127, 4)
 end
 rectfill(0, 115, 127, 127, 3)
 rectfill(0,72,128,128,10)
 rectfill(0,104,128,108,6)
 rectfill(0,108,128,128,9)

 draw_cart()

 for i, v in ipairs(decos) do
  spr(v[1], v[2]-distance*4, v[3])
 end

end

function draw_cart()
	sspr(0,11,49,21,30,81)
	sspr(66,11,15,21,40,74,15,21,true)
	sspr(66,11,15,21,54,74,15,21,false)
	sspr(0,0,11,11,37,96)
	sspr(0,0,11,11,61,96)
end

function sinw(pos,period,amp)
    return sin(pos*period)*amp
end


function topography_back(x)
    local pos=x/127
    return 30+flr(sinw(pos+100*seed_back,5,3))
	+flr(sinw(pos+100*seed_back,2,4))
	+flr(sinw(pos+100*seed_back,1,2))
end

function topography_fore(x)
	local pos=x/127
	return 50+flr(sinw(pos+100*seed_fore,0.75,3))
			 +flr(sinw(pos+100*seed_fore,6,0.75))
end

function pumpleft()
	if leverpos > -100 then
		leverpos -= force
		cartspeed += force
		if leverpos < -100 then
			leverpos = -100
		end
	end
	leftspr = 4
	rightspr = 32
end

function pumpright()
	if leverpos < 100 then
		leverpos += force
		cartspeed += force
		if leverpos > 100 then
			leverpos = -100
		end
	end
	leftspr = 0
	rightspr = 36
end

decos = {}

function deco_fill()
	if #decos < 9 then
		add(decos, {rnd(dec), distance*4+128, 65+rnd(60)})
	end
end

function texture_debris()

end


__gfx__
0004444400000009444900000000555000000000555000000000666000000000777000000000000000000000000000000000000000000000000f000000000000
0044040440000044040440000054040540000055050550000066666660000076ddd670000000000000000000000000000002222000000000f00f000000000000
0440040044000404040404000450050055000560050065000666ddd66600076ddddd67000000000000000000000000000022028800000000f0f000f000000000
440404040440944444444490050505050500050505050500066d666d660006ddddddd6000000000000000000000000000220028000000000ff0000f000000000
40004640004040044644004050005450005050005650005066d66766d6607ddddadddd7000000000000000000000000022222288000000000ff0ff00000b00b0
44446664444044446664444055545445455055556665555066d67776d6607ddda7addd70000000000000000000000000022002800000000000ff00000b0b0b00
40004640004040044644004050005550005050005650005066d66766d6607ddddadddd700000000000000000000000000022028800000000000ff0000bbbbb00
440404040440944444444490040505050400050505050500066d666d660006ddddddd6000000000000000000000000000002222000000000000f000000b0b000
0440040044000404040404000540050055000560050065000666ddd66600076ddddd670000000000000000000000000000000000000000000000000000000000
0044040440000044040440000055040550000055050550000066666660000076ddd670000000000000000000000000000088888000000000000a00a000000000
00044444000000094449000000005540000000005550000000006660000000007770000000000000000000000000000022888888000000000a0b0a0000000000
000000000000000000000000000000000000000000000000000000000000044000000000000044000000000000000000078788880000000000b00b0000065550
000000000000000000000000000000000000000000000000000000000000044400000000000044400000000000000000027888880000000000b0b0000665565d
0000000000000000000000000000000000000000000000000000000000000444040000000000444040000000004400000787888800000000000bb0006555555d
00000000000000000000000070000000000000000000000000000000000044444000000000044444000000000044400002888888000000000000b000655555dd
0000000000000000000000007000000000000000000000000000000000040fff000000000040fff0000000000044404000888800000000000000b0005555dddd
0000000000000000000000002000000000000000000000000000000000000fff000000000000fff0000000000444440000000000000000000000000000000000
00000000000000000000000020000000000000000000000000000044fcc00ff1000000000000ff100000000040fff00000025000000000000006556000000000
00000000000000000000000222000000000000000000000000000044fccc811100000000000811100000000000fff00000025500000000000065555500f00000
00000000000000000000000222000000000000000000000000000700000cccc1000000000081cc100000000000fff10005525550000000000655555600ff0f00
000000000000044000000022722000000000000000000000000070000000ccc10000044fcccccc100000000000811100055255550000000006555655000f0ff0
00000000000004400000002070200000000000000000000000070000000011110077744fccccc1100700000000cc110005525550000000000556555d00ffff00
00000000000000770000022070220000000000000000000000000000000111110000000000111110007000000ccc11000002550000000000055555dd0000f000
0000000000000007700002007002000000000000000000000000000000011111000000000011111000070000ccc11100000250000000000000556dd00000f000
78888888888888887788228878822888888888888888888870000000000444440000000000444440000044fccc111100000000000000000000b3300000000000
722222222222222222222222222222222222222222222222700000000000cccc00000000000cccc0000044fcc44444000000000000000000000b3b0000bbb000
788222822282228222822282228222822282228222822288700000000000cccc00000000000cccc0000000000ccccc000000000000000000000330000b838bb0
00888888888888888888888888888888888888888888888000000000000ccc110000000000ccc11000000000cccccc00055560000000000000b33b00be333e3b
00000000200000002000000000000000200000002000000000000000000cc0110000000000cc011000000000ccc0110002556666000000000003b000b333833b
00000000020000020000000000000000020000020000000000000000000cc0110000000000cc0110000000000cc01100055560000000000000033b00b3e333e0
000000000020702000000000000000000020702000000000000000000044455500000000044455500000000044455500000000000000000000b330000b3338b0
000000000007770000000000000000000007770000000000000000000044455500000000044455500000000044455500000000000000000000033b0000b83b00
