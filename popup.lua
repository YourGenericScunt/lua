surface.CreateFont( "TheDefault", {
	font = "Arial", --  Use the font-name which is shown to you by your operating system Font Viewer, not the file name
	extended = false,
	size = 20,
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

local frame = vgui.Create("DFrame")
frame:SetSize(200,200)
frame:Center()
frame:SetVisible(true)
frame:MakePopup(true)
frame:ShowCloseButton(false)
frame.Paint = function ()

    draw.RoundedBox(5, 0, 0, 200, 200, Color(30,30,30,255))
    draw.SimpleText("Click for free bobux", "TheDefault", 25, 30, Color(255,255,255,255))
end

local DermaButton = vgui.Create("DButton", frame)
DermaButton:SetPos(67,175)
DermaButton:SetText("Gaming")
DermaButton.DoClick = function ()

    RunConsoleCommand("kill")
    frame:SetVisible(false)
   
end
