pico-8 cartridge // http://www.pico-8.com
version 42
__lua__

function sinw(pos, period, amp)
	return sin(pos * period) * amp
end