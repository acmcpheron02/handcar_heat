pico-8 cartridge // http://www.pico-8.com
version 42
__lua__

function _init ()
	-- print(stat(90))
	-- print(stat(91))
	-- print(stat(92))
  poke4(0x5600,unpack(split"0x9.0908,0x.0100,0x1100,0x7.0700,0x.0070,0x700.7000,0,0,0,0x7.0070,0,0,0x.0007,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0x3f3f.3f3f,0x3f3f.3f3f,0x3f3f.3f00,0x3f.3f3f,0x333f.3f00,0x3f.3f33,0xc33.3300,0x33.330c,0x33.3300,0x33.3300,0x3333.3300,0x33.3333,0x3f3c.3000,0x30.3c3f,0x3f0f.0300,0x3.0f3f,0x303.0f0f,0,0,0x7878.6060,0x1e3f.3300,0xc3f.0c3f,0xc00,0x.000c,0,0x181c.0c0c,0,0xf0f.0f0f,0x66.7733,0,0x3e36.3e1c,0x.001c,0,0,0x1e3f.3f3f,0xc0c.001e,0x6677.3333,0,0x367f.7f36,0x367f.7f36,0x3f1b.7f7e,0x3f7f.6c7e,0x3873.6300,0x6367.0e1c,0x1f1b.1f0e,0x1e3f.737e,0xc1c.1818,0,0x307.7e7c,0x7c7e.0703,0x6070.3f1f,0x1f3f.7060,0x1c3e.3600,0x.363e,0x3f0c.0c00,0xc.0c3f,0,0xc1c.1818,0x7e00,0x.007e,0,0xc0c,0x3870.6000,0x307.0e1c,0x6b63.7f3e,0x3e7f.636b,0x181f.1f18,0x7f7f.1818,0x7e60.7f3f,0x7f7f.033f,0x7c60.7f3f,0x3f7f.603c,0x676e.7c78,0x6060.7f7f,0x3f03.7f7f,0x3f7f.607f,0x3f03.7f7e,0x3e7f.637f,0x3870.7f7f,0x307.0e1c,0x3e63.7f3e,0x3e7f.637f,0x7f63.7f3e,0x3f7f.607e,0x.1818,0x1818,0x.1818,0xc1c.1818,0x1f7c.7000,0x70.7c1f,0x7f.7f00,0x7f.7f00,0x7c1f.0700,0x7.1f7c,0x7c60.7f3f,0xc0c.003c,0x7b6b.7f3e,0x7e7f.037b,0x7e60.7e3e,0x7e7f.637f,0x3f03.0303,0x3f7f.637f,0x637f.3e00,0x3e7f.6303,0x7e60.6060,0x7e7f.637f,0x7f63.7f3e,0x7e7f.037f,0x1f66.7e3c,0x606.061f,0x3f33.7f7e,0x1f3f.381e,0x3f03.0303,0x6363.637f,0xc00.0c0c,0x181c.0c0c,0x6000.6060,0x3e7f.6360,0x7363.0303,0x6373.3f3f,0xc0c.0c0c,0x181c.0c0c,0x7f7f.3600,0x6363.636b,0x7f3f.0300,0x6363.6363,0x637f.3e00,0x3e7f.6363,0x637f.3f00,0x303.3f7f,0x637f.7e00,0x6060.7e7f,0x7f3f.0300,0x303.0363,0x77f.7e00,0x3f7f.703e,0x7f7f.0606,0x7c7e.0606,0x6363.6300,0x3e7f.6363,0x7763.6300,0x1c1c.3e3e,0x6363.6300,0x367f.7f6b,0x3e77.6300,0x6377.3e1c,0x7f63.6300,0x3f7f.607e,0x387f.7f00,0x7f7f.0e1c,0x303.7f7f,0x7f7f.0303,0xe07.0300,0x6070.381c,0x6060.7f7f,0x7f7f.6060,0x363e.1c08,0,0,0x7f7f,0x181c.0c0c,0,0x7f63.7f3e,0x6363.637f,0x3f63.7f3f,0x3f7f.637f,0x363.7f3e,0x3e7f.6303,0x6363.7f3f,0x3f7f.6363,0x3f03.7f7f,0x7f7f.033f,0x3f03.7f7f,0x303.033f,0x7b03.7f7e,0x3e7f.637b,0x7f63.6363,0x6363.637f,0xc0c.7f7f,0x7f7f.0c0c,0x3030.7e7e,0x1e3f.3330,0x1f3b.7363,0x6373.3b1f,0x303.0303,0x7f7f.0303,0x7f7f.3636,0x6363.636b,0x7f6f.6763,0x6363.737b,0x6363.7f3e,0x3e7f.6363,0x6363.7f3f,0x303.3f7f,0x6363.7f3e,0xfeff.7363,0x6363.7f3f,0x6373.3f7f,0x3f03.7f7e,0x3f7f.607e,0xc0c.7f7f,0xc0c.0c0c,0x6363.6363,0x3e7f.6363,0x3677.6363,0x81c.1c3e,0x6b63.6363,0x3636.7f7f,0x3e77.6363,0x6363.773e,0x7f63.6363,0x3f7f.607e,0x3870.7f7f,0x7f7f.0e1c,0x706.7e7c,0x7c7e.0607,0x1818.1818,0xc0c.0c0c,0x7030.3f1f,0x1f3f.3070,0x3b7f.7f6e,0,0x3e36.3e3e,0x.003e,0xffff.ffff,0xffff.ffff,0xcccc.3333,0xcccc.3333,0x497f.6300,0x3e63.777f,0x7777.3e00,0x3e77.6341,0x3030.0303,0x3030.0303,0xfcfc.0c0c,0x3030.3f3f,0x4f4f.3e00,0x3e7f.7f7f,0x7f7f.3600,0x81c.3e7f,0x7f7f.3e00,0x3e7f.7f77,0x7f1c.1c00,0x363e.1c7f,0x3e1c.0800,0x3636.3e7f,0x7377.3e00,0x3e77.7341,0x497f.3e00,0x3e63.417f,0x1818.7838,0xe1f.1f1e,0x637f.3e00,0x3e7f.6349,0x7f7f.3e00,0x3e7f.7f7f,0x3300,0x.0033,0x6777.3e00,0x3e77.6741,0x7f1c.0800,0x6377.3e7f,0x3e7f.7f00,0x7f7f.3e1c,0x6377.3e00,0x3e77.7741,0x40e.1f1b,0x2070.f8d8,0xeec7.8301,0x10.387c,0x6b5d.3e00,0x3e5d.6b77,0x.ffff,0x.ffff,0x3333.3333,0x3333.3333"))
  poke(0x5f58,0x81)
  poke(0x5602,10)

	leftspr = 0 
	rightspr = 36
	
	cartlever = "neutral"
	cartspeed = 0
	leverpos = 0
	force = 3
	
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
	if btn(0) and not btn(1) then 
		pumpleft() 
		end
	if btn(1) and not btn(0) then 
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
   --print(cartlever)
   --print(cartspeed)
   --print(distance)
   
	draw_clouds()
	draw_terrain()
	draw_sandtexture()
	draw_deco()
	draw_cart()
	draw_ui()
  
