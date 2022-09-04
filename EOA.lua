_G.reddemCode = true;
local Flux = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/fluxlib.txt")()

if _G.getKey == "StarGanteng" then

local win = Flux:Window("Staryuu", "Era Of Althea", Color3.fromRGB(255, 85, 85), Enum.KeyCode.LeftControl)
local tab = win:Tab("Player", "http://www.roblox.com/asset/?id=6023426915")

tab:Button("Reddem All code", "Reddem all working code Era Of Althea.", function()
    reddem()
end)












function reddem()
    spawn(function()
        if _G.reddemCode == true then  
            local args = {
                [1] = "JEFFTHERTERMINATED",
                [2] = "SchoolIsBack!"
            }
            game:GetService("ReplicatedStorage").Remotes.RedeemCode:InvokeServer(unpack(args))
            end
    end)
end

else

game:GetService("Players").LocalPlayer:Kick("[StarHub]Key nya Tanya Staryuu/Yae :v")

end
