surface.CreateFont( "TheDefault", {
	font = "Arial", --  Use the font-name which is shown to you by your operating system Font Viewer, not the file name
	extended = false,
	size = 40,
	weight = 2000,
	blursize = 0,
	scanlines = 10,
	antialias = true,
	underline = false,
	italic = false,
	strikeout = false,
	symbol = false,
	rotary = false,
	shadow = true,
	additive = false,
	outline = false,
} )

hook.Add("HUDPaint", "HUDDraw", function()

    local health = LocalPlayer():Health()
    draw.RoundedBox(10, 8, 8, 200+4, 30+4, Color(30, 30, 30, 255))
    draw.RoundedBox(10, 10, 10, health * 2, 30, Color(255,10,10, 200))
    draw.SimpleText(health.."%", "TheDefault", 10+100, 10 + 15 , Color(255,255,255,255), 1, 1)

	armor = LocalPlayer():Armor()

	draw.RoundedBox(8, 8, 48, 200+4, 30+4, Color(30, 30, 30, 255))
	draw.RoundedBox(8, 10, 50, armor * 2, 30, Color(59,180,209, 200))
	draw.SimpleText(armor.."%", "TheDefault", 8+60, 45, Color(255,255,255,255))

end)
--code from G-mod wiki.
hook.Add( "HUDShouldDraw", "hide hud", function( name )
	if ( name == "CHudHealth" or name == "CHudBattery" ) then
	return false
	end
	
	
	-- Never return anything default here, it will break other addons using this hook.
	end )
