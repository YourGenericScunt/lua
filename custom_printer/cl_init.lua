include("shared.lua")

surface.CreateFont( "MoneyFont", {
	font = "Arial", --  Use the font-name which is shown to you by your operating system Font Viewer, not the file name
	extended = false,
	size = 40,
	weight = 1000,
	blursize = 0,
	scanlines = 10,
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

end

hook.Add("HUDPaint", "DrawMoney", function()

    local eye = LocalPlayer():GetEyeTrace()

    if eye.Entity:GetClass() == "custom_printer" then

        draw.SimpleText(eye.Entity:GetMoneyAmount(),"MoneyFont", ScrW()/2 , ScrH()/2 , Color(255, 0, 0, 255) , 1,1)

    end

    
end)