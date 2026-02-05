pico-8 cartridge // http://www.pico-8.com
version 42
__lua__

function init_title()
  menu_pos = 1
  distance = 0
end

function draw_title()
    --black borders
	rectfill(0, 0, 128, 42, 0)
	rectfill(0, 96, 128, 128, 0)

  print("handcar heat", 17, 38, 9)
  print("handcar heat", 16, 37, 10)

  print("press", 32, 76, 5)
  sspr(0, 65, 15, 15, 75, 74)
  print("!", 93, 76, 5)
end

function update_title()
  return null
end