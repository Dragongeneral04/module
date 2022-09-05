_G.reddemCode = true;
_G.gacha = true
_G.pity = nil

local Flux = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/fluxlib.txt")()

if _G.getKey == "StarGanteng" then

local win = Flux:Window("StarHub", "Anime Adventures", Color3.fromRGB(255, 85, 85), Enum.KeyCode.LeftControl)
local tab = win:Tab("Player", "http://www.roblox.com/asset/?id=6023426915")

tab:Button("Reddem All code", "Reddem all working code Anime Adventures.", function()
    reddem()
end)
tab:Slider("Pull Count", "set mau berapa kali gacha.", 0, 100,16,function(t)
    pity = t
 end)
 
tab:Button("Auto gacha(ticket)", "Automatically Gacha char for you with summon ticket!", function()
    gachaTicket(pity)
    teast(pity)
 end)
    
tab:Button("Auto gacha(gems)", "Automatically Gacha char for you with gems!", function()
    gachaGems(pity)
 end)


 function teast(test)
    print(test)
 end

function gachaTicket(t)
 spawn(function()
    if _G.gacha == true then
            local args = {
                [1] = "dbz_fighter",
                [2] = "ticket"
            }
        for i = 1, t do
            game:GetService("ReplicatedStorage").endpoints.client_to_server.buy_random_fighter:InvokeServer(unpack(args)) 
        end
            
    end
 end)
    
end

function gachaGems(t)
    spawn(function()
        if _G.gacha == true then
                local args = {
                    [1] = "dbz_fighter",
                    [2] = "gems"
                }
            for i = 1, t do  
                game:GetService("ReplicatedStorage").endpoints.client_to_server.buy_random_fighter:InvokeServer(unpack(args))
            end
           
        end
          
    end)
end





function reddem()
    spawn(function()
        if _G.reddemCode == true then
            local args = {
    
                [1] = "KingLuffy",
                [2] = "SubToBlamspot",
                [3] = "SubToKelvingts",
                [4] = "FictioNTheFirst",
                [5] = "noclypso",
                [6] = "TOADBOIGAMING",
                [7] = "subtomaokuma",
                [8] = "QUESTFIX",
                [9] = "HUNTER"
            }
            
            for i, v in pairs(args) do
                game:GetService("ReplicatedStorage").endpoints.client_to_server.redeem_code:InvokeServer(v)
            end
       end
       
    end)
end

else

game:GetService("Players").LocalPlayer:Kick("[StarHub]Key nya Tanya Staryuu/Yae :v")

end