end
  
function draw_sandtexture()
  sspr(96, 32, 32, 32, 0, 64)
end

function draw_deco()
  for i, v in ipairs(decos) do
    spr(v[1], v[2]-distance*4, v[3])
  end
end

function draw_sandtexture()
  moveby = (distance*4)%128
  print(moveby)
  sspr(96, 32, 32, 32, 0 - moveby, 69)
  sspr(96, 32, 32, 32, 0 - moveby, 102)
  sspr(96, 32, 32, 32, 32 - moveby, 69)
  sspr(96, 32, 32, 32, 32 - moveby, 102)
  sspr(96, 32, 32, 32, 64 - moveby, 69)
  sspr(96, 32, 32, 32, 64 - moveby, 102)
  sspr(96, 32, 32, 32, 96 - moveby, 69)
  sspr(96, 32, 32, 32, 96 - moveby, 102)
  sspr(96, 32, 32, 32, 128 - moveby, 69)
  sspr(96, 32, 32, 32, 128 - moveby, 102)
  sspr(96, 32, 32, 32, 160 - moveby, 69)
  sspr(96, 32, 32, 32, 160 - moveby, 102)
  sspr(96, 32, 32, 32, 192 - moveby, 69)
  sspr(96, 32, 32, 32, 192 - moveby, 102)
  sspr(96, 32, 32, 32, 224 - moveby, 69)
  sspr(96, 32, 32, 32, 224 - moveby, 102)
