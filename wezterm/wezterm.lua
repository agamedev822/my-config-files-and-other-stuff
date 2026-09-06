local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.default_prog = { 'pwsh.exe' }

-- 1. FORCE TRUE HARDWARE ACCELERATION
-- "WebGpu" or "OpenGL" tells Windows to stop using the CPU to render pixels.
config.front_end = "WebGpu"

-- 2. LIMIT THE REFRESH RATES
-- If it's trying to push hundreds of frames a second, your laptop will melt.
config.max_fps = 60

-- 3. CUT DOWN WINDOW OVERHEAD
-- Dropping the heavy decorative title bars speeds up native rendering on Windows.
config.window_decorations = "RESIZE"

-- 4. FREEZE ANIMATIONS WHEN IDLE
-- Stops WezTerm from constantly pulling CPU cycles when you aren't actively typing.
config.animation_fps = 1

return config
