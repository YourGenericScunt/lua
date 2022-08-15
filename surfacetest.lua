surface.CreateFont( "TheGamingSettings", {
	font = "Arial", --  Use the font-name which is shown to you by your operating system Font Viewer, not the file name
	extended = false,
	size = 50,
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

hook.Add("HUDPaint", "DrawHUD", function()

    surface.SetDrawColor(255,0,0,255)
    surface.DrawRect(408, 305, 15, 15)
    surface.SetTextPos(600, 300)
    surface.SetFont("TheGamingSettings")
    surface.SetTextColor(0, 255, 0, 255)
    surface.DrawText("Zugondéz")
end)