end

function draw_ui()
  --lever bg
	rectfill(33,74,92,77,8)
	rectfill(39,74,86,77,2)
  --lever knob
	rectfill(62+(leverpos*-.3),70,64+(leverpos*-.3),80, 6)
	rectfill(62+(leverpos*-.3),71,64+(leverpos*-.3),79, 7)
  
  --money bg
  --rectfill(3,3,46,16,13)

  --money content
  print("$",5,5,1)
  print("$",5,6,11)
  print("0099",14,5,1)
  print("0099",15,6,9)
  print(flr(distance/2), 125-(9*#tostr(flr(distance/2))),5,1)
  print(flr(distance/2), 125-(9*#tostr(flr(distance/2))),6,13)

  --distance

end

function draw_cart()
  rectfill(0,112,128,116,6)
  sspr(0,11,49,21,39,89)
  if leverpos < -33 then
    sspr(51,11,15,21,49,82,15,21,true)
    sspr(81,11,15,21,63,82,15,21,false)
  end
  if -34 < leverpos and leverpos < 34 then
    sspr(66,11,15,21,49,82,15,21,true)
    sspr(66,11,15,21,63,82,15,21,false)
  end
  if 33 < leverpos then
    sspr(81,11,15,21,49,82,15,21,true)
    sspr(51,11,15,21,63,82,15,21,false)
  end
  sspr(0,0,11,11,46,104)
  sspr(0,0,11,11,70,104)
  spr(012,84,106)
end

function draw_terrain()
	for x = 0, 127 do
		line(x, flr(background[x+1]), x, 127, 2)
		line(x, flr(foreground[x+1]), x, 127, 4)
	 end
	 rectfill(0,115,127,127,3)
	 rectfill(0,69,128,128,10)
	 rectfill(0,114,128,128,9)
end

function draw_clouds()
	circfill(0 ,0 ,8,7)
	circfill(10,10,8,7)
	circfill(20,15,8,7)
	circfill(40,20,8,7)
	circfill(50,10,8,7)
	circfill(20,40,8,7)
	circfill(25,35,8,7)
	circfill(70,20,8,7)
	circfill(75,35,8,7)
	circfill(90,30,8,7)
	circfill(95,25,8,7)
	circfill(110,35,8,7)
	circfill(115,40,8,7)
end

function sinw(pos,period,amp)
    return sin(pos*period)*amp
end


function topography_back(x)
    local pos=x/127
    return 40+flr(sinw(pos+100*seed_back,5.5,3))
	+flr(sinw(pos+100*seed_back,2,4))
	+flr(sinw(pos+100*seed_back,1,2))
end

function topography_fore(x)
	local pos=x/127
	return 58+flr(sinw(pos+100*seed_fore,0.75,3))
			 +flr(sinw(pos+100*seed_fore,6,0.75))
end

function pumpright()
	if leverpos > -100 then
		leverpos -= force
		cartspeed += force * 2
		if leverpos < -100 then
			leverpos = -100
		end
	end
	leftspr = 4
	rightspr = 32
end

function pumpleft()
	if leverpos < 100 then
		leverpos += force
		cartspeed += force * 2
		if leverpos > 100 then
			leverpos = 100
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
0004444400000009444900000000555000000000555000000000666000000000777000000000000000055550000000008880000000000000000f000000000000
0044040440000044040440000054040540000055050550000066666660000076ddd670000005d550055dddda000000008888000000000000f00f000000000000
0440040044000404040404000450050055000560050065000666ddd66600076ddddd67000055daa50ddddaaa00dd05508888000000000000f0f000f000000000
440404040440944444444490050505050500050505050500066d666d660006ddddddd600055dddda5ddddddd0ddda5550888800000000000ff0000f000000000
40004640004040044644004050005450005050005650005066d66766d6607ddddadddd705adaaddd5aaadddddddd5d5508888000000000000ff0ff00000b00b0
44446664444044446664444055545445455055556665555066d67776d6607ddda7addd70addddddd5addddd5adad55a5008888000000000000ff00000b0b0b00
40004640004040044644004050005550005050005650005066d66766d6607ddddadddd70ddddaaadaadddd555dd555550088880000000000000ff0000bbbbb00
440404040440944444444490040505050400050505050500066d666d660006ddddddd600dddaddddadddda550dd5a5a50008888000000000000f000000b0b000
0440040044000404040404000540050055000560050065000666ddd66600076ddddd670000000000000000000000000000000000000000000000000000000000
0044040440000044040440000055040550000055050550000066666660000076ddd6700000000000000000000000000000888880000000000009009000000000
0004444400000009444900000000554000000000555000000000666000000000777000000000000000000000000000002288888800000000090b090000000000
000000000000000000000000000000000000000000000000000000000000044000000000000044000000000000000000078788880000000000b00b0000065550
000000000000000000000000000000000000000000000000000000000000044400000000000044400000000000000000027888880000000000b0b0000665565d
0000000000000000000000000000000000000000000000000000000000000444040000000000444040000000004400000787888800000000000bb0006555555d
00000000000000000000000070000000000000000000000000000000000044444000000000044444000000000044400002888888000000000000b000655555dd
0000000000000000000000007000000000000000000000000000000000040fff000000000040fff0000000000044404000888800000000000000b0005555dddd
0000000000000000000000002000000000000000000000000000000000000fff000000000000fff0000000000444440000000000000000000000000000000000
00000000000000000000000020000000000000000000000000000044fcc00ff1000000000000ff100000000040fff00000025000000000000006556000000000
00000000000000000000000222000000000000000000000000000044fccc811100000000000811100000000000fff00000025500000000000065555500f00000
0000000000000000000000022200000000000000000000000000070000ccccc1000000000081cc100000000000fff10005525550000000000655555600ff0f00
000000000000044000000022722000000000000000000000000070000000ccc10000044fcccccc100000000000811100055255550000000006555655000f0ff0
00000000000004400000002070200000000000000000000000070000000011110077744fccccc1100700000000cc110005525550000000000556555d00ffff00
00000000000000770000022070220000000000000000000000000000000111110000000000111110007000000ccc11000002550000000000055555dd0000f000
0000000000000007700002007002000000000000000000000000000000011111000000000011111000070000ccc11100000250000000000000556dd00000f000
78888888888888887788228878822888888888888888888870000000000444440000000000444440000044fccc111100000000000000000000b3300000000000
722222222222222222222222222222222222222222222228700000000000cccc00000000000cccc0000044fcc44444000000000000000000000b3b0000bbb000
788222822282228222822282228222822282228222822228700000000000cccc00000000000cccc0000000000ccccc000000000000000000000330000b838bb0
00888888888888888888888888888888888888888888822880000000000ccc110000000000ccc11000000000cccccc00055560000000000000b33b00be333e3b
00000000200000002000000000000000200000002008888880000000000cc0110000000000cc011000000000ccc0110002556666000000000003b000b333833b
00000000020000020000000000000000020000020000000000000000000cc0110000000000cc0110000000000cc01100055560000000000000033b00b3e333e0
000000000020702000000000000000000020702000000000000000000044455500000000044455500000000044455500000000000000000000b330000b3338b0
000000000007770000000000000000000007770000000000000000000044455500000000044455500000000044455500000000000000000000033b0000b83b00
000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f0000000000000
000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007000000000000000f0000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000700000900000000
000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f0000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000090000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000700
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000070000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000700000000000090000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f000000000000009
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000900000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000700000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000700
000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f0000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f00000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f00000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009000000000000000000000000007000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000070000000000
000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f0000000000000000
000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f0000000000000000000000000
00020702000000000000000000020702000000000000000000044455500000000044455500000000044455500000000000000000000b330000b3338b00000000
000000000007770000000000000000000007770000000000000000000044455500000000044455500000000044455500000000000000000000033b0000b83b00
