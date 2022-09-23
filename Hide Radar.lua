--Hide Radar | by Dark trash#8484
utils.console_exec("cl_drawhud_force_radar -1")

events.shutdown:set(function()
	utils.console_exec("cl_drawhud_force_radar 1")
end)