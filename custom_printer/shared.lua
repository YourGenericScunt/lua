ENT.Type = "anim"
ENT.Base = "base_gmodentity"

ENT.PrintName = "Hoppity poppity infinite money is now my propety"

ENT.Spawnable = true

function ENT:SetupDataTables()

    self:NetworkVar("Int", 1, "MoneyAmount")
    
end