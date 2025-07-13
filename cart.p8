pico-8 cartridge // http://www.pico-8.com
version 42
__lua__

function init_cart()
--properties
  cartspeed = 0
  distance = 0
  leverpos = -100
  pump_direction = 1
  pump_force = 3
  pump_momentum = 1
  wheelrotate = 0
  wheelinc = 1
end


function draw_cart()
	sspr(0, 11, 49, 21, 19, 65)
	if leverpos < -33 then
		sspr(51, 11, 15, 21, 29, 57, 15, 21, true)
		sspr(81, 11, 15, 21, 43, 57, 15, 21, false)
	end
	if -34 < leverpos and leverpos < 34 then
		sspr(66, 11, 15, 21, 29, 57, 15, 21, true)
		sspr(66, 11, 15, 21, 43, 57, 15, 21, false)
	end
	if 33 < leverpos then
		sspr(81, 11, 15, 21, 29, 57, 15, 21, true)
		sspr(51, 11, 15, 21, 43, 57, 15, 21, false)
	end
	spr(012, 65, 83)
  draw_wheels(31, 86)
	draw_wheels(55, 86)
end

function draw_wheels(origin_x, origin_y)
	if flr(wheelinc/6) % 4 == 0 then
		sspr(0, 32, 15, 15, origin_x-7, origin_y-7)
	end
	if flr(wheelinc/6) % 4 == 1 then
		sspr(16, 32, 15, 15, origin_x-7, origin_y-7)
	end
	if flr(wheelinc/6) % 4 == 2 then
		sspr(32, 32, 15, 15, origin_x-7, origin_y-7)
	end
	if flr(wheelinc/6) % 4 == 3 then
		sspr(48, 32, 15, 15, origin_x-7, origin_y-7)
	end
end

function pump_minigame()
	if btnp(4) then
		pump_direction *= -1
	end
	if btnp(4) and abs(leverpos) > 85 then
		pump_momentum += .2
	end
	if abs(leverpos) <= 100 then
		leverpos += pump_direction * pump_force * pump_momentum
		cartspeed += 2 + 1 * pump_momentum
	end
	if abs(leverpos) >= 100 then
		leverpos = 100 * pump_direction
		pump_momentum *= .97
		if pump_momentum < 1 then
			pump_momentum = 1
		end
	end
end


function cart_physics()
  --friction
	if cartspeed > 0 then
		cartspeed -= 1
	end
	if cartspeed > 100 then
		cartspeed *= .995
	end
end