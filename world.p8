pico-8 cartridge // http://www.pico-8.com
version 42
__lua__

--topography

function init_topo()
  distance = 0
  decos = {}
  foreground = {}
  background = {}
  for i = 1, 128 do
    add(background, topography_back(distance))
    add(foreground, topography_fore(distance))
  end
end

function update_topo()
  for i = 1, 128 do
    del(background, background[1])
    add(background, topography_back(flr(distance / 20) + i))
  end
  for i = 1, 128 do
    del(foreground, foreground[1])
    add(foreground, topography_fore(flr(distance / 5) + i))
  end
end

function draw_topo()
  for i = 0, 127 do
    line(i, flr(background[i + 1]), i, 127, 9)
    line(i, flr(foreground[i + 1]), i, 127, 10)
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

--Rocks
function init_rocks()
  rock_sprites = {9, 10, 11}
  --rock definition = {sprite, xpos, weight}
  rocks = {{9, 120, 50}}
  nextrock = 0
end

function update_rocks()
  for r in all(rocks) do
    r[2] -= cartspeed
  end
  next_rock()
  rock_collision()
end

function next_rock()
  nextrock += cartspeed
  if nextrock >= 250 then
    nextrock = rnd(200)
    add(rocks, {10, 130, 100})
  end
end

function rock_collision()
  for r in all(rocks) do
    if r[2] <= 71 then
      del(rocks, r)
      fx_explode_pebbles(72,86,1,25)
      fx_explode_rubble(72,86,2,5)
      cart_energy -= r[3]
      money += 3
    end
  end
end

function draw_rocks()
  for r in all(rocks) do
    spr(r[1], r[2], 86)
  end
end

-- World Decorations
function deco_fill()
	if #decos < 9 then
		add(decos, { rnd(decos), distance + 128, 65 + rnd(60) })
	end
end
