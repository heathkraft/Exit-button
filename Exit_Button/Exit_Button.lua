local ldb = LibStub:GetLibrary("LibDataBroker-1.1");
local dataobj = ldb:NewDataObject("Exit_Button", {
	type = "data source",
	icon = "Interface\\Icons\\inv_wolfdraenormountshadow",
	OnClick = function(self, button)
		if button == "LeftButton" then
			if IsShiftKeyDown() then
				ReloadUI(); --Reload the UI
			else
				Logout(); -- Logout
				
			end
		end
		if button == "RightButton" then
			ForceQuit(); -- Exit Game
		end
	end,
	OnTooltipShow = function(tooltip)
		tooltip:AddDoubleLine("To Logout: Left Click Icon.");
		tooltip:AddDoubleLine("To Reload: SHIFT+Left Click Icon.");
		tooltip:AddDoubleLine("To Exit: Right Click Icon.");
	end
});