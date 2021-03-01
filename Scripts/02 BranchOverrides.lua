-- Skip the "Caution Warning" screen
-- See https://github.com/stepmania/stepmania/blob/master/Themes/_fallback/Scripts/02%20Branches.lua
Branch.AfterTitleMenu = function()
	return Branch.StartGame()
end
