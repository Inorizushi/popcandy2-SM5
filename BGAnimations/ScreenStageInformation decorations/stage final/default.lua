return Def.ActorFrame{
  LoadActor("../../stagetemp/stageframe2")..{
    InitCommand=cmd(diffuse,color("1.0,0.8,0.5,1");xy,SCREEN_LEFT+76,SCREEN_CENTER_Y);
    OnCommand=cmd(diffusealpha,0;linear,0.3;diffusealpha,1;sleep,2.4;linear,0.3;zoomx,0;);
  };
  LoadActor("../../stagetemp/stageframe2")..{
    InitCommand=cmd(diffuse,color("1.0,0.8,0.5,1");xy,SCREEN_RIGHT-76,SCREEN_CENTER_Y);
    OnCommand=cmd(diffusealpha,0;linear,0.3;diffusealpha,1;sleep,2.4;linear,0.3;zoomx,0;);
  };
  LoadActor("num (doubleres).png")..{
    InitCommand=cmd(zoom,0;xy,SCREEN_LEFT+76,SCREEN_CENTER_Y;spin;diffuse,color("1.0,0.8,0.5,1"));
    OnCommand=cmd(diffusealpha,0;linear,0.3;zoom,0.8;diffusealpha,1;linear,2.4;rotationz,-360;linear,0.3;zoomx,0;);
  };
  LoadActor("num2 (doubleres).png")..{
    InitCommand=cmd(zoom,0;xy,SCREEN_RIGHT-76,SCREEN_CENTER_Y;spin;diffuse,color("1.0,0.8,0.5,1"));
    OnCommand=cmd(diffusealpha,0;linear,0.3;zoom,0.8;diffusealpha,1;linear,2.4;rotationz,-360;linear,0.3;zoomx,0;);
  };
  LoadActor("stage")..{
    InitCommand=cmd(shadowlength,5;diffuse,color("1.0,0.8,0.5,1");Center);
    OnCommand=cmd(diffusealpha,0;linear,0.3;diffusealpha,1;sleep,2.4;linear,0.3;zoomy,0;);
  };
}
