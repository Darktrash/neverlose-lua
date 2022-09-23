-- Simple Watermark | by Dark trash#8484

-- Constants
local username = common.get_username()
local screen_size_x = render.screen_size().x
local screen_size_y = render.screen_size().y

-- UI
local main = ui.create("Main")
local wm = ui.create("Watermark")
local text = ui.create("Text")

--- Main Group
local position_x = main:slider("X Position", 5, screen_size_x - 235)
local position_y = main:slider("Y Position", 5, screen_size_y - 20)

--- Watermark Group
local watermark_color = wm:color_picker("Color")
local rounding = wm:slider("Rounding", 0, 10)

--- Text Group
local text_color = text:color_picker("Color")

-- Functions
local function RenderWatermark()
	local x = position_x:get()
	local y = position_y:get()
	
	render.rect(vector(x, y), vector(x + 230, y + 15), watermark_color:get(), rounding:get())
	render.text(1, vector(x + 5, y), text_color:get(), s, "NL", " |", username, "| Dominate!")
end

-- Events
events.render:set(function()
	RenderWatermark()
end)
