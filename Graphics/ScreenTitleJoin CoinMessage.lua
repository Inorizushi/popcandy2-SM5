local coinmode = GAMESTATE:GetCoinMode()
local cointype = coinmode == 'CoinMode_Free' and "_free play" or "_insert coin"

return LoadActor(THEME:GetPathG("ScreenTitleJoin","Messages/"..cointype))