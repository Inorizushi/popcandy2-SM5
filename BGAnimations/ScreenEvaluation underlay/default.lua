local pss = STATSMAN:GetCurStageStats():GetPlayerStageStats(GAMESTATE:GetMasterPlayerNumber())

local tier = pss:GetFailed() and 'D' or pss:GetGrade()

local TierRemap = {
	Tier01 = "AAAA",
	Tier02 = "AAA",
	Tier03 = "AA",
	Tier04 = "A",
	Tier05 = "B",
	Tier06 = "C",
	Tier07 = "D",
}

return Def.ActorFrame{
	Def.Sprite{
		InitCommand = function(s) s:queuecommand("Set") end,
		SetCommand= function(s)
			if GAMESTATE:IsAnExtraStage() and ToEnumShortString(tier) == Tier03 then
				s:Load(THEME:GetPathB("","ScreenEvaluation underlay/omesbg"))
			elseif GAMESTATE:GetCurrentStage() == 'Stage_Final' and ToEnumShortString(tier) == Tier03 then
				s:Load(THEME:GetPathB("","ScreenEvaluation underlay/exbg"))
			else
				s:Load(THEME:GetPathB("","ScreenEvaluation underlay/"..TierRemap[ToEnumShortString(tier)].."_bg"))
			end
				s:FullScreen()
		end,
	};
	Def.Sprite{
		InitCommand = function(s) s:xy(_screen.cx,_screen.cy+135):queuecommand("Set") end,
		SetCommand= function(s)
			s:Load(THEME:GetPathB("","ScreenEvaluation underlay/"..TierRemap[ToEnumShortString(tier)]..".png"))
		end;
	};
	Def.Sprite{
		Texture="../star.png",
		InitCommand=function(s) s:Center() end,
		OnCommand=function(s) s:diffuse(Color.Black):zoom(3):rotationz(0):linear(0.3):rotationz(-1000):zoom(0) end,
	}
};

