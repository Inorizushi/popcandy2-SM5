local screenName = Var "LoadingScreen"
local headerTextImage

if screenName == "ScreenSelectMusic" then
  headerTextImage = "Music"
elseif screenName == "ScreenSelectCourse" then
  headerTextImage = "Course"

elseif screenName == "ScreenSelectDifficulty" then
  headerTextImage = "difficulty"

elseif screenName == "ScreenEvaluationNormal"
  or screenName == "ScreenEvaluationOni"
  or screenName == "ScreenEvaluationNonstop"
  or screenName == "ScreenNetEvaluation" then
	headerTextImage = "eval"

elseif screenName == "ScreenEvaluationSummary" then
  headerTextImage = "evalsummary"

else
  headerTextImage = "pop"
end;

--Base
local t = Def.ActorFrame{
  LoadActor("right")..{
    InitCommand=cmd(x,SCREEN_CENTER_X+244);
  };
  LoadActor("timer")..{
    InitCommand=cmd(x,SCREEN_LEFT;halign,0);
  };
}

if headerTextImage then
  table.insert(t,LoadActor(headerTextImage.." (doubleres).png")..{
    InitCommand=function(self)
			self:x(SCREEN_CENTER_X+195)
    end;
  })
end;
return t;
