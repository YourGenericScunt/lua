local plymeta = FindMetaTable("Player")

function plymeta:Something()

        print(self:Nick().. " is sussy")
    
end


for k ,v in pairs(player.GetAll()) do

    v:Something()

end