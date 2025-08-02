pico-8 cartridge // http://www.pico-8.com
version 42
__lua__

function init_cart()
--properties
  cartspeed = 0
  distance = 0
  leverpos = -100
  pump_direction = -1
  pump_pace = 3
  pump_momentum = 1
	pump_force = 20
  wheelinc = 0

	cartweight_base = 3000
	cart_energy = 0
end

function draw_cart()
	sspr(0, 8, 48, 23, 19, 67)
	if leverpos < -33 then
		sspr(51, 11, 15, 21, 27, 57, 15, 21, true)
		sspr(81, 11, 15, 21, 43, 57, 15, 21, false)
	end
	if -34 < leverpos and leverpos < 34 then
		sspr(66, 11, 15, 21, 27, 57, 15, 21, true)
		sspr(66, 11, 15, 21, 43, 57, 15, 21, false)
	end
	if 33 < leverpos then
		sspr(81, 11, 15, 21, 27, 57, 15, 21, true)
		sspr(51, 11, 15, 21, 43, 57, 15, 21, false)
	end
	spr(012, 61, 86)
  draw_wheels(30, 86)
	draw_wheels(52, 86)
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
		if abs(leverpos) > 85 then
			pump_momentum += .2
			cart_energy += pump_force * 1.5
			--cartspeed += 2/60 * 1.5
		end
		if abs(leverpos) <= 85 then
			cart_energy += pump_force
			--cartspeed += 2/60
		end
	end

	leverpos += pump_direction * pump_pace * pump_momentum
	
	if abs(leverpos) >= 100 then
		leverpos = 100 * pump_direction
		pump_momentum *= .97
		if pump_momentum < 1 then
			pump_momentum = 1
		end
	end
	
end

function cart_physics()

	--Derive speed from energy + mass so that both pump strength and cart weight can be modified.
	cartspeed = sqrt(cart_energy*10/(cartweight_base*.5))

	--friction
	cartspeed *= .995

	--override for testing to 24 mph
	if btn(2) then
		cartspeed = 106/60 --pixels/second
	end

	--override for testing to 24 mph
	if btn(3) then
		cartspeed = 50/60
	end

  distance += cartspeed

	if cartspeed > .25 then
		if rnd(3) < cartspeed then
			fx_wheel_dust(27,93,1,1)
		end
	end
  wheelinc = distance % 5.5
end