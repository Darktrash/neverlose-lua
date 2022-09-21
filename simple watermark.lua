--simple watermark | by Dark trash

--ui
local wm = ui.create("simple watermark")
local w_color = wm:color_picker("[w] color")
local t_color = wm:color_picker("[t] color")
local rounding = wm:slider("rounding", 0, 10)
local x_slider = wm:slider("x pos", 5, render.screen_size().x - 131)
local y_slider = wm:slider("y pos", 5, render.screen_size().y - 20)

--constants
local user = common.get_username()

--functions
local function renderwm()
	local x = x_slider:get()
	local y = y_slider:get()
	
	render.rect(vector(x, y), vector(x + 126, y + 15), w_color:get(), rounding:get())
	render.text(1, vector(x + 5, y), t_color:get(), nil, "neverlose", " |", user)
end

--events
events.render:set(function()
	renderwm()
end)
