AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include("shared.lua")

function ENT:Initialize()

    self:SetModel("models/props_c17/consolebox03a.mdl")

	self:PhysicsInit( SOLID_VPHYSICS )      
	self:SetMoveType( MOVETYPE_VPHYSICS )  
	self:SetSolid( SOLID_VPHYSICS )      
    
    self.timer = CurTime()
      
        local phys = self:GetPhysicsObject()
	if (phys:IsValid()) then

		phys:Wake() -- Starts physics

	end
    
end