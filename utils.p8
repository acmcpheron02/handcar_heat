pico-8 cartridge // http://www.pico-8.com
version 42
__lua__

function sinw(pos, period, amp)
	return sin(pos * period) * amp
end

function init_fx()
	effects = {}
end

function update_fx()
	for fx in all(effects) do
		--lifetime
		fx.t+=1
		if fx.t>fx.die then del(effects,fx) end

		--physics
		if fx.grav then fx.dy+=.5 end
		if fx.grow then fx.r+=.1 end
		if fx.shrink then fx.r-=.1 end

		--move
    fx.x+=fx.dx
    fx.y+=fx.dy
	end
end

function draw_fx()
    for fx in all(effects) do
        --draw pixel for size 1, draw circle for larger
        if fx.r<=1 then
            pset(fx.x,fx.y,fx.c)
        else
            circfill(fx.x,fx.y,fx.r,fx.c)
        end
    end
end


function add_fx(x,y,die,dx,dy,grav,grow,shrink,r,c)
    local fx={
        x=x,
        y=y,
        t=0,
        die=die,
        dx=dx,
        dy=dy,
        grav=grav,
        grow=grow,
        shrink=shrink,
        r=r,
        c=c
    }
    add(effects,fx)
end

function fx_explode_pebbles(x,y,r,num)
  for i=0, num do
    --settings
		add_fx(
			x,         -- x
			y,         -- y
			45,-- die
			rnd(3)*cartspeed,  -- dx
			-rnd(5)*cartspeed,  -- dy
			true,     -- gravity
			false,     -- grow
			false,      -- shrink
			r,         -- radius
			rnd({5, 6, 10, 13})
		)
	end
end

function fx_explode_rubble(x,y,r,num)
  for i=0, num do
    --settings
		add_fx(
			x,         -- x
			y,         -- y
			45,-- die
			rnd(1)*cartspeed,  -- dx
			-rnd(4)*cartspeed,  -- dy
			true,     -- gravity
			false,     -- grow
			false,      -- shrink
			r,         -- radius
			rnd({5, 6, 10, 13})
		)
	end
end

function fx_wheel_dust(x,y,r,num)
  for i=0, num do
    --settings
		add_fx(
			x,         -- x
			y,         -- y
			15,-- die
			-rnd(.5)-.3,  -- dx
			-rnd(1)+.5,  -- dy
			false,     -- gravity
			true,     -- grow
			true,      -- shrink
			r,         -- radius
			9
		)
	end
end