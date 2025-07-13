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
	print("$", 5, 33, 1)
	print("$", 5, 34, 11)
	print("0099", 14, 33, 1)
	print("0099", 15, 34, 9)

	--distance
	print(flr(distance / 2), 125 - (8 * #tostr(flr(distance / 2))), 33, 1)
	print(flr(distance / 2), 125 - (8 * #tostr(flr(distance / 2))), 34, 13)

  print(distance%5.5, 8, 8)
end
