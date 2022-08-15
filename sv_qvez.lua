util.AddNetworkString("MessageName")
util.AddNetworkString("MessageClient")

net.Receive("MessageName", function(len, ply)
    
    print("Message received")
    
    net.Start("MessageClient")
    net.Send(ply)

end)