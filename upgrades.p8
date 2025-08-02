pico-8 cartridge // http://www.pico-8.com
version 42
__lua__

function init_upgrades()
  money = 0
  food_lvl = 1
  food_spr = {0, 1, 2, 3, 4}
  food_energy = 40
  wheel_lvl = 1
  plow_lvl = 1
  muscle_lvl = 1
  muscle_exp = 0
  
end

function update_upgrades()
  if btnp(4) then food_energy -= 1 end

  if btnp(5) then
    upgrade_foods()
  end
end

function draw_upgrades()
  for i=1, 15 do
    spr(food_spr[food_lvl], -4+i*8, 97)
  end
  rectfill(food_energy+4,96,128,106, 0)
  print(food_energy, 8,8)
end

function upgrade_foods()
  food_lvl += 1

  if food_lvl == 2 then
    food_energy = 64
  end
  if food_lvl == 3 then
    food_energy = 56
  end
end