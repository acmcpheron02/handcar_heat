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
  wheelinc = 0
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

  --[[
  Need to derive wheel position from distance
  sprites align to the follow amount of rotations:
  1: 0
  2: 1/16
  3: 2/16
  4: 3/16

  If distance is calculated by pixels, then radius is 7.
  circumf is 22 rounded up. Can use just a fourth of that
  for 5.5.

  every 1.3744 pixels is 1/16 of a rotation

  does this work?
  wheel_local_dist += distance
  if wheel_local_dist > 22 then
    wheel_local_dist -= 22
  end
  --]]

	if wheelinc >= 0 and wheelinc < 1.3744 then
		sspr(0, 32, 15, 15, origin_x-7, origin_y-7)
	end
	if wheelinc >= 1.3744 and wheelinc < 2.7488 then
		sspr(16, 32, 15, 15, origin_x-7, origin_y-7)
	end
	if wheelinc >= 2.7488 and wheelinc < 4.1232 then
		sspr(32, 32, 15, 15, origin_x-7, origin_y-7)
	end
	if wheelinc >= 4.1232 then
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

  wheelinc = distance % 5.5
  --friction
	if cartspeed > 0 then
		cartspeed -= 1
	end
	if cartspeed > 100 then
		cartspeed *= .995
	end
end