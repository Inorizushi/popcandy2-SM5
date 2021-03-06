return Def.ActorFrame{
  LoadActor("../../stagetemp/stageframe2")..{
    InitCommand=cmd(xy,SCREEN_LEFT+76,SCREEN_CENTER_Y);
    OnCommand=cmd(diffusealpha,0;linear,0.3;diffusealpha,1;);
  };
  LoadActor("../../stagetemp/stageframe2")..{
    InitCommand=cmd(xy,SCREEN_RIGHT-76,SCREEN_CENTER_Y);
    OnCommand=cmd(diffusealpha,0;linear,0.3;diffusealpha,1;);
  };
  LoadActor("num (doubleres).png")..{
    InitCommand=cmd(zoom,0;xy,SCREEN_LEFT+76,SCREEN_CENTER_Y;spin;);
    OnCommand=cmd(diffusealpha,0;linear,0.3;zoom,0.8;diffusealpha,1;);
  };
  LoadActor("num2 (doubleres).png")..{
    InitCommand=cmd(zoom,0;xy,SCREEN_RIGHT-76,SCREEN_CENTER_Y;spin;);
    OnCommand=cmd(diffusealpha,0;linear,0.3;zoom,0.8;diffusealpha,1;);
  };
  LoadActor("stage (doubleres).png")..{
    InitCommand=cmd(shadowlength,5;Center);
    OnCommand=cmd(diffusealpha,0;linear,0.3;diffusealpha,1;);
  };
}
