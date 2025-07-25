pico-8 cartridge // http://www.pico-8.com
version 42
__lua__


function draw_ui()
  --black borders
	rectfill(0, 0, 128, 42, 0)
	rectfill(0, 96, 128, 128, 0)

	--lever bg
	rectfill(22, 45, 63, 48, 8)
	rectfill(26, 45, 59, 48, 6)

	--lever knob
	rectfill(42 + (leverpos * -.2), 44, 44 + (leverpos * -.2), 49, 6)
	rectfill(42 + (leverpos * -.2), 45, 44 + (leverpos * -.2), 48, 7)

	--money content
	print("$", 4, 33, 1)
	print("$", 5, 34, 11)
	print(money, 13, 33, 1)
	print(money, 14, 34, 9)

	--distance
	print(flr(distance/3), 108 - (8 * #tostr(flr(distance/3))), 33, 1)
	print(flr(distance/3), 109 - (8 * #tostr(flr(distance/3))), 34, 6)
	print("ft", 109, 33, 1)
	print("ft", 110, 34, 13)
	

 -- print(distance%5.5, 8, 8)

	--[[
		105 p/second
		6300 p/m
		378000 p/h
		126000 f/h
		24 mph
	--]]

	-- print(cartspeed/4.4*60, 8, 16)
	-- print(cartspeed, 78, 16)
	-- print(cart_energy, 8, 24)
end
