<<<<<<< HEAD
include('shared.lua')
 
--[[---------------------------------------------------------
   Name: Draw
   Purpose: Draw the model in-game.
   Remember, the things you render first will be underneath!
---------------------------------------------------------]]
function ENT:Draw()
    -- self.BaseClass.Draw(self)  -- We want to override rendering, so don't call baseclass.
                                  -- Use this when you need to add to the rendering.
    self:DrawModel()       -- Draw the model.
 
    AddWorldTip( self:EntIndex(), "arhombus", 0.5, self:GetPos(), self  ) -- Add an example tip.
=======
include('shared.lua')
 
--[[---------------------------------------------------------
   Name: Draw
   Purpose: Draw the model in-game.
   Remember, the things you render first will be underneath!
---------------------------------------------------------]]
function ENT:Draw()
    -- self.BaseClass.Draw(self)  -- We want to override rendering, so don't call baseclass.
                                  -- Use this when you need to add to the rendering.
    self:DrawModel()       -- Draw the model.
 
    AddWorldTip( self:EntIndex(), "arhombus", 0.5, self:GetPos(), self  ) -- Add an example tip.
>>>>>>> a05aa0a065be37bcf1d805cd8e81fc4877ea6602
end