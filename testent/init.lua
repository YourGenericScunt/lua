-- https://maurits.tv/data/garrysmod/wiki/wiki.garrysmod.com/indexf251.html
AddCSLuaFile( "cl_init.lua" ) -- Make sure clientside
AddCSLuaFile( "shared.lua" )  -- and shared scripts are sent.
 
include('shared.lua')
 
function ENT:Initialize()
 
	self:SetModel( "models/props_c17/doll01.mdl" )
	self:PhysicsInit( SOLID_VPHYSICS )      -- Make us work with physics,
	self:SetMoveType( MOVETYPE_VPHYSICS )   -- after all, gmod is a physics
	self:SetSolid( SOLID_VPHYSICS )         -- Toolbox
    
    self:SetColor(Color(69,42,0,69))        -- Colour
 
        local phys = self:GetPhysicsObject()
	if (phys:IsValid()) then
		phys:Wake() -- Starts physics
	end
end
 
function ENT:Use( activator, caller )
    return
end
 
function ENT:Think()
    -- We don't need to think, we are just a prop after all!
end

function ENT:Use(a , c)

    print(c:Nick().." is a Sussy bakka :(/)")
    c:Kill()
    
end

function ENT:Touch(e)

    print("vine boom soundeffect")
   
end