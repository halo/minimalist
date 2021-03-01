function ScreenSelectStyleChoicesOverride()
	local styles= GAMEMAN:GetStylesForGame(GAMESTATE:GetCurrentGame():GetName())
	local choices= {}
	for i, style in ipairs(styles) do
		local name= style:GetName()
		local cap_name= name
    -- Skipping "solo" because this is for DDR
    -- Skipping couple and routine because there don't seem to be any songs for those
		if name ~= "couple-edit" and name ~= "threepanel" and name ~= "solo" and name ~= "couple" and name ~= "routine" then
			choices[#choices+1]= "name," .. cap_name .. ";style," .. name ..
				";text," .. cap_name .. ";screen," .. Branch.AfterSelectStyle()
		end
	end
	return choices
end
