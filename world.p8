pico-8 cartridge // http://www.pico-8.com
version 42
__lua__


function init_topo()
  decos = {}
  foreground = {}
  background = {}
  for x = 1, 128 do
    add(background, topography_back(distance))
    add(foreground, topography_fore(distance))
  end
end

function update_topo()
  for i = 1, 128 do
    del(background, background[1])
    add(background, topography_back(flr(distance / 10) + i))
  end
  for i = 1, 128 do
    del(foreground, foreground[1])
    add(foreground, topography_fore(flr(distance) + i))
  end
  distance += cartspeed / 1000
end

function draw_topo()
  for x = 0, 127 do
    line(x, flr(background[x + 1]), x, 127, 9)
    line(x, flr(foreground[x + 1]), x, 127, 10)
  end
  rectfill(0, 85, 127, 127, 10)
  rectfill(0, 92, 127, 94, 6)
end

function topography_back(x)
  local pos = x / 127
  return 63 + flr(sinw(pos + 100 * seed_back, 5.5, 3))
      + flr(sinw(pos + 100 * seed_back, 2, 4))
      + flr(sinw(pos + 100 * seed_back, 1, 2))
end

function topography_fore(x)
  local pos = x / 127
  return 78 + flr(sinw(pos + 100 * seed_fore, 0.75, 3))
      + flr(sinw(pos + 100 * seed_fore, 6, 0.75))
end


function deco_fill()
	if #decos < 9 then
		add(decos, { rnd(decos), distance * 4 + 128, 65 + rnd(60) })
	end
end
