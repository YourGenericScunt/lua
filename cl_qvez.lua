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
frame:SetSize(350,350)
frame:Center()
frame:SetVisible(true)
frame:MakePopup(true)
frame:ShowCloseButton(false)

frame.Paint = function ()

    draw.RoundedBox(5, 0, 0, 350, 350, Color(30,30,30,255))
    draw.SimpleText("Otázka: Je dlabaja furík?", "TheDefault", 25, 30, Color(255,255,255,255))
end


local DermaButton = vgui.Create("DButton", frame)
DermaButton:SetSize(100,30)
DermaButton:SetPos(10,150)
DermaButton:SetText("Ano")
DermaButton.DoClick = function ()

    net.Start("MessageName")
	net.SendToServer()
	frame:SetVisible(false)

end
local DermaButton = vgui.Create("DButton", frame)
DermaButton:SetSize(100,30)
DermaButton:SetPos(10,185)
DermaButton:SetText("Ne")
DermaButton.DoClick = function ()

    RunConsoleCommand("kill")
    frame:SetVisible(false)

end