function ChatCommand(ply, text)
    if string.sub(text, 1, 5) == "/box" then
        local trace = ply:GetEyeTrace()
        local pos = trace.HitPos

        pos = pos + Vector(0, 0, 50)

        local box = ents.Create("prop_physics")
        box:SetModel("models/props_junk/wood_crate001a.mdl")
        box:SetPos(pos)
        box:Spawn()
    end
end
hook.Add("PlayerSay", "ChatCommand", ChatCommand)