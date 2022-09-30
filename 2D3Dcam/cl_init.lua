include("shared.lua")

surface.CreateFont( "camfont", {
	font = "Arial", --  Use the font-name which is shown to you by your operating system Font Viewer, not the file name
	extended = false,
	size = 35,
	weight = 10,
	blursize = 0,
	scanlines = 0,
	antialias = true,
	underline = false,
	italic = false,
	strikeout = false,
	symbol = false,
	rotary = false,
	shadow = false,
	additive = false,
	outline = false,
} )

function ENT:Draw()

    self:DrawModel()

    local ang = self:GetAngles()

    ang:RotateAroundAxis(self:GetAngles():Right(), 90)

    cam.Start3D2D(self:GetPos() , self:GetAngles() , 0.1)

        draw.RoundedBox(0,0,0,500,500,Color(100, 150, 100, 255))

        draw.RoundedBox(0,100,100,500-200,500-200,Color(255, 0, 0, 255))

        draw.SimpleText("arhombus has been detected in yo mother", "camfont", 240, 230, Color(255,255,255,255), 1, 1)
    cam.End3D2D()
    
end