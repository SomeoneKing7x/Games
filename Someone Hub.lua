spawn(function()
   while true do
   task.wait()
   if _G.SimpleSpyExecuted then
  game:Shutdown()
   end
   end
   end)
   spawn(function()
      while true do
          task.wait()
if tostring(game:GetService("Players").LocalPlayer.Team) == "Neutral"then
if Team == "Marines" then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam", "Marines")
elseif Team == "Pirates" then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam", "Pirates")
else
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam", "Marines")


end
end
end
end)
local HttpService = game:GetService("HttpService")
local playerName = game.Players.LocalPlayer.DisplayName
local FolderPath = "Someone Hub"
local SaveFolder = FolderPath .. "/" .. "SomeoneSettings-" .. playerName .. ".json"

local S = {
-- Settings --
 
 SelectWeapon = "Melee",

 TweenSpeed = 300,
 
 PosY = 25,
 
 AutoAttack = true,
 
 AutoHaki = true,
 
 AutoTurnKen = false,
 
 AutoTurnV3 = false,
 
 AutoTurnV4 = false,
 
 AutoSavePoint = false,
 
 RemoveNotify = false,
 
 RemoveDamage = true,
 
 RemoveParticle = true,
 
-- Discord --
 


-- Farm --
 
 AutoFarmLevel = false,
 
 FarmNear = false,



-- Quest --
 


-- Fruits/Raid --

 TweenToFruit = false,
 
 BringFruits = false,
 
 AutoStoreFruit = false,


-- Teleport --
 


-- Sea Event --
 


-- Islands --
 


-- Player --
 


-- Race --
 


-- Stats --
 


-- Visual --
 


-- Shop --
 


-- Debug --


}

-- Função para salvar as configurações
local function SS()
    local jsonData = HttpService:JSONEncode(S)
    if writefile and makefolder then
        if not isfolder(FolderPath) then
            makefolder(FolderPath)
        end
        writefile(SaveFolder, jsonData)
    else
        warn("Seu executor não suporta salvar arquivos.")
    end
end

-- Função para carregar as configurações
local function LoadSettings()
    if isfile and readfile and isfile(SaveFolder) then
        local success, jsonData = pcall(readfile, SaveFolder)
        if success then
            local successDecode, data = pcall(HttpService.JSONDecode, HttpService, jsonData)
            if successDecode then
                for k, v in pairs(data) do
                    S[k] = v
                end
            else
                warn("Erro ao decodificar o JSON.")
            end
        else
            warn("Erro ao ler o arquivo de configurações.")
        end
    else
        if not (isfile and readfile) then
            warn("Seu executor não suporta leitura de arquivos.")
        end
        SS()
    end
end

LoadSettings()







Sea1 = false
Sea2 = false
Sea3 = false
local v19 = game.PlaceId
if (v19 == 2753915549) then
    Sea1 = true
elseif (v19 == 4442272183) then
    Sea2 = true
elseif (v19 == 7449423635) then
    Sea3 = true
end







local dataHora = os.date("*t") 
local servidorRegiao = game:GetService("LocalizationService"):GetCountryRegionForPlayerAsync(game:GetService("Players").LocalPlayer)
Data = dataHora.year.."/"..dataHora.month.."/"..dataHora.day.." | "..dataHora.hour..":"..dataHora.min..":"..dataHora.sec.." [ "..servidorRegiao.." ]"

local Data =
                        {
                            ["embeds"]= {
                                {            
                                    ["title"]= "𝙥𝙡𝙖𝙮𝙚𝙧𝙨 𝙥𝙧𝙤𝙛𝙞𝙡𝙚💻";
                                    ["url"]= "https://www.roblox.com/users/"..game.Players.LocalPlayer.UserId;
                                    ["description"]= "||```"..game.Players.LocalPlayer.DisplayName.." ("..game.Players.LocalPlayer.Name..")```||";
                                    ["color"]= 16777215;
                                     ["thumbnail"] = {["url"] = "https://cdn.discordapp.com/attachments/1171840145335537824/1201725336598106183/Screenshot_2024-01-28-16-39-42-226_com.facebook.katana-edit.jpg?ex=65cadcef&is=65b867ef&hm=850789c6f502230b1eaa6ffed401f83a8c7d3a5ffea10e13ef382b3806a80615&"};
                                    
                                    ["fields"]= {
                                        {
                                            ["name"]= "𝙀𝙭𝙚𝙘𝙪𝙩𝙤𝙧📑",
                                            ["value"]= "``````",
                                            ["inline"]= true
                                        },
                                        {
                                            ["name"]= "𝘼𝙜𝙚🗓",
                                            ["value"]= "```"..game.Players.LocalPlayer.AccountAge.." Day```",
                                            ["inline"]= true
                                        },
                                        {
                                            ["name"]= "𝙎𝙘𝙧𝙞𝙥𝙩 𝙎𝙩𝙖𝙩𝙪𝙨ℹ️",
                                            ["value"]= "```Executed```",
                                            ["inline"]= true
                                            },
                                       {
                                     ["name"] = "𝙅𝙤𝙗 𝙄𝙙",
                                     ["value"]= 'game:GetService("TeleportService"):TeleportToPlaceInstance('..game.PlaceId..', "'..game.JobId..'", game.Players.LocalPlayer)',
                                     ["inline"]= true
                                    },
                                    {
                                     ["name"] = "Game Id",
                                     ["value"]= '```game.JobId```',
                                     ["inline"]= true
                                    },
                                    {
                                     ["name"] = "Data",
                                     ["value"]= '```'..Data..'```',
                                     ["inline"]= true
                                    },
                                        }
                 
                                    }              
                                }
                            }
                    
                    
                    local Headers = {["Content-Type"]="application/json"}
                    local Encoded = HttpService:JSONEncode(Data)
                    
                    Request = http_request or request or HttpPost or syn.request
                    local Final = {Url = "https://discord.com/api/webhooks/1353290234984534078/C3YfpN7tIaifu0QFzSbTl4HQZmwysHDp2e3UDlJIEN-ZqGc1xvzuv_ulryVBwZxg6wx_", Body = Encoded, Method = "POST", Headers = Headers}
                    Request(Final)
                    
                    
                    
                    
                    
    function Backpack(...)
    return game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(...)
    end
function Character(...)
    return game:GetService("Players").LocalPlayer.Character:FindFirstChild(...)
    end
                    
                    
                    
     function FireRemote(...)
     return game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(...)
     end

function KeyEvent(Key, Time)
            game:service("VirtualInputManager"):SendKeyEvent(true, Key, false, game)
                            wait(Time)
                    game:service("VirtualInputManager"):SendKeyEvent(false, Key, false, game)              
            end
      
function LoadFruit(NameFruit)
    return game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadFruit",NameFruit)
 end
function GetIsland(Island)
return game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild(Island)
end
      
                     
                            
local plr = game.Players.LocalPlayer
local char = plr.Character or plr.CharacterAdded:Wait()
local pps = game:GetService("ProximityPromptService")

local function setupPrompt(p)
    if p:IsA("ProximityPrompt") then
        p:GetPropertyChangedSignal("Enabled"):Connect(function()
            if p.Enabled then
                p.HoldDuration = 0
            end
        end)
        if p.Enabled then
            p.HoldDuration = 0
        end
    end
end

local function checkProximity(DistHold)
    while true do
        local closestPrompt = nil
        local closestDist = math.huge
        for _, d in ipairs(workspace:GetDescendants()) do
            if d:IsA("ProximityPrompt") and d.Enabled then
                if char:FindFirstChild("HumanoidRootPart") then
                    local dist = (char.HumanoidRootPart.Position - d.Parent.Position).magnitude
                    if dist < closestDist then
                        closestDist = dist
                        closestPrompt = d
                    end
                end
            end
        end
        if closestPrompt and closestDist < DistHold then
            setupPrompt(closestPrompt)
        end
        wait(0.5)
    end
end

-- Espera o "HumanoidRootPart" se tornar disponível se não estiver presente no momento
if not char:FindFirstChild("HumanoidRootPart") then
    char:WaitForChild("HumanoidRootPart")
end
function PressHold()
    for _, objeto in pairs(workspace:GetDescendants()) do
        if objeto:IsA("ProximityPrompt") then
            objeto:InputHoldBegin()
        end
    end
end


PlayerRace = game:GetService("Players").LocalPlayer.Data.Race.Value

------------------Permanetes ^^^^^ --------------------








--—————— Settings ——————




function UnequipTool(ToolSe)
    if Backpack(ToolSe) then
        local tool = Backpack(ToolSe)
        wait(0.1)
        game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
    end
end
function EquipTool(ToolSe)
		if Backpack(ToolSe) then
			local tool = Backpack(ToolSe)
			wait(0.1)
			game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
		end
	end
spawn(function()
   while true do
      task.wait()
if
_G.AutoFarmLevel or
_G.AutoFarmNearest or
_G.AutoFarmBones
then
EquipTool(SelectWeapon)
        end
     end
  end)


game:GetService("Players").LocalPlayer.Idled:connect(function()
	game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
	wait(1)
	game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

--[[
local function Tween(targetPosition)
	if game.Players.LocalPlayer.Character.Humanoid.Sit then 
	game.Players.LocalPlayer.Character.Humanoid.Sit = false
		game:GetService("VirtualInputManager"):SendKeyEvent(true, "Space", false, game)
		wait(0.15)
		game:GetService("VirtualInputManager"):SendKeyEvent(false, "Space", false, game)
	end
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
    
    -- Remover Constraints e BodyMovers
    for _, v in pairs(humanoidRootPart:GetChildren()) do
        if v:IsA("Constraint") or v:IsA("BodyMover") then
            v:Destroy()
        end
    end
    humanoidRootPart.CanCollide = false
    humanoidRootPart.AssemblyLinearVelocity = Vector3.zero

    local minSpeed = 2  
    local stopDistance = 1  
    
    -- Definir posições dos portais
    local PortalPos = {}
    if Sea1 then
        PortalPos = {
            Vector3.new( -4652, 872, -1754), -- Sky Island 1
            Vector3.new(-7895, 5547, -380), -- Sky Island 2
            Vector3.new(61164, 5, 1820), -- Under Water Island
            Vector3.new(3865, 5, -1926) -- Under Water Island Entrace
        }
    elseif Sea2 then
        PortalPos = {
           Vector3.new( -289, 306, 600), -- Flamingo Mansion
            Vector3.new( 2284, 15, 905), -- Flamingo Room
            Vector3.new(923, 125, 32853), -- Cursed Ship
            Vector3.new(-6509, 83, -133) -- Zombie Island
        }
    elseif Sea3 then
        PortalPos = {
            Vector3.new(-12471, 374, -7551), -- Mansion
            Vector3.new( 5661 , 1013 , -335 ), -- Hydra Island
            Vector3.new( -5074, 314, -3153), -- Castle on the Sea
            Vector3.new(28286, 14897, 103) -- Temple of Time
        }
        
        -- Adicionando o novo portal especial SOMENTE se for Sea3
        table.insert(PortalPos, Vector3.new(3030, 2281, -7328))
    end

    -- Verificação para encontrar o portal mais próximo do Destino
    local closestPortal = nil
    local closestDistance = (humanoidRootPart.Position - targetPosition).magnitude

    for _, portal in pairs(PortalPos) do
        local portalDistance = (portal - targetPosition).magnitude
        if portalDistance < closestDistance then
            closestPortal = portal
            closestDistance = portalDistance
        end
    end
    
    -- Se o portal especial for o mais próximo, fazer o Tween especial
    if Sea3 and closestPortal == Vector3.new(3030, 2281, -7328) then
    FireRemote("requestEntrance", Vector3.new(28286, 14897, 103))
    wait(1)
        Tween(Vector3.new(28610, 14896, 107)) -- Move primeiro para esse ponto
        task.wait(1) -- Pequena pausa
        FireRemote("RaceV4Progress", "TeleportBack") -- Chama o Remote
    elseif closestPortal then
        -- Caso contrário, usa o requestEntrance normal
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", closestPortal)
    end
	if humanoidRootPart.Position.Y ~= targetPosition.Y then
		while humanoidRootPart.Position.Y ~= targetPosition.Y do
			humanoidRootPart.CFrame = CFrame.new(humanoidRootPart.Position.X, targetPosition.Y, humanoidRootPart.Position.Z)
		end
	end
    -- Movimento até o destino
    while (humanoidRootPart.Position - targetPosition).magnitude > stopDistance do
        local distance = (humanoidRootPart.Position - targetPosition).magnitude
        local speed
        if distance <= 50 then
            speed = math.max(minSpeed, getgenv().TweenSpeed * (distance / 50))
        else
            speed = getgenv().TweenSpeed
        end
        local direction = (targetPosition - humanoidRootPart.Position).unit
        humanoidRootPart.CFrame = humanoidRootPart.CFrame + direction * speed * task.wait()
        humanoidRootPart.AssemblyLinearVelocity = Vector3.zero
    end
end
]]--
function Tween(targetPosition)
	if game.Players.LocalPlayer.Character.Humanoid.Sit then 
		game.Players.LocalPlayer.Character.Humanoid.Sit = false
		game:GetService("VirtualInputManager"):SendKeyEvent(true, "Space", false, game)
		wait(0.15)
		game:GetService("VirtualInputManager"):SendKeyEvent(false, "Space", false, game)
	end

    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
    
    for _, v in pairs(humanoidRootPart:GetChildren()) do
        if v:IsA("Constraint") or v:IsA("BodyMover") then
            v:Destroy()
        end
    end

    humanoidRootPart.CanCollide = false
    humanoidRootPart.AssemblyLinearVelocity = Vector3.zero

    local minSpeed = 2  
    local stopDistance = 1  

    local PortalPos = {}
    if Sea1 then
        PortalPos = {
            Vector3.new(-4652, 872, -1754),
            Vector3.new(-7895, 5547, -380),
            Vector3.new(61164, 5, 1820),
            Vector3.new(3865, 5, -1926)
        }
    elseif Sea2 then
        PortalPos = {
            Vector3.new(-289, 306, 600),
            Vector3.new(2284, 15, 905),
            Vector3.new(923, 125, 32853),
            Vector3.new(-6509, 83, -133)
        }
    elseif Sea3 then
        PortalPos = {
            Vector3.new(-12471, 374, -7551),
            Vector3.new(5661, 1013, -335),
            Vector3.new(-5074, 314, -3153),
            Vector3.new(28286, 14897, 103)
        }

        table.insert(PortalPos, Vector3.new(3030, 2281, -7328))
    end

    local closestPortal = nil
    local closestDistance = (Vector3.new(humanoidRootPart.Position.X, 0, humanoidRootPart.Position.Z) - Vector3.new(targetPosition.X, 0, targetPosition.Z)).magnitude

    for _, portal in pairs(PortalPos) do
        local portalDistance = (Vector3.new(portal.X, 0, portal.Z) - Vector3.new(targetPosition.X, 0, targetPosition.Z)).magnitude
        if portalDistance < closestDistance then
            closestPortal = portal
            closestDistance = portalDistance
        end
    end
    
    if Sea3 and closestPortal == Vector3.new(3030, 2281, -7328) then
        FireRemote("requestEntrance", Vector3.new(28286, 14897, 103))
        wait(1)
        Tween(Vector3.new(28610, 14896, 107))
        task.wait(1)
        FireRemote("RaceV4Progress", "TeleportBack")
    elseif closestPortal then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", closestPortal)
    end

	if humanoidRootPart.Position.Y ~= targetPosition.Y then
		while humanoidRootPart.Position.Y ~= targetPosition.Y do
			humanoidRootPart.CFrame = CFrame.new(humanoidRootPart.Position.X, targetPosition.Y, humanoidRootPart.Position.Z)
		end
	end

    while (Vector3.new(humanoidRootPart.Position.X, 0, humanoidRootPart.Position.Z) - Vector3.new(targetPosition.X, 0, targetPosition.Z)).magnitude > stopDistance do
        local distance = (Vector3.new(humanoidRootPart.Position.X, 0, humanoidRootPart.Position.Z) - Vector3.new(targetPosition.X, 0, targetPosition.Z)).magnitude
        local speed
        if distance <= 50 then
            speed = math.max(minSpeed, getgenv().TweenSpeed * (distance / 50))
        else
            speed = getgenv().TweenSpeed
        end
        local direction = (Vector3.new(targetPosition.X, 0, targetPosition.Z) - Vector3.new(humanoidRootPart.Position.X, 0, humanoidRootPart.Position.Z)).unit
        humanoidRootPart.CFrame = humanoidRootPart.CFrame + direction * speed * task.wait()
        humanoidRootPart.AssemblyLinearVelocity = Vector3.zero
    end
end






function Bypass(v210)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v210
wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v210
end







local v21 = game.Players.LocalPlayer
function FindEnemiesInRange(v223, v224)
    local v225 = (v21.Character or v21.CharacterAdded:Wait()):GetPivot().Position
    local v226 = nil
    for v471, v472 in ipairs(v224) do
        if (not v472:GetAttribute("IsBoat") and v472:FindFirstChildOfClass("Humanoid") and (v472.Humanoid.Health > 0)) then
            local v671 = v472:FindFirstChild("Head")
            if (v671 and ((v225 - v671.Position).Magnitude <= 60)) then
                if (v472 ~= v21.Character) then
                    table.insert(v223, {
                        v472,
                        v671
                    })
                    v226 = v671
                end
            end
        end
    end
    for v473, v474 in ipairs(game.Players:GetPlayers()) do
        if (v474.Character and (v474 ~= v21)) then
            local v672 = v474.Character:FindFirstChild("Head")
            if (v672 and ((v225 - v672.Position).Magnitude <= 60)) then
                table.insert(v223, {
                    v474.Character,
                    v672
                })
                v226 = v672
            end
        end
    end
    return v226
end
function GetEquippedTool()
    local v227 = v21.Character
    if not v227 then
        return nil
    end
    for v475, v476 in ipairs(v227:GetChildren()) do
        if v476:IsA("Tool") then
            return v476
        end
    end
    return nil
end
function AttackNoCoolDown()
    local v228 = {}
    local v229 = game:GetService("Workspace").Enemies:GetChildren()
    local v230 = FindEnemiesInRange(v228, v229)
    if not v230 then
        return
    end
    local v231 = GetEquippedTool()
    if not v231 then
        return
    end
    pcall(function()
        if (# v228 > 0) then
            game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Net"):WaitForChild("RE/RegisterAttack"):FireServer(1e-999)
            game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Net"):WaitForChild("RE/RegisterHit"):FireServer(v230, v228)
            game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Net"):WaitForChild("RE/RegisterHit"):FireServer(v230, v228)
            game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Net"):WaitForChild("RE/RegisterHit"):FireServer(v230, v228)
        else
            task.wait(1e-999)
        end
    end)
end






function AutoHaki()
      if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
          FireRemote("Buso")
      end
  end
  spawn(function()
      while true do
          task.wait()
              if _G.AutoHaki then
                  AutoHaki()
              end
      end
  end)
  
  
  
  
spawn(function()
    while true do
    task.wait(1e-999)
        if _G.AutoAttack then
            AttackNoCoolDown()
        end
    end
end)
  
  spawn(function()
    while true do
       task.wait()
       if _G.AutoTurnKen then
       pcall(function()
       game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("Ken",true)
       end)
       end
       end
    end)
    
    
    
    
    
    
    spawn(function()
    while true do
       task.wait()
       if _G.AutoTurnV3 then
       pcall(function()
 game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("ActivateAbility")
              end)
          end
       end
    end)
    
    
    
    
    
    
    spawn(function()
    while true do
       task.wait()
       if _G.AutoTurnV4 then
       if game.Players.LocalPlayer.Character:FindFirstChild("RaceEnergy") and game.Players.LocalPlayer.Character.RaceEnergy.Value >= 1 and not game.Players.LocalPlayer.Character.RaceTransformed.Value then
       pcall(function()
              game:service("VirtualInputManager"):SendKeyEvent(true,"Y", false, game)
                            task.wait()
                    game:service("VirtualInputManager"):SendKeyEvent(false,"Y", false, game)              
              end)
              end
          end
       end
    end)
  
  
  
  
  
  
  spawn(function()
    while wait() do
        pcall(function()
            if _G.SaveSpawn then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            end
        end);
    end
end);



spawn(function()
    while wait() do
        if _G.RemoveNotify then
            game.Players.LocalPlayer.PlayerGui.Notifications.Enabled = false
        else
            game.Players.LocalPlayer.PlayerGui.Notifications.Enabled = true
        end
    end
end);





spawn(function()
    while wait() do
        if _G.RemoveDamage then
            game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = false
        else
            game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = true
        end
    end
end);

spawn(function()
    while true do
       task.wait()
       if _G.RemoveParticle then
       if game:GetService("ReplicatedStorage").Effect.Container:FindFirstChild("Death") then
    game:GetService("ReplicatedStorage").Effect.Container.Death:Destroy();
end
if game:GetService("ReplicatedStorage").Effect.Container:FindFirstChild("Respawn") then
    game:GetService("ReplicatedStorage").Effect.Container.Respawn:Destroy();
    local expFunction = game.ReplicatedStorage:FindFirstChild("EXPFunction")
if expFunction then
    expFunction:Destroy()
end

local levelUpEffect = game:GetService("ReplicatedStorage").Effect.Container:FindFirstChild("LevelUp")
if levelUpEffect then
    levelUpEffect:Destroy()
end

local soundStorage = game:GetService("ReplicatedStorage").Util.Sound.Storage.Other
local levelUpSound = soundStorage:FindFirstChild("LevelUp_Proxy") or soundStorage:FindFirstChild("LevelUp")
if levelUpSound then
    levelUpSound:Destroy()
end
UserSettings():GetService("UserGameSettings").MasterVolume = 0
          end
       end
    end
end)







local function VerifyTool(ToolName)
    local player = game.Players.LocalPlayer
    local plrChar = player.Character
    local plrBag = player.Backpack
    
    if plrChar then
        return plrChar:FindFirstChild(ToolName) or plrBag:FindFirstChild(ToolName)
    end
end

local function GetItemLevel(ToolName)
    local tool = VerifyTool(ToolName)
    
    if tool and tool:FindFirstChild("Level") then
        return tool.Level.Value
    end
end








spawn(function()
    while wait() do
        pcall(function()
            for v733, v734 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if (_G.BringMob and bringmob) then
                    if ((v734.Name == MonFarm) and v734:FindFirstChild("Humanoid") and (v734.Humanoid.Health > 0)) then
                        if (v734.Name == "Factory Staff") then
                            if ((v734.HumanoidRootPart.Position - FarmPos.Position).Magnitude <= 1000000000) then
                                v734.Head.CanCollide = false;
                                v734.HumanoidRootPart.CanCollide = false;
                                v734.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
                                v734.HumanoidRootPart.CFrame = FarmPos;
                                if v734.Humanoid:FindFirstChild("Animator") then
                                    v734.Humanoid.Animator:Destroy();
                                end
                                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
                            end
                        elseif (v734.Name == MonFarm) then
                            if ((v734.HumanoidRootPart.Position - FarmPos.Position).Magnitude <= 1000000000) then
                                v734.HumanoidRootPart.CFrame = FarmPos
                                v734.HumanoidRootPart.CanCollide = false;
                                v734.Head.CanCollide = false;
                                
                                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
                            end
                        end
                    end
                end
            end
        end);
    end
end);













--   —————— Discord ——————

--—————— Farm ——————







local function VerifyEnemie(searchName)
    local enemies = game.Workspace.Enemies:GetChildren()
    for _, enemy in pairs(enemies) do
        if enemy:IsA("Model") and enemy:FindFirstChild("Humanoid") then
            local humanoid = enemy:FindFirstChild("Humanoid")
            if humanoid.Health > 0 and string.lower(enemy.Name):find(string.lower(searchName)) then
                return true
            end
        end
    end
    return false
end







local function VerifyNPC(searchName)
    local enemies = game.Workspace.Enemies:GetChildren()
    for _, enemy in pairs(enemies) do
        if enemy:IsA("Model") and enemy:FindFirstChild("Humanoid") then
            local humanoid = enemy:FindFirstChild("Humanoid")
            if humanoid.Health > 0 and string.lower(enemy.Name) == string.lower(searchName) then
                return true
            end
        end
    end
    return false
end












--[[
function GetEnemieLevel(MonsterName)
    pcall(function()
        CheckLevel()
        for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
            if v.Name == MonsterName and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") then
                while v.Humanoid.Health > 0 and game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) do
                    if not _G.AutoFarmLevel then
                        break
                    end

                    -- Gerar deslocamento aleatório dentro do raio EnemiePosY
                    local randomOffset = Vector3.new(
                        math.random(-getgenv().EnemiePosY, getgenv().EnemiePosY),  -- Aleatório no eixo X
                        math.random(-getgenv().EnemiePosY, getgenv().EnemiePosY),  -- Aleatório no eixo Y (para cima e para baixo)
                        math.random(-getgenv().EnemiePosY, getgenv().EnemiePosY)   -- Aleatório no eixo Z
                    )
                    
                    -- Verificar se a magnitude do deslocamento é menor ou igual a EnemiePosY
                    if randomOffset.Magnitude <= getgenv().EnemiePosY then
                        -- Calcular a nova posição, somando o deslocamento ao HumanoidRootPart
                        local newPosition = v.HumanoidRootPart.Position + randomOffset
                        Tween(newPosition)
                    end

                    task.wait()
                end
            end
        end
    end)
end
]]--

function GetEnemieLevel(MonsterName)
    pcall(function()
        CheckLevel()
        for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
            if v.Name == MonsterName and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") then
                while v.Humanoid.Health > 0 and game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) do
                    if not _G.AutoFarmLevel then
                        break
                    end

                    -- Gerar deslocamento aleatório dentro do raio EnemiePosY
                    local randomOffset = Vector3.new(
                        math.random(-getgenv().EnemiePosY, getgenv().EnemiePosY),  -- Aleatório no eixo X
                        0,  -- Manter o valor de Y constante, ou pode ser alterado conforme sua necessidade
                        math.random(-getgenv().EnemiePosY, getgenv().EnemiePosY)   -- Aleatório no eixo Z
                    )
                    
                    -- Verificar se a magnitude do deslocamento é menor ou igual a EnemiePosY
                    if randomOffset.Magnitude <= getgenv().EnemiePosY then
                        -- Calcular a nova posição, somando o deslocamento ao HumanoidRootPart
                        local newPosition = v.HumanoidRootPart.Position + randomOffset
                        Tween(newPosition)
                    end

                    task.wait()
                end
            end
        end
    end)
end



function CheckLevel()
    local Level = game:GetService("Players").LocalPlayer.Data.Level.Value
    if Sea1 then
        if (Level <= 9) then
        if tostring(game:GetService("Players").LocalPlayer.Team) == "Pirates" then
            Ms = "Bandit"
            NameQuest = "BanditQuest1"
            QuestLv = 1
            NameMon = "Bandit"
            CFrameQ = Vector3.new(1060, 16, 1547)
            CFrameMon = Vector3.new( 1036, 41, 1594)
    CFrameSpawn = {Vector3.new( 943, 50, 1515), Vector3.new( 972, 50, 1622), Vector3.new( 1117, 50, 1658),Vector3.new( 1231, 50, 1550),Vector3.new( 1331, 50, 1530)}
            else
            Ms = "Trainee"
            NameQuest = "MarineQuest"
            QuestLv = 1
            NameMon = "Trainees"
            CFrameQ = Vector3.new( -2709, 24, 2103)
            CFrameMon = Vector3.new( -2872, 24, 2217)
    CFrameSpawn = {Vector3.new( -2863, 80, 2119), Vector3.new( -2963, 80, 2308),Vector3.new( -2738, 80, 2237),Vector3.new( -2738, 80, 2237),Vector3.new( -2738, 80, 2237)}
            end
            
        elseif (Level == 10) or (Level <= 14) then
            Ms = "Monkey"
            NameQuest = "JungleQuest"
            QuestLv = 1
            NameMon = "Monkey"
            CFrameQ = Vector3.new(-1601, 36, 153)
            CFrameMon = Vector3.new( -1611, 20, 149)
    CFrameSpawn = {Vector3.new( -1737, 60, -57),Vector3.new( -1486, 60, 94),Vector3.new( -1293, 60, -8),Vector3.new( -1214, 60, 269),Vector3.new( -1588, 50, 365)}
    
        elseif (Level == 15 or Level <= 29) then
        if VerifyEnemie("The Gorilla King") and (Level >= 25) then
            Ms = "The Gorilla King"
            NameQuest = "JungleQuest"
            QuestLv = 3
            NameMon = "The Gorilla King"
            CFrameQ = Vector3.new(-1601, 36, 153)
            CFrameMon = Vector3.new( -1129, 6, -514)
             CFrameSpawn = {Vector3.new( -1078, 40, -481),Vector3.new( -1078, 40, -481),Vector3.new( -1078, 40, -481),Vector3.new( -1078, 40, -481),Vector3.new( -1078, 40, -481)}
            else
            Ms = "Gorilla"
            NameQuest = "JungleQuest"
            QuestLv = 2
            NameMon = "Gorilla"
            CFrameQ = Vector3.new(-1601, 36, 153)
            CFrameMon = Vector3.new( -1197, 6, -561)
             CFrameSpawn = {Vector3.new( -1345, 55, -480),Vector3.new( -1178, 55, -661),Vector3.new( -1178, 55, -661),Vector3.new( -1264, 55, -418),Vector3.new( -1264, 55, -418)}
            end
            
        elseif (Level == 30) or (Level <= 39) then
            Ms = "Pirate"
            NameQuest = "BuggyQuest1"
            QuestLv = 1
            NameMon = "Pirate"
            CFrameQ = Vector3.new(-1140, 4, 3837)
            CFrameMon = Vector3.new( -1148, 23, 3982)
            CFrameSpawn = {
            Vector3.new( -1301, 55, 3938),
            Vector3.new( -1143, 55, 3893),
            Vector3.new( -980, 55, 3923),
            Vector3.new( -950, 55, 4049),
            Vector3.new( -950, 55, 4049)
            }
            
        elseif Level == 40 or Level <= 59 then
        if VerifyEnemie("Bobby") and Level >= 55 then
    Ms = "Bobby"
    NameQuest = "BuggyQuest1"
    QuestLv = 3
    NameMon = "Bobby"
    CFrameQ = Vector3.new(-1140, 4, 3827)
    CFrameMon = Vector3.new( -1153, 58, 4172)
    CFrameSpawn = {Vector3.new( -1131, 114, 4116),Vector3.new( -1131, 114, 4116),Vector3.new( -1131, 114, 4116),Vector3.new( -1131, 114, 4116),Vector3.new( -1131, 114, 4116)}
    else
    Ms = "Brute"
    NameQuest = "BuggyQuest1"
    QuestLv = 2
    NameMon = "Brute"
    CFrameQ = Vector3.new(-1140, 4, 3827)
    CFrameMon = Vector3.new( -1153, 58, 4172)
    CFrameSpawn = {}
    end
    
        elseif (Level == 60 or Level <= 74) then
    Ms = "Desert Bandit"
    NameQuest = "DesertQuest"
    QuestLv = 1
    NameMon = "Desert Bandit"
    CFrameQ = Vector3.new(896, 6, 4390)
    CFrameMon = Vector3.new( 1048, 6, 4490)
    CFrameSpawn = {}
    
        elseif (Level == 75 or Level <= 89) then
    Ms = "Desert Officer"
    NameQuest = "DesertQuest"
    QuestLv = 2
    NameMon = "Desert Officer"
    CFrameQ = Vector3.new(896, 6, 4390)
    CFrameMon = Vector3.new( 1656, 1, 4323)
    CFrameSpawn = {}
    
    elseif (Level == 90 or Level <= 99) then
    Ms = "Snow Bandit"
    NameQuest = "SnowQuest"
    QuestLv = 1
    NameMon = "Snow Bandit"
    CFrameQ = Vector3.new(1386, 87, -1298)
    CFrameMon = Vector3.new( 1279, 87, -1437)
    CFrameSpawn = {}
    
    elseif (Level == 100 or Level <= 119) then
    if VerifyEnemie("Yeti") and (Level >= 110) then
    Ms = "Yeti"
    NameQuest = "SnowQuest"
    QuestLv = 3
    NameMon = "Yeti"
    CFrameQ = Vector3.new(1386, 87, -1298)
    CFrameMon = Vector3.new( 1279, 87, -1437)
    CFrameSpawn = {}
    else
    Ms = "Snowman"
    NameQuest = "SnowQuest"
    QuestLv = 2
    NameMon = "Snowman"
    CFrameQ = Vector3.new(1386, 87, -1298)
    CFrameMon = Vector3.new( 1279, 87, -1437)
    CFrameSpawn = {}
    end
    
        elseif (Level == 120 or Level <= 149) then
        if VerifyEnemie("Vice Admiral") and Level > 129 then
    Ms = "Vice Admiral"
    NameQuest = "MarineQuest2"
    QuestLv = 2
    NameMon = "Vice Admiral"
    CFrameQ = Vector3.new(-5035, 28, 4324)
    CFrameMon = Vector3.new( -4861, 51, 4543)
    CFrameSpawn = {}
    else
    Ms = "Chief Petty Officer"
    NameQuest = "MarineQuest2"
    QuestLv = 1
    NameMon = "Chief Petty Officer"
    CFrameQ = Vector3.new(-5035, 28, 4324)
    CFrameMon = Vector3.new( -4861, 51, 4543)
    CFrameSpawn = {}
    end
    
        elseif (Level == 150 or Level <= 174) then
    Ms = "Sky Bandit"
    NameQuest = "SkyQuest"
    QuestLv = 1
    NameMon = "Sky Bandit"
    CFrameQ = Vector3.new(-4842, 717, -2623)
    CFrameMon = Vector3.new( -4965, 278, -2937)
    CFrameSpawn = {}
    
        elseif (Level == 175 or Level <= 189) then
    Ms = "Dark Master"
    NameQuest = "SkyQuest"
    QuestLv = 2
    NameMon = "Dark Master"
    CFrameQ = Vector3.new(-4842, 717, -2623)
    CFrameMon = Vector3.new( -5225, 412, -2279)
    CFrameSpawn = {}
    
        elseif (Level == 190 or Level <= 209) then
    Ms = "Prisoner"
    NameQuest = "PrisonerQuest"
    QuestLv = 1
    NameMon = "Prisoner"
    CFrameQ = Vector3.new(5310, 0, 474)
    CFrameMon = Vector3.new( 5148, 88, 511)
    CFrameSpawn = {}
    
        elseif (Level == 210 or Level <= 249) then
       
    Ms = "Dangerous Prisoner"
    NameQuest = "PrisonerQuest"
    QuestLv = 2
    NameMon = "Dangerous Prisoner"
    CFrameQ = Vector3.new(5310, 0, 474)
    CFrameMon = Vector3.new( 5538, 1, 851)
    CFrameSpawn = {}
    
    
        elseif (Level == 250 or Level <= 274) then
    Ms = "Toga Warrior"
    NameQuest = "ColosseumQuest"
    QuestLv = 1
    NameMon = "Toga Warrior"
    CFrameQ = Vector3.new(-1577, 7, -2984)
    CFrameMon = Vector3.new( -2056, 7, -2914)
    CFrameSpawn = {}
    
        elseif (Level == 275 or Level <= 299) then
    Ms = "Gladiator"
    NameQuest = "ColosseumQuest"
    QuestLv = 2
    NameMon = "Gladiator"
    CFrameQ = Vector3.new(-1577, 7, -2984)
    CFrameMon = Vector3.new( -1328, 35, -3233)
    CFrameSpawn = {}
    
        elseif (Level == 300 or Level <= 324) then
    Ms = "Military Soldier"
    NameQuest = "MagmaQuest"
    QuestLv = 1
    NameMon = "Military Soldier"
    CFrameQ = Vector3.new(-5316, 12, 8517)
    CFrameMon = Vector3.new( -5396, 9, 8522)
    CFrameSpawn = {}

elseif (Level == 325 or Level <= 374) then
if VerifyEnemie("Magma Admiral") and Level > 349 then
    Ms = "Magma Admiral"
    NameQuest = "MagmaQuest"
    QuestLv = 3
    NameMon = "Magma Admiral"
    CFrameQ = Vector3.new(-5316, 12, 8517)
    CFrameMon = Vector3.new( -5542, 17, 8717)
    CFrameSpawn = {}
    else
    Ms = "Military Spy"
    NameQuest = "MagmaQuest"
    QuestLv = 2
    NameMon = "Military Spy"
    CFrameQ = Vector3.new(-5316, 12, 8517)
    CFrameMon = Vector3.new( -5793, 34, 8813)
    CFrameSpawn = {}
    end
    
        elseif (Level == 375 or Level <= 399) then
    Ms = "Fishman Warrior"
    NameQuest = "FishmanQuest"
    QuestLv = 1
    NameMon = "Fishman Warrior"
    CFrameQ = Vector3.new(61122, 18, 1569)
    CFrameMon = Vector3.new( 61007, 27, 1314)
    CFrameSpawn = {}

elseif (Level == 400 or Level <= 449) then
if VerifyEnemie("Fishman Lord") and Level > 424 then
Ms = "Fishman Lord"
    NameQuest = "FishmanQuest"
    QuestLv = 3
    NameMon = "Fishman Lord"
    CFrameQ = Vector3.new(61122, 18, 1569)
    CFrameMon = Vector3.new( 61371, 18, 1111)
    CFrameSpawn = {}
else
    Ms = "Fishman Commando"
    NameQuest = "FishmanQuest"
    QuestLv = 2
    NameMon = "Fishman Commando"
    CFrameQ = Vector3.new(61122, 18, 1569)
    CFrameMon = Vector3.new( 61947, 18, 1562)
    CFrameSpawn = {}
    end
    
        elseif (Level == 450 or Level <= 474) then
    Ms = "God's Guard"
    NameQuest = "SkyExp1Quest"
    QuestLv = 1
    NameMon = "God's Guard"
    CFrameQ = Vector3.new(-4721, 845, -1953)
    CFrameMon = Vector3.new( -4812, 844, -1912)
    CFrameSpawn = {}

elseif (Level == 475 or Level <= 524) then
if VerifyEnemie("Wysper") and Level > 499 then
   Ms = "Wysper"
    NameQuest = "SkyExp1Quest"
    QuestLv = 3
    NameMon = "Wysper"
    CFrameQ = Vector3.new(-7863, 5545, -378)
    CFrameMon = Vector3.new( -7803, 5545, -594)
    CFrameSpawn = {}
    else
    Ms = "Shanda"
    NameQuest = "SkyExp1Quest"
    QuestLv = 2
    NameMon = "Shanda"
    CFrameQ = Vector3.new(-7863, 5545, -378)
    CFrameMon = Vector3.new( -7803, 5545, -594)
    CFrameSpawn = {}
    end
    
        elseif (Level == 525 or Level <= 549) then
    Ms = "Royal Squad"
    NameQuest = "SkyExp2Quest"
    QuestLv = 1
    NameMon = "Royal Squad"
    CFrameQ = Vector3.new(-7903, 5635, -1410)
    CFrameMon = Vector3.new( -7741, 5606, -1551)
    CFrameSpawn = {}

elseif (Level == 550 or Level <= 624) then
    if VerifyEnemie("Thunder God") and Level > 574 then
    Ms = "Thunder God"
    NameQuest = "SkyExp2Quest"
    QuestLv = 3
    NameMon = "Thunder God"
    CFrameQ = Vector3.new(-7903, 5635, -1410)
    CFrameMon = Vector3.new( -7809, 5606, -2435)
    CFrameSpawn = {}
    else
    Ms = "Royal Soldier"
    NameQuest = "SkyExp2Quest"
    QuestLv = 2
    NameMon = "Royal Soldier"
    CFrameQ = Vector3.new(-7903, 5635, -1410)
    CFrameMon = Vector3.new( -7811, 5606, -1782)
    CFrameSpawn = {}
    end
    
elseif (Level == 625 or Level <= 649) then
    Ms = "Galley Pirate"
    NameQuest = "FountainQuest"
    QuestLv = 1
    NameMon = "Galley Pirate"
    CFrameQ = Vector3.new(5258, 38, 4050)
    CFrameMon = Vector3.new( 5497, 38, 4059)
    CFrameSpawn = {}

elseif (Level >= 650) then
if VerifyEnemie("Cyborg") and Level > 674 then
    Ms = "Cyborg"
    NameQuest = "FountainQuest"
    QuestLv = 3
    NameMon = "Cyborg"
    CFrameQ = Vector3.new(5258, 38, 4050)
    CFrameMon = Vector3.new( 6268, 24, 3997)
    CFrameSpawn = {}
    else
    Ms = "Galley Captain"
    NameQuest = "FountainQuest"
    QuestLv = 2
    NameMon = "Galley Captain"
    CFrameQ = Vector3.new(5258, 38, 4050)
    CFrameMon = Vector3.new( 5872, 38, 4744)
    CFrameSpawn = {}
    
    end
  end
end
    if Sea2 then
        if (Level == 700) or (Level <= 724) then
    Ms = "Raider"
    NameQuest = "Area1Quest"
    QuestLv = 1
    NameMon = "Raider"
    CFrameQ = Vector3.new(-427, 72, 1835)
    CFrameMon = Vector3.new( -712, 38, 2014)
    CFrameSpawn = {}
    
        elseif (Level == 725) or (Level <= 774) then
        if VerifyEnemie("Diamond") and (Level > 749) then
    Ms = "Diamond"
    NameQuest = "Area1Quest"
    QuestLv = 3
    NameMon = "Diamond"
    CFrameQ = Vector3.new(-427, 72, 1835)
    CFrameMon = Vector3.new( -1760, 198, -65)
    CFrameSpawn = {}
    else
    Ms = "Mercenary"
    NameQuest = "Area1Quest"
    QuestLv = 2
    NameMon = "Mercenary"
    CFrameQ = Vector3.new(-427, 72, 1835)
    CFrameMon = Vector3.new( -1164, 72, 1273)
    CFrameSpawn = {}
    end
    
        elseif (Level == 775) or (Level <= 799) then
    Ms = "Swan Pirate"
    NameQuest = "Area2Quest"
    QuestLv = 1
    NameMon = "Swan Pirate"
    CFrameQ = Vector3.new(635, 73, 917)
    CFrameMon = Vector3.new( 848, 75, 1268)
    CFrameSpawn = {}
    
        elseif (Level == 800) or (Level <= 874) then
        if VerifyEnemie("Jeremy") and (Level > 849) then
    Ms = "Jeremy"
    NameQuest = "Area2Quest"
    QuestLv = 3
    NameMon = "Jeremy"
    CFrameQ = Vector3.new(635, 73, 917)
    CFrameMon = Vector3.new( 2292, 448, 757)
    CFrameSpawn = {}
    else
    Ms = "Factory Staff"
    NameQuest = "Area2Quest"
    QuestLv = 2
    NameMon = "Factory Staff"
    CFrameQ = Vector3.new(635, 73, 917)
    CFrameMon = Vector3.new( 962, 74, 1306)
    CFrameSpawn = {}
    end
    
        elseif (Level == 875) or (Level <= 899) then
    Ms = "Marine Lieutenant"
    NameQuest = "MarineQuest3"
    QuestLv = 1
    NameMon = "Marine Lieutenant"
    CFrameQ = Vector3.new(-2440, 73, -3217)
    CFrameMon = Vector3.new( -2824, 72, -3183)
    CFrameSpawn = {}
    
            elseif (Level == 900) or (Level <= 949) then
            if VerifyEnemie("Fajita") and (Level > 924) then
    Ms = "Fajita"
    NameQuest = "MarineQuest3"
    QuestLv = 3
    NameMon = "Fajita"
    CFrameQ = Vector3.new(-2440, 73, -3217)
    CFrameMon = Vector3.new( -2006, 72, -4459)
    CFrameSpawn = {}
    else
    Ms = "Marine Captain"
    NameQuest = "MarineQuest3"
    QuestLv = 2
    NameMon = "Marine Captain"
    CFrameQ = Vector3.new(-2440, 73, -3217)
    CFrameMon = Vector3.new( -1797, 72, -3198)
    CFrameSpawn = {}
    end
    
        elseif (Level == 950) or (Level <= 974) then
    Ms = "Zombie"
    NameQuest = "ZombieQuest"
    QuestLv = 1
    NameMon = "Zombie"
    CFrameQ = Vector3.new(-5494, 48, -794)
    CFrameMon = Vector3.new( -5631, 48, -773)
    CFrameSpawn = {}
    
        elseif (Level == 975) or (Level <= 999) then
    Ms = "Vampire"
    NameQuest = "ZombieQuest"
    QuestLv = 2
    NameMon = "Vampire"
    CFrameQ = Vector3.new(-5494, 48, -794)
    CFrameMon = Vector3.new( -6103, 227, -1290)
    CFrameSpawn = {}
    
        elseif (Level == 1000) or (Level <= 1049) then
    Ms = "Snow Trooper"
    NameQuest = "SnowMountainQuest"
    QuestLv = 1
    NameMon = "Snow Trooper"
    CFrameQ = Vector3.new(607, 401, -5370)
    CFrameMon = Vector3.new( 531, 425, -5489)
    CFrameSpawn = {}
    
        elseif (Level == 1050) or (Level <= 1099) then
    Ms = "Winter Warrior"
    NameQuest = "SnowMountainQuest"
    QuestLv = 2
    NameMon = "Winter Warrior"
    CFrameQ = Vector3.new(607, 401, -5370)
    CFrameMon = Vector3.new( 1267, 430, -5180)
    CFrameSpawn = {}
    
        elseif (Level == 1100) or (Level <= 1124) then
    Ms = "Lab Subordinate"
    NameQuest = "IceSideQuest"
    QuestLv = 1
    NameMon = "Lab Subordinate"
    CFrameQ = Vector3.new(-6061, 15, -4902)
    CFrameMon = Vector3.new( -5782, 15, -4483)
    CFrameSpawn = {}
    
        elseif (Level == 1125) or (Level <= 1174) then
        if VerifyEnemie("Smoke Admiral") and (Level > 1149) then
    Ms = "Smoke Admiral"
    NameQuest = "IceSideQuest"
    QuestLv = 3
    NameMon = "Smoke Admiral"
    CFrameQ = Vector3.new(-6061, 15, -4902)
    CFrameMon = Vector3.new( -5006, 23, -5363)
    CFrameSpawn = {}
    else
    Ms = "Horned Warrior"
    NameQuest = "IceSideQuest"
    QuestLv = 2
    NameMon = "Horned Warrior"
    CFrameQ = Vector3.new(-6061, 15, -4902)
    CFrameMon = Vector3.new( -6377, 15, -5993)
    CFrameSpawn = {}
    end
    
elseif (Level == 1175) or (Level <= 1199) then
    Ms = "Magma Ninja"
    NameQuest = "FireSideQuest"
    QuestLv = 1
    NameMon = "Magma Ninja"
    CFrameQ = Vector3.new(-5429, 15, -5297)
    CFrameMon = Vector3.new( -5509, 15, -5948)
    CFrameSpawn = {}

elseif (Level == 1200) or (Level <= 1249) then
    Ms = "Lava Pirate"
    NameQuest = "FireSideQuest"
    QuestLv = 2
    NameMon = "Lava Pirate"
    CFrameQ = Vector3.new(-5429, 15, -5297)
    CFrameMon = Vector3.new( -5224, 15, -4728)
    CFrameSpawn = {}
    
        elseif (Level == 1250) or (Level <= 1274) then
    Ms = "Ship Deckhand"
    NameQuest = "ShipQuest1"
    QuestLv = 1
    NameMon = "Ship Deckhand"
    CFrameQ = Vector3.new(1040, 125, 32911)
    CFrameMon = Vector3.new( 680, 125, 33059)
    CFrameSpawn = {}

elseif (Level == 1275) or (Level <= 1299) then
    Ms = "Ship Engineer"
    NameQuest = "ShipQuest1"
    QuestLv = 2
    NameMon = "Ship Engineer"
    CFrameQ = Vector3.new(1040, 125, 32911)
    CFrameMon = Vector3.new( 908, 40, 32878)
    CFrameSpawn = {}

elseif (Level == 1300) or (Level <= 1324) then
    Ms = "Ship Steward"
    NameQuest = "ShipQuest2"
    QuestLv = 1
    NameMon = "Ship Steward"
    CFrameQ = Vector3.new(971, 125, 33245)
    CFrameMon = Vector3.new( 897, 125, 33538)
    CFrameSpawn = {}

elseif (Level == 1325) or (Level <= 1349) then
    Ms = "Ship Officer"
    NameQuest = "ShipQuest2"
    QuestLv = 2
    NameMon = "Ship Officer"
    CFrameQ = Vector3.new(971, 125, 33245)
    CFrameMon = Vector3.new( 719, 181, 33312)
    CFrameSpawn = {}
    
        elseif (Level == 1350) or (Level <= 1374) then
    Ms = "Arctic Warrior"
    NameQuest = "FrostQuest"
    QuestLv = 1
    NameMon = "Arctic Warrior"
    CFrameQ = Vector3.new(5668, 28, -6484)
    CFrameMon = Vector3.new( 5990, 28, -6172)
    CFrameSpawn = {}

elseif (Level == 1375) or (Level <= 1424) then
if VerifyEnemie("Awakened Ice Admiral") and (Level > 1399) then
    Ms = "Awakened Ice Admiral"
    NameQuest = "FrostQuest"
    QuestLv = 3
    NameMon = "Awakened Ice Admiral"
    CFrameQ = Vector3.new(5668, 28, -6484)
    CFrameMon = Vector3.new( 6541, 296, -6997)
    CFrameSpawn = {}
    else
    Ms = "Snow Lurker"
    NameQuest = "FrostQuest"
    QuestLv = 2
    NameMon = "Snow Lurker"
    CFrameQ = Vector3.new(5668, 28, -6484)
    CFrameMon = Vector3.new( 5568, 28, -6835)
    CFrameSpawn = {}
    end
    
        elseif (Level == 1425) or (Level <= 1449) then
    Ms = "Sea Soldier"
    NameQuest = "ForgottenQuest"
    QuestLv = 1
    NameMon = "Sea Soldier"
    CFrameQ = Vector3.new(-3054, 236, -10147)
    CFrameMon = Vector3.new( -3259, 14, -9770)
    CFrameSpawn = {}

elseif (Level >= 1450) then
if VerifyNPC("Tide Keeper") and (Level > 1474) then
    Ms = "Tide Keeper"
    NameQuest = "ForgottenQuest"
    QuestLv = 3
    NameMon = "Tide Keeper"
    CFrameQ = Vector3.new(-3054, 236, -10147)
    CFrameMon = Vector3.new( -3684, 77, -11407)
    CFrameSpawn = {}
    else
    Ms = "Water Fighter"
    NameQuest = "ForgottenQuest"
    QuestLv = 2
    NameMon = "Water Fighter"
    CFrameQ = Vector3.new(-3054, 236, -10147)
    CFrameMon = Vector3.new( -3220, 238, -10589)
    CFrameMon2 = CFrame.new( -3220, 238, -10589)
    CFrameSpawn = {}
    
            end
        end
    end
    if Sea3 then
        if (Level == 1500) or (Level <= 1524) then
    Ms = "Pirate Millionaire"
    NameQuest = "PiratePortQuest"
    QuestLv = 1
    NameMon = "Pirate Millionaire"
    CFrameQ = Vector3.new(-450, 107, 5950)
    CFrameMon = Vector3.new( -733, 59, 5717)
    CFrameSpawn = {}

elseif (Level == 1525) or (Level <= 1574) then
if VerifyNPC("Stone") and (Level > 1549) then
    Ms = "Stone"
    NameQuest = "PiratePortQuest"
    QuestLv = 3
    NameMon = "Stone"
    CFrameQ = Vector3.new(-450, 107, 5950)
    CFrameMon = Vector3.new( -1064, 52, 6789)
    CFrameSpawn = {}
    else
    Ms = "Pistol Billionaire"
    NameQuest = "PiratePortQuest"
    QuestLv = 2
    NameMon = "Pistol Billionaire"
    CFrameQ = Vector3.new(-450, 107, 5950)
    CFrameMon = Vector3.new( -58, 118, 6071)
    CFrameSpawn = {}
    end
    
        elseif (Level == 1575) or (Level <= 1599) then
    Ms = "Dragon Crew Warrior"
    NameQuest = "DragonCrewQuest"
    QuestLv = 1
    NameMon = "Dragon Crew Warrior"
    CFrameQ = Vector3.new(6735, 126, -711)
    CFrameMon = Vector3.new( 6694, 55, -774)
    CFrameSpawn = {}

elseif (Level == 1600) or (Level <= 1624) then
    Ms = "Dragon Crew Archer"
    NameQuest = "DragonCrewQuest"
    QuestLv = 2
    NameMon = "Dragon Crew Archer"
    CFrameQ = Vector3.new(6735, 126, -711)
    CFrameMon = Vector3.new( 6791, 535, 457)
    CFrameSpawn = {}

elseif (Level == 1625) or (Level <= 1649) then
    Ms = "Hydra Enforcer"
    NameQuest = "VenomCrewQuest"
    QuestLv = 1
    NameMon = "Hydra Enforcer"
    CFrameQ = Vector3.new(5446, 601, 749)
    CFrameMon = Vector3.new( 4501, 1002, 384)
    CFrameSpawn = {}

elseif (Level == 1650) or (Level <= 1699) then
if VerifyNPC("Hydra Leader") and (Level > 1674) then
    Ms = "Hydra Leader"
    NameQuest = "VenomCrewQuest"
    QuestLv = 3
    NameMon = "Hydra Leader"
    CFrameQ = Vector3.new(5446, 601, 749)
    CFrameMon = Vector3.new( 5857, 1075, -98)
    CFrameSpawn = {}
    else
   Ms = "Venomous Assailant"
    NameQuest = "VenomCrewQuest"
    QuestLv = 2
    NameMon = "Venomous Assailant"
    CFrameQ = Vector3.new(5446, 601, 749)
    CFrameMon =  Vector3.new( 4460, 1218, 432)
    CFrameSpawn = {}
    end
    
        elseif (Level == 1700) or (Level <= 1724) then
    Ms = "Marine Commodore"
    NameQuest = "MarineTreeIsland"
    QuestLv = 1
    NameMon = "Marine Commodore"
    CFrameQ = Vector3.new(2179, 28, -6740)
    CFrameMon = Vector3.new( 2553, 74, -7609)
    CFrameSpawn = {}

elseif (Level == 1725) or (Level <= 1774) then
if VerifyNPC("Kilo Admiral") and (Level > 1749) then
    Ms = "Kilo Admiral"
    NameQuest = "MarineTreeIsland"
    QuestLv = 3
    NameMon = "Kilo Admiral"
    CFrameQ = Vector3.new(2179, 28, -6740)
    CFrameMon = Vector3.new( 2952, 509, -7364)
    CFrameSpawn = {}
    else
    Ms = "Marine Rear Admiral"
    NameQuest = "MarineTreeIsland"
    QuestLv = 2
    NameMon = "Marine Rear Admiral"
    CFrameQ = Vector3.new(2179, 28, -6740)
    CFrameMon = Vector3.new( 3723, 169, -7038)
    CFrameSpawn = {}
    end
    
        elseif (Level == 1775) or (Level <= 1799) then
    Ms = "Fishman Raider"
    NameQuest = "DeepForestIsland3"
    QuestLv = 1
 NameMon = "Fishman Raider"
    CFrameQ = Vector3.new(-10582, 331, -8757)
    CFrameMon = Vector3.new( -10734, 334, -8324)
    CFrameSpawn = {}
    
        elseif (Level == 1800) or (Level <= 1824) then
    Ms = "Fishman Captain"
    NameQuest = "DeepForestIsland3"
    QuestLv = 2
    NameMon = "Fishman Captain"
    CFrameQ = Vector3.new(-10583, 331, -8759)
    CFrameMon = Vector3.new( -11099, 331, -8977)
    CFrameSpawn = {}

elseif (Level == 1825) or (Level <= 1849) then
    Ms = "Forest Pirate"
    NameQuest = "DeepForestIsland"
    QuestLv = 1
    NameMon = "Forest Pirate"
    CFrameQ = Vector3.new(-13232, 332, -7626)
    CFrameMon = Vector3.new( -13287, 332, -7822)
    CFrameSpawn = {}

elseif (Level == 1850) or (Level <= 1899) then
if VerifyNPC("Captain Elephant") and (Level > 1874) then
    Ms = "Captain Elephant"
    NameQuest = "DeepForestIsland"
    QuestLv = 3
    NameMon = "Captain Elephant"
    CFrameQ = Vector3.new(-13232, 332, -7626)
    CFrameMon = Vector3.new( -13289, 319, -8625)
    CFrameSpawn = {}
   else 
Ms = "Mythological Pirate"
    NameQuest = "DeepForestIsland"
    QuestLv = 2
    NameMon = "Mythological Pirate"
    CFrameQ = Vector3.new(-13232, 332, -7626)
    CFrameMon = Vector3.new( -13413, 469, -6952)
    CFrameSpawn = {}
end

elseif (Level == 1900) or (Level <= 1924) then
    Ms = "Jungle Pirate"
    NameQuest = "DeepForestIsland2"
    QuestLv = 1
    NameMon = "Jungle Pirate"
    CFrameQ = Vector3.new(-12682, 390, -9902)
    CFrameMon = Vector3.new( -12042, 445, -10695)
    CFrameSpawn = {}

elseif (Level == 1925) or (Level <= 1974) then
    if VerifyNPC("Beautiful Pirate") and (Level > 1949) then
    Ms = "Beautiful Pirate"
    NameQuest = "DeepForestIsland2"
    QuestLv = 3
    NameMon = "Beautiful Pirate"
    CFrameQ = Vector3.new(-12682, 390, -9902)
    CFrameMon = Vector3.new( 5372, 22, -172)
    CFrameSpawn = {}
    else
    Ms = "Musketeer Pirate"
    NameQuest = "DeepForestIsland2"
    QuestLv = 2
    NameMon = "Musketeer Pirate"
    CFrameQ = Vector3.new(-12682, 390, -9902)
    CFrameMon = Vector3.new( -13512, 403, -9863)
    CFrameSpawn = {}
    end
    
        elseif (Level == 1975) or (Level <= 1999) then
    Ms = "Reborn Skeleton"
    NameQuest = "HauntedQuest1"
    QuestLv = 1
    NameMon = "Reborn Skeleton"
    CFrameQ = Vector3.new(-9481, 142, 5566)
    CFrameMon = Vector3.new( -8899, 141, 6121)
    CFrameSpawn = {}

elseif (Level == 2000) or (Level <= 2024) then
    Ms = "Living Zombie"
    NameQuest = "HauntedQuest1"
    QuestLv = 2
    NameMon = "Living Zombie"
    CFrameQ = Vector3.new(-9481, 142, 5566)
    CFrameMon = Vector3.new( -10191, 138, 5885)
    CFrameSpawn = {}

elseif (Level == 2025) or (Level <= 2049) then
    Ms = "Demonic Soul"
    NameQuest = "HauntedQuest2"
    QuestLv = 1
    NameMon = "Demonic Soul"
    CFrameQ = Vector3.new(-9517, 178, 6078)
    CFrameMon = Vector3.new( -9553, 165, 6267)
    CFrameSpawn = {}

elseif (Level == 2050) or (Level <= 2074) then
    Ms = "Posessed Mummy"
    NameQuest = "HauntedQuest2"
    QuestLv = 2
    NameMon = "Posessed Mummy"
    CFrameQ = Vector3.new(-9517, 178, 6078)
    CFrameMon = Vector3.new( -9524, 6, 6343)
    CFrameSpawn = {}
        
            elseif (Level == 2075) or (Level <= 2099) then
    Ms = "Peanut Scout"
    NameQuest = "NutsIslandQuest"
    QuestLv = 1
    NameMon = "Peanut Scout"
    CFrameQ = Vector3.new(-2105, 37, -10195)
    CFrameMon = Vector3.new( -2103, 37, -10076)
    CFrameSpawn = {}
    
        elseif (Level == 2100) or (Level <= 2124) then
    Ms = "Peanut President"
    NameQuest = "NutsIslandQuest"
    QuestLv = 2
    NameMon = "Peanut President"
    CFrameQ = Vector3.new(- 2105, 37, - 10195)
    CFrameMon = Vector3.new( -2197, 88, -10450)
    CFrameSpawn = {}
    
            elseif (Level == 2125) or (Level <= 2149) then
    Ms = "Ice Cream Chef"
    NameQuest = "IceCreamIslandQuest"
    QuestLv = 1
    NameMon = "Ice Cream Chef"
    CFrameQ = Vector3.new(- 819, 64, - 10967)
    CFrameMon = Vector3.new( -797, 65, -10990)
    CFrameSpawn = {}

elseif (Level == 2150) or (Level <= 2199) then
    if VerifyEnemie("Cake Queen") and (Level > 2174) then
    Ms = "Cake Queen"
    NameQuest = "IceCreamIslandQuest"
    QuestLv = 3
    NameMon = "Cake Queen"
    CFrameQ = Vector3.new(- 819, 64, - 10967)
    CFrameMon = Vector3.new( -725, 381, -11056)
    CFrameSpawn = {}
    else
    Ms = "Ice Cream Commander"
    NameQuest = "IceCreamIslandQuest"
    QuestLv = 2
    NameMon = "Ice Cream Commander"
    CFrameQ = Vector3.new(- 819, 64, - 10967)
    CFrameMon = Vector3.new( -508, 65, -11213)
    CFrameSpawn = {}
    end
    
        elseif (Level == 2200) or (Level <= 2224) then
    Ms = "Cookie Crafter"
    NameQuest = "CakeQuest1"
    QuestLv = 1
    NameMon = "Cookie Crafter"
    CFrameQ = Vector3.new(- 2022, 36, - 12030)
    CFrameMon = Vector3.new( -2277, 37, -12220)
    CFrameSpawn = {}

elseif (Level == 2225) or (Level <= 2249) then
    Ms = "Cake Guard"
    NameQuest = "CakeQuest1"
    QuestLv = 2
    NameMon = "Cake Guard"
    CFrameQ = Vector3.new(- 2022, 36, - 12030)
    CFrameMon = Vector3.new( -1572, 37, -12310)
    CFrameSpawn = {}

elseif (Level == 2250) or (Level <= 2274) then
    Ms = "Baking Staff"
    NameQuest = "CakeQuest2"
    QuestLv = 1
    NameMon = "Baking Staff"
    CFrameQ = Vector3.new(- 1928, 37, - 12840)
    CFrameMon = Vector3.new( -1911, 37, -12703)
    CFrameSpawn = {}

elseif (Level == 2275) or (Level <= 2299) then
    Ms = "Head Baker"
    NameQuest = "CakeQuest2"
    QuestLv = 2
    NameMon = "Head Baker"
    CFrameQ = Vector3.new(- 1928, 37, - 12840)
    CFrameMon = Vector3.new( -2245, 53, -12950)
    CFrameSpawn = {}

elseif (Level == 2300) or (Level <= 2324) then
    Ms = "Cocoa Warrior"
    NameQuest = "ChocQuest1"
    QuestLv = 1
    NameMon = "Cocoa Warrior"
    CFrameQ = Vector3.new(231, 23, - 12200)
    CFrameMon = Vector3.new( 67, 24, -12332)
    CFrameSpawn = {}

elseif (Level == 2325) or (Level <= 2349) then
    Ms = "Chocolate Bar Battler"
    NameQuest = "ChocQuest1"
    QuestLv = 2
    NameMon = "Chocolate Bar Battler"
    CFrameQ = Vector3.new(231, 23, - 12200)
    CFrameMon = Vector3.new( 747, 24, -12740)
    CFrameSpawn = {}

elseif (Level == 2350) or (Level <= 2374) then
    Ms = "Sweet Thief"
    NameQuest = "ChocQuest2"
    QuestLv = 1
    NameMon = "Sweet Thief"
    CFrameQ = Vector3.new(151, 23, - 12774)
    CFrameMon = Vector3.new( -194, 20, -12743)
    CFrameSpawn = {}

elseif (Level == 2375) or (Level <= 2400) then
    Ms = "Candy Rebel"
    NameQuest = "ChocQuest2"
    QuestLv = 2
    NameMon = "Candy Rebel"
    CFrameQ = Vector3.new(151, 23, - 12774)
    CFrameMon = Vector3.new( 11, 24, -13064)
    CFrameSpawn = {}

elseif (Level == 2400) or (Level <= 2424) then
    Ms = "Candy Pirate"
    NameQuest = "CandyQuest1"
    QuestLv = 1
    NameMon = "Candy Pirate"
    CFrameQ = Vector3.new(- 1149, 13, - 14445)
    CFrameMon = Vector3.new( -1181, 32, -14626)
    CFrameSpawn = {}
    
        elseif (Level == 2425) or (Level <= 2449) then
    Ms = "Snow Demon"
    NameQuest = "CandyQuest1"
    QuestLv = 2
    NameMon = "Snow Demon"
    CFrameQ = Vector3.new(- 1149, 13, - 14445)
    CFrameMon = Vector3.new( -978, 13, -14538)
    CFrameSpawn = {}
    
        elseif (Level == 2450) or (Level <= 2474) then
    Ms = "Isle Outlaw"
    NameQuest = "TikiQuest1"
    QuestLv = 1
    NameMon = "Isle Outlaw"
    CFrameQ = Vector3.new(- 16549, 55, - 179)
    CFrameMon = Vector3.new( -16233, 11, -208)
    CFrameSpawn = {}

elseif (Level == 2475) or (Level <= 2499) then
    Ms = "Island Boy"
    NameQuest = "TikiQuest1"
    QuestLv = 2
    NameMon = "Island Boy"
    CFrameQ = Vector3.new(- 16549, 55, - 179)
    CFrameMon = Vector3.new( -16873, 11, -151)
    CFrameSpawn = {}

elseif (Level == 2500) or (Level <= 2524) then
    Ms = "Sun-kissed Warrior"
    NameQuest = "TikiQuest2"
    QuestLv = 1
    NameMon = "Sun-kissed Warrior"
    CFrameQ = Vector3.new(- 16541, 54, 1051)
    CFrameMon = Vector3.new( -16174, 11, 1071)
    CFrameSpawn = {}

elseif (Level == 2525) or (Level <= 2549) then
    Ms = "Isle Champion"
    NameQuest = "TikiQuest2"
    QuestLv = 2
    NameMon = "Isle Champion"
    CFrameQ = Vector3.new(- 16541, 54, 1051)
    CFrameMon = Vector3.new( -16670, 55, 1041)
    CFrameSpawn = {}

elseif (Level == 2550) or (Level <= 2574) then
    Ms = "Serpent Hunter"
    NameQuest = "TikiQuest3"
    QuestLv = 1
    NameMon = "Serpent Hunter"
    CFrameQ = Vector3.new(- 16665, 104, 1579)
    CFrameMon = Vector3.new( -16456, 71, 1602)
    CFrameSpawn = {}

elseif (Level == 2575) or (Level <= 2599) or (Level == 2600) then
    Ms = "Skull Slayer"
    NameQuest = "TikiQuest3"
    QuestLv = 2
    NameMon = "Skull Slayer"
    CFrameQ = Vector3.new(- 16665, 104, 1579)
    CFrameMon = Vector3.new( -16922, 75, 1614)
    CFrameSpawn = {}
        end
    end
end






spawn(function()
    while task.wait() do
        if _G.AutoFarmLevel then
            -- Verificar se a missão está visível
            pcall(function()
                CheckLevel()
                
                QuestVisible = game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible
                CurrectQuest = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                
                if not QuestVisible or not string.find(CurrectQuest, NameMon) then
                    -- Abandonar a missão caso não esteja visível ou o nome da missão não coincida
                    FireRemote("AbandonQuest")
                    if (CFrameMon - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 999999999999999999999 then
                        FireRemote("StartQuest", NameQuest, QuestLv)
                    end
                elseif QuestVisible and string.find(CurrectQuest, NameMon) then
                    local foundEnemy = false
                    Tween(CFrameMon)
                    for _, enemy in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if enemy.Name == Ms and enemy:FindFirstChild("Humanoid") and enemy:FindFirstChild("HumanoidRootPart") and enemy.Humanoid.Health > 0 then
                            foundEnemy = true
                            pcall(function()
                                repeat
                                    task.wait()
                                    
                                    -- Impede movimento e pulo
                                    enemy.Humanoid.JumpPower = 0
                                    enemy.Humanoid.WalkSpeed = 0
                                    enemy.Humanoid.PlatformStand = true
                                    enemy.Humanoid.Sit = true

                                    -- Impede que a física afete o inimigo
                                    enemy.HumanoidRootPart.Anchored = true

                                    -- Adiciona um BodyVelocity para travar o movimento
                                    local bodyVelocity = Instance.new("BodyVelocity")
                                    bodyVelocity.Velocity = Vector3.new(0, 0, 0)
                                    bodyVelocity.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                                    bodyVelocity.Parent = enemy.HumanoidRootPart

                                    -- Adiciona um BodyGyro para travar a rotação
                                    local bodyGyro = Instance.new("BodyGyro")
                                    bodyGyro.CFrame = enemy.HumanoidRootPart.CFrame
                                    bodyGyro.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
                                    bodyGyro.Parent = enemy.HumanoidRootPart

                                    -- Desativa estados do Humanoid para impedir qualquer movimento
                                    enemy.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Running, false)
                                    enemy.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping, false)
                                    enemy.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall, false)
                                    enemy.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
                                    enemy.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing, false)

                                    -- Desativa a física de todas as partes do inimigo
                                    for _, part in pairs(enemy:GetChildren()) do
                                        if part:IsA("BasePart") then
                                            part.Anchored = true
                                            part.Velocity = Vector3.new(0, 0, 0)
                                            part.RotVelocity = Vector3.new(0, 0, 0)
                                        end
                                    end

                                    -- Desativa a IA do inimigo, se existir
                                    if enemy:FindFirstChild("AI") then
                                        enemy.AI.Disabled = true
                                    end

                                    -- Equipamento e outras funções
                                    -- EquipTool(SelectWeapon)
                                    
                                    GetEnemieLevel(enemy.Name)
                                    -- Tween(enemy.HumanoidRootPart.Position + Vector3.new(0, getgenv().EnemiePosY, 0))
                                    
                                    FarmPos = enemy.HumanoidRootPart.CFrame
                                    MonFarm = enemy.Name
                                    
                                until not _G.AutoFarmLevel or not QuestVisible or enemy.Humanoid.Health <= 0
                            end)
                        end
                    end
                    
                    if not foundEnemy then
                    
                        Tween(CFrameMon)
                    end
                end
            end)
        end
    end
end)

local player = game.Players.LocalPlayer
local workspace = game:GetService("Workspace")
function GetClosestEnemiesInRange(enemies)
    local playerPosition = (player.Character or player.CharacterAdded:Wait()):GetPivot().Position
    local maxDistance = 400
    for _, enemy in ipairs(enemies) do
        if not enemy:GetAttribute("IsBoat") and enemy:FindFirstChildOfClass("Humanoid") and enemy.Humanoid.Health > 0 then
            local head = enemy:FindFirstChild("Head")
            if head and (playerPosition - head.Position).Magnitude <= maxDistance and enemy ~= player.Character then
            
                return enemy, head
            end
        end
    end
    return nil
end
function MoveToClosestEnemy(offsetX, offsetY, offsetZ)
    local enemies = workspace.Enemies:GetChildren()
    local enemy, enemyHead = GetClosestEnemiesInRange(enemies)
    if enemyHead then
        local newPosition = enemyHead.Position + Vector3.new(offsetX, offsetY, offsetZ)
        Tween(newPosition)
    end
end
spawn(function()
	while true do
	   task.wait()
	if _G.AutoFarmNearest then
	   pcall(function()
		   MoveToClosestEnemy(0, getgenv().EnemiePosY, 0)
	   end)
   end
   end
end)



--—————— Quest ——————

--—————— Fruits/Raid ——————

spawn(function()
    while true do
        task.wait()
        if _G.AutoStoreSsFruit then
            pcall(function()
                local player = game.Players.LocalPlayer
                local backpack = player.Backpack
                local character = player.Character
                local remote = game:GetService("ReplicatedStorage").Remotes.CommF_
                local function storeFruit(container)
                    local found = false
                    for _, v in pairs(container:GetChildren()) do
                        if v:IsA("Tool") and string.find(v.Name, "Fruit") then
                            found = true
                            _G.PodeMudar = false
                            local fruitName = v:GetAttribute("OriginalName")
                            if fruitName then
                                local success, err = pcall(function()
                                    remote:InvokeServer("StoreFruit", fruitName, v)
                                end)
                                if success then
                                    Load.Text = "Keep Fruit Success"
                                else
                                    warn("Erro ao armazenar fruta:", err)
                                end
                            end
                        end
                    end
                    if not found then
                    
                    end
                end
                storeFruit(backpack)
                storeFruit(character)
            end)
        end
    end
end)





















spawn(function()
    while wait() do
        if _G.BringFruitBF then
            pcall(function()
                for v803, v804 in pairs(game.Workspace:GetChildren()) do
                if string.find(v804.Name, "Fruit") then
                    
                        v.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                        wait()
                       v.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                        wait()
                        v.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                        wait()
                    end
                end	
            end)
        end
    end
end)





spawn(function()
    while wait() do
        if _G.Tweenfruit then
        if not _G.AutoRaid then
            for v803, v804 in pairs(game.Workspace:GetChildren()) do
                if string.find(v804.Name, "Fruit") then
                    Tween(v804.Handle.Position)
                   end
                end
            end
        end
    end
end)





spawn(function()
    while wait() do
        if _G.CollectFruitTP then
        if not _G.AutoRaid then
            for v803, v804 in pairs(game.Workspace:GetChildren()) do
                if string.find(v804.Name, "Fruit") then
                    Bypass(v804.Handle.CFrame)
                end
              end
            end
        end
    end
end)







spawn(function()
    pcall(function()
        while true do
        task.wait()
            if _G.Random_Auto then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin", "Buy")
            end
        end
    end)
end)








function AutoNextIsland()
      for i = 5, 1, -1 do
         local island = workspace.Map.RaidMap:FindFirstChild("RaidIsland" .. i)
         if island then
            Tween(workspace._WorldOrigin.Locations["Island " .. i].Position)
            break
         end
      end
   end


--—————— Teleport ——————





if Sea1 then
    IslandList = {
        "Pirate Starter",
        
        "Marine Starter",
        
        "Middle Town",
        
        "Jungle",
        
        "Pirate Village",
        
        "Desert",
        
        "Frozen Village",
        
        "Marine Fortress",
        
        "Colosseum",
        
        "Sky Island 1",
        
        "Sky Island 2",
        
        "Sky Island 3",
        
        "Prison",
        
        "Magma Village",
        
        "Underwater City",
        
        "Fountain City",
        
    }
elseif Sea2 then
    IslandList = {
        "The Cafe",
        
        "Kingdom of Rose",
        
        "Dark Arena",
        
        "Mansion",
        
        "Swan's Room",
        
        "Green Zone",
        
        "Colossuim",
        
        "Graveyard Island",
        
        "Snow Mountain",
        
        "Hot and Cold",
        
        "Cursed Ship",
        
        "Ice Castle",
        
        "Forgotten Island",
        
        "Ussop Island"
        
    }
elseif Sea3 then
    IslandList = {
        "Mansion",
        
        "Port Town",
        
        "Great Tree",
        
        "Castle On The Sea",
        
        "Hydra Island",
        
        "Floating Turtle",
        
        "Haunted Castle",
        
        "Ice Cream Island",
        
        "Peanut Island",
        
        "Cake Island",
        
        "Cocoa Island",
        
        "Candy Island",
        
        "Tiki Outpost"
        
    }
end



--—————— Sea Event ——————

--—————— Islands ——————

--—————— Player ——————

--—————— Race ——————








spawn(function()
	while true do
		task.wait()
		if _G.AutoTrial then
			if game.Players.LocalPlayer.Data.Race.Value == "Cyborg" then
				if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-20009, 9953, -9)).Magnitude < 500 then
						Tween(Vector3.new(28503, 14896, -424))
						task.wait(0.0005)
						Tween(Vector3.new(28503, 14896, -424))
						task.wait(0.0005)
						Tween(Vector3.new(28503, 14896, -424))
						task.wait(0.0005)
						Tween(Vector3.new(28503, 14896, -424))
				end
				elseif game.Players.LocalPlayer.Data.Race.Value == "Fishman" then
				for v1582, v1583 in pairs(game:GetService("Workspace").SeaBeasts.SeaBeast1:GetDescendants()) do
    if (v1583.Name == "HumanoidRootPart") then
        Tween(v1583.Position + Vector3.new(0, getgenv(). EnemiePosY, 0))

        for v1746, v1747 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            if v1747:IsA("Tool") then
                if (v1747.ToolTip == "Melee") then
                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(v1747)
                end
            end
        end

        game:GetService("VirtualInputManager"):SendKeyEvent(true, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
        game:GetService("VirtualInputManager"):SendKeyEvent(false, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
        wait(0.2)
        game:GetService("VirtualInputManager"):SendKeyEvent(true, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
        game:GetService("VirtualInputManager"):SendKeyEvent(false, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
        wait(0.2)
        game:GetService("VirtualInputManager"):SendKeyEvent(true, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
        game:GetService("VirtualInputManager"):SendKeyEvent(false, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart)

        for v1748, v1749 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            if v1749:IsA("Tool") then
                if (v1749.ToolTip == "Blox Fruit") then
                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(v1749)
                end
            end
        end

        game:GetService("VirtualInputManager"):SendKeyEvent(true, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
        game:GetService("VirtualInputManager"):SendKeyEvent(false, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
        wait(0.2)
        game:GetService("VirtualInputManager"):SendKeyEvent(true, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
        game:GetService("VirtualInputManager"):SendKeyEvent(false, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
        wait(0.2)
        game:GetService("VirtualInputManager"):SendKeyEvent(true, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
        game:GetService("VirtualInputManager"):SendKeyEvent(false, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
        wait()

        for v1750, v1751 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            if v1751:IsA("Tool") then
                if (v1751.ToolTip == "Sword") then
                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(v1751)
                end
            end
        end

        game:GetService("VirtualInputManager"):SendKeyEvent(true, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
        game:GetService("VirtualInputManager"):SendKeyEvent(false, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
        wait(0.2)
        game:GetService("VirtualInputManager"):SendKeyEvent(true, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
        game:GetService("VirtualInputManager"):SendKeyEvent(false, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
        wait(0.2)
        game:GetService("VirtualInputManager"):SendKeyEvent(true, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
        game:GetService("VirtualInputManager"):SendKeyEvent(false, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
        wait()

        for v1752, v1753 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            if v1753:IsA("Tool") then
                if (v1753.ToolTip == "Gun") then
                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(v1753)
                end
            end
        end

        game:GetService("VirtualInputManager"):SendKeyEvent(true, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
        game:GetService("VirtualInputManager"):SendKeyEvent(false, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
        wait(0.2)
        game:GetService("VirtualInputManager"):SendKeyEvent(true, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
        game:GetService("VirtualInputManager"):SendKeyEvent(false, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
        wait(0.2)
        game:GetService("VirtualInputManager"):SendKeyEvent(true, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
        game:GetService("VirtualInputManager"):SendKeyEvent(false, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
    end
end
elseif (game:GetService("Players").LocalPlayer.Data.Race.Value == "Mink") then
    for v1790, v1791 in pairs(game:GetService("Workspace"):GetDescendants()) do
        if v1791.Name == "StartPoint" then
            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v1791.Position).Magnitude < 500 then
                Tween(v1791.Position)
            end
        end
    end
    elseif (game:GetService("Players").LocalPlayer.Data.Race.Value == "Human") then
    _G.AutoFarmNearest = true
    wait(60)
    _G.AutoFarmNearest = false
    elseif (game:GetService("Players").LocalPlayer.Data.Race.Value == "Ghoul") then
    _G.AutoFarmNearest = true
    wait(60)
    _G.AutoFarmNearest = false
			end
		end
	end
end)







function CheckAcientOneStatus()
            if not game.Players.LocalPlayer.Character:FindFirstChild("RaceTransformed") then
                return "You Have Yet To Achieve Greatness"
            end
            local v227 = nil
            local v228 = nil
            local v229 = nil
            v229, v228, v227 = FireRemote("UpgradeRace", "Check")
            if v229 == 1 then
                return "Required Train More"
            elseif v229 == 2 or v229 == 4 or v229 == 7 then
                return "Can Buy Gear With " .. v227 .. "\198\146"
            elseif v229 == 3 then
                return "Required Train More"
            elseif v229 == 5 then
                return "You Are Done Your Race."
            elseif v229 == 6 then
                return "Upgrades Completed: " .. v228 - 2 .. "/3, Need Trains More"
            end
            if v229 ~= 8 then
                if v229 == 0 then
                    return "Ready For Trial"
                else
                    return "You Have Yet To Achieve Greatness"
                end
            end
            return "Remaining " .. 10 - v228 .. " Training Sessions."
        end







function CheckRace()
RaceV = game:GetService("Players").LocalPlayer.Data.Race.Value 
            local v113 = FireRemote("Wenlocktoad", "1")
            local v111 = FireRemote("Alchemist", "1")
            if game.Players.LocalPlayer.Character:FindFirstChild("RaceTransformed") then
                return RaceV.. " V4"
            end
            if v113 == -2 then
                return RaceV.. " V3"
            end
            if v111 == -2 then
                return RaceV.. " V2"
            end
            return RaceV.. " V1"
        end 
        
        
        
        
        
texturasLua = {
    "http://www.roblox.com/asset/?id=9709135895", -- moon1
    "http://www.roblox.com/asset/?id=9709139597", -- moon2
    "http://www.roblox.com/asset/?id=9709143733", -- moon3
    "http://www.roblox.com/asset/?id=9709149052", -- moon4
    "http://www.roblox.com/asset/?id=9709149431", -- moon5 (Full Moon)
    "http://www.roblox.com/asset/?id=9709149680", -- moon6
    "http://www.roblox.com/asset/?id=9709150086", -- moon7
    "http://www.roblox.com/asset/?id=9709150401"  -- moon8
}

tempoPorFase = 1200 -- 20 minutos por fase (em segundos)

function MoonTextureId()
    if Sea1 then
        return game:GetService("Lighting").FantasySky.MoonTextureId
    elseif Sea2 then
        return game:GetService("Lighting").FantasySky.MoonTextureId
    elseif Sea3 then
        return game:GetService("Lighting").Sky.MoonTextureId
    end
end

function FullMoonClock()
    texturaAtual = MoonTextureId()
    indiceAtual = 0

    for i, textura in ipairs(texturasLua) do
        if textura == texturaAtual then
            indiceAtual = i
            break
        end
    end

    if indiceAtual == 5 then
        print("Full Moon Time - Hours: 00 Minutes: 00 Seconds: 00")
        return
    end

    fasesRestantes = (5 - indiceAtual) % 8
    if fasesRestantes == 0 then fasesRestantes = 8 end

    tempoDoDia = game.Lighting.ClockTime
    porcentagemDoCiclo = tempoDoDia / 24
    tempoPassado = porcentagemDoCiclo * tempoPorFase
    tempoRestanteNaFaseAtual = tempoPorFase - tempoPassado

    tempoTotal = tempoRestanteNaFaseAtual + ((fasesRestantes - 1) * tempoPorFase)

    horas = math.floor(tempoTotal / 3600)
    minutos = math.floor((tempoTotal % 3600) / 60)
    segundos = math.floor(tempoTotal % 60)

    return string.format("Full Moon Time - Hours: %02d Minutes: %02d Seconds: %02d", horas, minutos, segundos)
end






--—————— Stats ——————

--—————— Visual ——————

--—————— Shop ——————



--—————— Debug ——————














--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------





local redzlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/SomeoneKing7x/Librarys/refs/heads/main/RedzLibV2"))()

local Window = redzlib:MakeWindow({
  Title = "Someone Hub | Blox Fruits",
  SubTitle = "by Someone",
  SaveFolder = "Someone.JSON"
})
Window:AddMinimizeButton({
  Button = { Image = "rbxassetid://116039418392598", BackgroundTransparency = 0 },
  Corner = { CornerRadius = UDim.new(0, 6) }
})


    Discord = Window:MakeTab({Title = "Discord", Icon = "message-circle"})
  Farm = Window:MakeTab({Title = "Farm", Icon = "truck"})
    Quest = Window:MakeTab({Title = "Quest", Icon = "target"})
      Fruits = Window:MakeTab({Title = "Fruits/Raid", Icon = "apple"})
        Teleport = Window:MakeTab({Title = "Teleport", Icon = "compass"})
          SeaEvent = Window:MakeTab({Title = "Sea Event", Icon = "anchor"})
            Islands = Window:MakeTab({Title = "Islands", Icon = "waves"})
              Player = Window:MakeTab({Title = "Player", Icon = "user"})
                Race = Window:MakeTab({Title = "Race", Icon = "cog"})
                Stats = Window:MakeTab({Title = "Stats", Icon = "signal"})
                  Visual = Window:MakeTab({Title = "Visual", Icon = "eye"})
                    Shop = Window:MakeTab({Title = "Shop", Icon = "shopping-cart"})
                      Settings = Window:MakeTab({Title = "Settings", Icon = "settings"})
                        Debug = Window:MakeTab({Title = "Debug", Icon = "menu"})
                     
                          Discord:AddDiscordInvite({
Name = "Someone Hub | Community",
Description = "Join My Community for Updates",
Logo = "rbxassetid://116039418392598",
Invite = "discord Invite"
})


   --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
                      
     --—————— Settings ——————                 
     Settings:AddSection("Main Settings")
     
     
     
     
     
     
     local DropdownSelectWeapon = Settings:AddDropdown({
        Title = "Weapon",
            Description = "",
                Options = {'Melee','Sword','Blox Fruit'},
                    Multi = false,
                        Default = S.SelectWeapon,
                            Callback = function(Value)
                                ChooseWeapon = Value
                                    S.SelectWeapon = Value
                                        SS()
                                    end
                        })
    
    
    
    
    
    
    
     spawn(function()
        while true do
        task.wait()
            pcall(function()
                if ChooseWeapon == "Melee" then
                    for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                        if v.ToolTip == "Melee" then
                            if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                                SelectWeapon = v.Name
                            end
                        end
                    end
                    
                    
                    
                    
                    
                elseif ChooseWeapon == "Sword" then
                    for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                        if v.ToolTip == "Sword" then
                            if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                                SelectWeapon = v.Name
                            end
                        end
                    end
                    
                    
                    
                    
                    
                    
                elseif ChooseWeapon == "Blox Fruit" then
                    for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                        if v.ToolTip == "Blox Fruit" then
                            if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                                SelectWeapon = v.Name
                            end
                        end
                    end
                else
                
                
                
                
                
                
                
                    for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                        if v.ToolTip == "Melee" then
                            if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                                SelectWeapon = v.Name
                            end
                        end
                    end
                end
            end)
        end
    end)
    
    
    
    
    
    
    
    
    

  local TweenSpeed = Settings:AddSlider({
    Title = "Tween Speed",
       Description = "",
         Default = S.TweenSpeed,
          Min = 100,
            Max = 350,
            Increase = 5,
          Callback = function(Value)
        getgenv().TweenSpeed = Value
      S.TweenSpeed = Value
    SS()
  end
 })
     
     
     
     
     
Settings:AddSlider({
      Title = "Y Pos",
          Description = "",
              Min = 0,
                  Max = 45,
                      Increase = 1,
                          Default = S.PosY,
                              Callback = function(Value)
                                  getgenv().EnemiePosY = Value
                                  S.PosY = Value
                                  SS()
                              end
                          })
     
     
                      
                      
                      
   local ToggleAutoAttack = Settings:AddToggle({
      Title = "Auto Attack",
          Description = "",
              Default = S.AutoAttack,
                  Callback = function(Value)
                      _G.AutoAttack = Value
                          S.AutoAttack = Value
                              SS()
                          end
                      })
                 
                 
                 
                 
                 
local ToggleAutoHaki = Settings:AddToggle({
      Title = "Auto Haki",
          Description = "",
              Default = S.AutoHaki,
                  Callback = function(Value)
                      _G.AutoHaki = Value
                          S.AutoHaki = Value
                              SS()
                          end
                      })
 


                      
             
Settings:AddSection("More Settings")

Settings:AddToggle({
	Title = "Auto Turn Ken Haki",
	   Description = "",
	Default = S.AutoTurnKen,
	Callback = function(Value)
	_G.AutoTurnKen = Value
	S.AutoTurnKen = Value
	SS()
end})






Settings:AddToggle({
	Title = "Auto Turn V3 Race",
	   Description = "",
	Default = S.AutoTurnV3,
	Callback = function(Value)
	_G.AutoTurnV3 = Value
	S.AutoTurnV3 = Value
	SS()
end})






Settings:AddToggle({
	Title = "Auto Turn V4 Race",
	   Description = "",
	Default = S.AutoTurnV4,
	Callback = function(Value)
	_G.AutoTurnV4 = Value
	S.AutoTurnV4 = Value
	SS()
end})






Settings:AddToggle({
    Title = "Auto Set Spawn Point",
    Description = "",
    Default = S.AutoSavePoint,
    Callback = function(x)
    _G.SaveSpawn = x
    S.AutoSavePoint = x
    SS()
    end
    })







Settings:AddSection("Teams")
Settings:AddButton({
Title = "Join Pirates Team",
Callback = function()
  FireRemote("SetTeam", "Pirates")
end})





Settings:AddButton({
Title = "Join Marines Team", 
Callback = function()
  FireRemote("SetTeam", "Marines")
end})






Settings:AddSection("Codes")
Settings:AddButton({
  Title = "Redeem all Codes",
  Callback = function()
    Codes = {
    "KITT_RESET",
    "BIGNEWS",
    "Chandler",
    "fudd10_V2",
    "Enyu_is_Pro",
    "Sub2Fer999",
    "SUB2GAMERROBOT_RESET1",
    "Sub2UncleKizaru",
    "Sub2CaptainMaui",
    "KittGaming",
    "MagicBUS",
    "StarcodeHEO",
    "JCWK",
    "Axiore",
    "Sub2Daigrock",
    "Sub2NoobMaster123",
    "TheGreatAce",
    "Sub2OfficialNoobie",
    "SUB2GAMERROBOT_EXP1",
    "Bluxxy",
    "TantaiGaming",
    "StrawHatMaine",
    "NOEXPLOITER",
    "FIGHT4FRUIT",
    "EARN_FRUITS",
    "GIFTING_HOURS",
    "ADMINFIGHT",
    "fruitconcepts",
    "ADMINDARES",
    "CODESLIDE",
    "NOOB2ADMIN",
    "ADMINHACKED",
    "REWARDFUN",
    "24NOADMIN",
    "SEATROLLING",
    "TRIPLEABUSE",
    "krazydares"
}
    for _, code in pairs(Codes) do
      task.spawn(function()
        game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(code)
      end)
    end
  end
})






--[[
Settings:AddSection("Menu")
Settings:AddButton({
	Title = "",
	Description = "",
	Callback = function()
	local player = game.Players.LocalPlayer
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "MinhaInterface"
screenGui.ResetOnSpawn = false
screenGui.Parent = player:WaitForChild("PlayerGui")

local quadro = Instance.new("Frame")
quadro.Name = "QuadroPrincipal"
quadro.Size = UDim2.new(0, 200, 0, 300)
quadro.Position = UDim2.new(0.5, -100, 0.5, -150)
quadro.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
quadro.BorderSizePixel = 0
quadro.Parent = screenGui

local bordaDourada = Instance.new("UIStroke")
bordaDourada.Thickness = 10
bordaDourada.Color = Color3.fromRGB(255, 215, 0)
bordaDourada.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
bordaDourada.Parent = quadro

local bordaPreta = Instance.new("UIStroke")
bordaPreta.Thickness = 0
bordaPreta.Color = Color3.fromRGB(0, 0, 0)
bordaPreta.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
bordaPreta.Parent = quadro

local botaoFechar = Instance.new("TextButton")
botaoFechar.Name = "BotaoFechar"
botaoFechar.Size = UDim2.new(0, 25, 0, 25)
botaoFechar.Position = UDim2.new(1, -30, 0, 5)
botaoFechar.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
botaoFechar.TextColor3 = Color3.fromRGB(255, 255, 255)
botaoFechar.Text = "X"
botaoFechar.Font = Enum.Font.SourceSansBold
botaoFechar.TextSize = 22
botaoFechar.Parent = quadro

local bordaBotaoX = Instance.new("UIStroke")
bordaBotaoX.Thickness = 2
bordaBotaoX.Color = Color3.fromRGB(0, 0, 0)
bordaBotaoX.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
bordaBotaoX.Parent = botaoFechar

botaoFechar.MouseButton1Click:Connect(function()
    quadro:Destroy()
end)

local titulo = Instance.new("TextLabel")
titulo.Size = UDim2.new(1, 0, 0, 30)
titulo.Position = UDim2.new(0, 0, 0, 0)
titulo.BackgroundTransparency = 1
titulo.Text = "Fruit Stock"
titulo.TextColor3 = Color3.fromRGB(255, 255, 255)
titulo.Font = Enum.Font.SourceSansBold
titulo.TextSize = 22
titulo.TextXAlignment = Enum.TextXAlignment.Center
titulo.Parent = quadro

local tituloNormal = Instance.new("TextLabel")
tituloNormal.Size = UDim2.new(1, -10, 0, 18)
tituloNormal.Position = UDim2.new(0, 5, 0, 35)
tituloNormal.BackgroundTransparency = 1
tituloNormal.Text = "Normal Stock"
tituloNormal.TextColor3 = Color3.fromRGB(255, 255, 255)
tituloNormal.Font = Enum.Font.SourceSansBold
tituloNormal.TextSize = 16
tituloNormal.TextXAlignment = Enum.TextXAlignment.Left
tituloNormal.Parent = quadro

local prgNormalStock = Instance.new("TextLabel")
prgNormalStock.Size = UDim2.new(1, -10, 0, 90)
prgNormalStock.Position = UDim2.new(0, 5, 0, 55)
prgNormalStock.BackgroundTransparency = 1
prgNormalStock.TextColor3 = Color3.fromRGB(255, 255, 255)
prgNormalStock.Font = Enum.Font.SourceSans
prgNormalStock.TextSize = 15
prgNormalStock.TextXAlignment = Enum.TextXAlignment.Left
prgNormalStock.TextYAlignment = Enum.TextYAlignment.Top
prgNormalStock.TextWrapped = true
prgNormalStock.Text = ""
prgNormalStock.Parent = quadro

local tituloMirage = Instance.new("TextLabel")
tituloMirage.Size = UDim2.new(1, -10, 0, 18)
tituloMirage.Position = UDim2.new(0, 5, 0, 150)
tituloMirage.BackgroundTransparency = 1
tituloMirage.Text = "Mirage Stock"
tituloMirage.TextColor3 = Color3.fromRGB(255, 255, 255)
tituloMirage.Font = Enum.Font.SourceSansBold
tituloMirage.TextSize = 16
tituloMirage.TextXAlignment = Enum.TextXAlignment.Left
tituloMirage.Parent = quadro

local prgMirageStock = Instance.new("TextLabel")
prgMirageStock.Size = UDim2.new(1, -10, 0, 120)
prgMirageStock.Position = UDim2.new(0, 5, 0, 170)
prgMirageStock.BackgroundTransparency = 1
prgMirageStock.TextColor3 = Color3.fromRGB(255, 255, 255)
prgMirageStock.Font = Enum.Font.SourceSans
prgMirageStock.TextSize = 15
prgMirageStock.TextXAlignment = Enum.TextXAlignment.Left
prgMirageStock.TextYAlignment = Enum.TextYAlignment.Top
prgMirageStock.TextWrapped = true
prgMirageStock.Text = ""
prgMirageStock.Parent = quadro

local contadorLabel = Instance.new("TextLabel")
contadorLabel.Size = UDim2.new(0, 180, 0, 20)
contadorLabel.Position = UDim2.new(1, -185, 1, -25)
contadorLabel.BackgroundTransparency = 1
contadorLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
contadorLabel.Font = Enum.Font.SourceSansBold
contadorLabel.TextSize = 14
contadorLabel.TextXAlignment = Enum.TextXAlignment.Right
contadorLabel.Text = "Wait..."
contadorLabel.Parent = quadro

spawn(function()
   while true do
      task.wait()

      local fruits = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits", false)
      local normalStock = ""

      for _, fruit in pairs(fruits) do
         if fruit.OnSale and not fruit.Offsale then
            normalStock = normalStock .. fruit.Name .. "\n"
         end
      end

      prgNormalStock.Text = normalStock

      fruits = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits", true)
      local mirageStock = ""

      for _, fruit in pairs(fruits) do
         if fruit.OnSale and not fruit.Offsale then
            mirageStock = mirageStock .. fruit.Name .. "\n"
         end
      end

      prgMirageStock.Text = mirageStock
   end
end)

spawn(function()
   while true do
      task.wait(1)

      local agora = os.time()
      local data = os.date("*t", agora)
      local segundosAtuais = data.hour * 3600 + data.min * 60 + data.sec

      -- Começa às 5h e repete a cada 4 horas
      local baseCheckpoint = 5 * 3600
      local intervalo = 4 * 3600

      local tempoDesdeBase = (segundosAtuais - baseCheckpoint) % (24 * 3600)
      if tempoDesdeBase < 0 then
         tempoDesdeBase = tempoDesdeBase + 24 * 3600
      end

      local tempoAteProximo = intervalo - (tempoDesdeBase % intervalo)
      local horas = math.floor(tempoAteProximo / 3600)
      local minutos = math.floor((tempoAteProximo % 3600) / 60)
      local segundos = tempoAteProximo % 60

      contadorLabel.Text = string.format("Next Stock in : %02dh %02dm %02ds", horas, minutos, segundos)
   end
end)
end})
]]--


Settings:AddButton({
Title = "Open Title UI",
Callback = function()
  FireRemote("getTitles")
	game.Players.LocalPlayer.PlayerGui.Main.Titles.Visible = true
	
end})





Settings:AddButton({
Title = "Awakened UI",
Callback = function()
	game:GetService("Players").LocalPlayer.PlayerGui.Main.AwakeningToggler.Visible = true
end})





Settings:AddSection("More FPS")
Settings:AddToggle({
    Title = "Remove Notifications",
    Description = "",
    Default = S.RemoveNotify,
    Callback = function(v278)
    _G.RemoveNotify = v278
    S.RemoveNotify = v278
    SS()
end})







Settings:AddToggle({
    Title = "Remove Damage Counter",
    Description = "",
    Default = S.RemoveDamage,
    Callback = function(v278)
    _G.RemoveDamage = v278
    S.RemoveDamage = v278
    SS()
end})





Settings:AddToggle({
    Title = "Remove Particle",
    Description = "",
    Default = S.RemoveParticle,
    Callback = function(v278)
    _G.RemoveParticle = v278
    S.RemoveParticle = v278
    SS()
end})






--   —————— Discord ——————

--—————— Farm ——————



Farm:AddSection("Farm")
local ToggleFarmLevel = Farm:AddToggle({
    Title = "Farm Level",
    Description = "",
    Default = S.AutoFarmLevel,
    Callback = function(v237)
        _G.AutoFarmLevel = v237
        S.AutoFarmLevel = v237
        SS()
    end
})





local ToggleFarmNear = Farm:AddToggle({
Title = "Farm Nearest",
Description = "",
Default = S.FarmNear,
Callback = function(Value)
_G.AutoFarmNearest = Value
S.FarmNear= Value 
SS()
end})











Farm:AddSection("Bone Farm")

Farm:AddToggle({
	"Farm Bones",
	Callback = function(Value)
	_G.AutoFarmBones = Value
	end})


function GetEnemieBones(MonsterName)
for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
if v.Name == MonsterName and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") then
while v.Humanoid.Health > 0 do
if not _G.AutoFarmBones then
break
end
Tween(v.HumanoidRootPart.Position + Vector3.new(0, getgenv().EnemiePosY, 0))
task.wait()
end
end
end
end
spawn(function()
   while true do
      task.wait()
      if _G.AutoFarmBones then
      if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-9553, 165, 6267)).Magnitude > 1000 then
      repeat
      wait()
      Tween(Vector3.new( -9553, 165, 6267))
      until (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-9553, 165, 6267)).Magnitude < 100
      end
      GetEnemieBones("Posessed Mummy")
      GetEnemieBones("Demonic Soul")
      GetEnemieBones("Living Zombie")
      GetEnemieBones("Reborn Skeleton")
      end
    end
  end)
Farm:AddToggle({
Title = "Auto Random Bones",
Callback = function(value)
	_G.Auto_Random_Bone = value
end})
spawn(function()
	pcall(function()
		while true do
		task.wait()
			if _G.Auto_Random_Bone then
				FireRemote("Bones", "Buy", 1, 1)
			end
		end
	end)
end)
Farm:AddToggle({
Title = "Auto Hallow Essence",
Callback = function(value)
	_G.Auto_Hallow_Essence = value
end})
spawn(function()
	pcall(function()
		while true do
		task.wait()
			if _G.Auto_Hallow_Essence then
		  	if not Backpack("Hallow Essence") then
		  		FireRemote("Bones", "Buy", 1, 1)
				end
			end
		end
	end)
end)
Farm:AddToggle({
Title = "Auto Pray",
Default = false,
Callback = function(value)
	_G.Pray = value
end})
spawn(function()
	pcall(function()
		while true do
		task.wait()
			if _G.Pray then
				
				Tween(Vector3.new( -8653, 142, 6169))
			    FireRemote("gravestoneEvent", 2)
			  
			end
		end
	end)
end)
Farm:AddToggle({
Title = "Auto Try Luck",
Default = false,
Callback = function(value)
	_G.Trylux = value
end})
spawn(function()
	pcall(function()
		while true do
		task.wait()
			if _G.Trylux then
			
				Tween(Vector3.new( -8653, 142, 6169))
			    FireRemote("gravestoneEvent", 2)
			  
			end
		end;
	end);
end);






--—————— Quest ——————

--—————— Fruits/Raid ——————






Fruits:AddSection("Fruits")
Fruits:AddToggle({
    Title = "Random Fruit",
    Description = "",
    Default = S.RandomFruit,
    Callback = function(v342)
    _G.Random_Auto = v342
    S.RandomFruit = v342
end})






Fruits:AddToggle({
    Title = "Collect Fruit [ Bypass ]",
    Description = "",
    Default = S.BypassToFruit,
    Callback = function(v343)
    _G.CollectFruitTP = v343
    S.BypassToFruit = v343
    SS()
end})








Fruits:AddToggle({
    Title = "Collect Fruit [ Tween ]",
    Description = "",
    Default = S.TweenToFruit,
    Callback = function(v344)
    _G.Tweenfruit = v344
    S.TweenToFruit = v344
    SS()
end})







Fruits:AddToggle({
Title = "Bring Fruit",
Default = S.BringFruits,
Callback = function(Value)
    _G.BringFruitBF = Value
    S.BringFruits = Value
    SS()
end})






local toggle = Fruits:AddToggle({
    "Auto Store Fruits",
    Default = S.AutoStoreFruit,
    Callback = function(value)
        _G.AutoStoreSsFruit = value
        S.AutoStoreFruit = value
        SS()
    end
})





if Sea2 or Sea3 then
Fruits:AddSection("Raid")
_G.SelectChip = selectraids or "";
Raidslist = {};
RaidsModule = require(game.ReplicatedStorage.Raids);
for i, v in pairs(RaidsModule.raids) do
	table.insert(Raidslist, v);
end;
for i, v in pairs(RaidsModule.advancedRaids) do
	table.insert(Raidslist, v);
end;
Fruits:AddDropdown({
"Select Chips",
 Options = Raidslist,
 function(value)
	_G.SelectChip = value
end})
Fruits:AddToggle({
    "Buy Chip",
    Description = "",
    Default = false,
    function(v354)
    _G.Auto_Buy_Chips_Dungeon = v354
end})

spawn(function()
    while true do
    task.wait()
        if _G.Auto_Buy_Chips_Dungeon then
            pcall(function()
                FireRemote("RaidsNpc","Select",_G.SelectChip)
            end)
        end
    end
end)
Fruits:AddToggle({
    "Start Raid",
    Description = "",
    Default = false,
    function(v355)
    _G.Auto_StartRaid = v355;
end})

spawn(function()
    while wait() do
        pcall(function()
            if _G.Auto_StartRaid then
                if game:GetService("Players")['LocalPlayer'].PlayerGui.Main.Timer.Visible == false then
                    if GetIsland("Island 1") and Backpack("Special Microchip") then
                        if Sea2 then
                            Tween(Vector3.new(- 6438.73535, 250.645355, - 4501.50684))
                            FireRemote("SetSpawnPoint")
                            fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector);
                        elseif Sea3 then
                            
                            Tween(Vector3.new(- 5017.40869, 314.844055, - 2823.0127, - 0.925743818, 4.482175e-8, - 0.378151238, 4.5550315e-9, 1, 1.0737756e-7, 0.378151238, 9.768162e-8, - 0.925743818));
                            FireRemote("SetSpawnPoint")
                            fireclickdetector(game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector);
                        end
                    end
                end
            end
        end);
    end
end);
Fruits:AddToggle({
    "Auto Next Island",
    Description = "",
    Default = false,
    Callback = function(v356)
    AutoNextIsland = v356
    if not v356 then
        _G.AutoFarmNearest = false
    end
end})
spawn(function()
    local v357 = {};
    while task.wait() do
        if AutoNextIsland then
            pcall(function()
                local v806 = game.Players.LocalPlayer.Character;
                if (v806 and v806:FindFirstChild("HumanoidRootPart")) then
                    local v900 = game:GetService("Workspace")['_WorldOrigin'].Locations;
                    local v901 = v806.HumanoidRootPart.Position;
                    if (((v901 - Vector3.new(- 6438.73535, 250.645355, - 4501.50684)).Magnitude < 1) or ((v901 - Vector3.new(- 5017.40869, 314.844055, - 2823.0127)).Magnitude < 1)) then
                        v357 = {};
                    end
                    if v900:FindFirstChild("Island 1") then
                        _G.AutoFarmNearest = true;
                    end
                    if (v900:FindFirstChild("Island 2") and not v357["Island 2"]) then
                        Tween(v900:FindFirstChild("Island 2").Position);
                        v357["Island 2"] = true;
                        AutoNextIsland = false;
                        wait();
                        AutoNextIsland = true;
                    elseif (v900:FindFirstChild("Island 3") and not v357["Island 3"]) then
                        Tween(v900:FindFirstChild("Island 3").Position);
                        v357["Island 3"] = true;
                        AutoNextIsland = false;
                        wait();
                        AutoNextIsland = true;
                    elseif (v900:FindFirstChild("Island 4") and not v357["Island 4"]) then
                        Tween(v900:FindFirstChild("Island 4").Position);
                        v357["Island 4"] = true;
                        AutoNextIsland = false;
                        wait();
                        AutoNextIsland = true;
                    elseif (v900:FindFirstChild("Island 5") and not v357["Island 5"]) then
                        Tween(v900:FindFirstChild("Island 5").Position);
                        v357["Island 5"] = true;
                        AutoNextIsland = false;
                        wait();
                        AutoNextIsland = true;
                    end
                end
            end);
        end
    end
end);
Fruits:AddToggle({
    "Buy Awakening ",
    Description = "",
    Default = false,
     function(v358)
    AutoAwakenAbilities = v358;
end})
spawn(function()
    while task.wait() do
        if AutoAwakenAbilities then
            pcall(function()
                FireRemote("Awakener", "Awaken");
            end);
        end
    end
end);
Fruits:AddToggle({
    "Load Fruits",
    Description = "",
    Default = false,
    function(v359)
        _G.Autofruit = v359;
    end
})

spawn(function()
    while wait() do
        pcall(function()
            if _G.Autofruit then
                end
            end
        end)
    end
end)
if Sea2 then
    Fruits:AddButton({
        Title = "Teleport to Lab",
        Description = "",
        Callback = function()
            Tween(Vector3.new(- 6438.73535, 250.645355, - 4501.50684))
        end
    });
elseif Sea3 then
    Fruits:AddButton({
        Title = "Teleport to Lab",
        Description = "",
        Callback = function()
            Tween(Vector3.new(- 5017.40869, 314.844055, - 2823.0127, - 0.925743818, 4.482175e-8, - 0.378151238, 4.5550315e-9, 1, 1.0737756e-7, 0.378151238, 9.768162e-8, - 0.925743818))
        end
    })
end





else
Fruits:AddSection("Raids Only On Second or Third Sea")
end
--[[
Fruits:AddSection("More")
local prgNormalStock = Fruits:AddParagraph({
	Title = "Fruit Stock Normal"
	})



local prgMirageStock = Fruits:AddParagraph({
	Title = "Fruit Stock Mirage"
	})
spawn(function()
   while true do
      task.wait()	

      local fruits = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits", false)
      local normalStock = ""

      for _, fruit in pairs(fruits) do
         if fruit.OnSale == true and fruit.Offsale == false then
            normalStock = normalStock .. fruit.Name .. "\n"
         end
      end

      prgNormalStock:SetDesc(normalStock)

      local fruits = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits", true)
      local mirageStock = ""

      for _, fruit in pairs(fruits) do
         if fruit.OnSale == true and fruit.Offsale == false then
            mirageStock = mirageStock .. fruit.Name .. "\n"
         end
      end

      prgMirageStock:SetDesc(mirageStock)
   end
end)]]--
--—————— Teleport ——————




Teleport:AddSection("Teleport to Sea")

Teleport:AddButton({
   Title = "Teleport to Sea 1",
      Callback = function()
         FireRemote("TravelMain")
      end
})

Teleport:AddButton({
   Title = "Teleport to Sea 2",
      Callback = function()
         FireRemote("TravelDressrosa")
      end
})

Teleport:AddButton({
   Title = "Teleport to Sea 3",
      Callback = function()
         FireRemote("TravelZou")
      end
})









Teleport:AddSection("Teleport to Islands")

Teleport:AddDropdown({
   Title = "Select Island",
      Options = IslandList,
         Callback = function(Value)
            getgenv().TeleportIslandSelect = Value
         end
})



Teleport:AddButton({
   Title = "Teleport To Island",
      Callback = function()
      local Island = getgenv().TeleportIslandSelect

   if Sea1 then      -- Sea 1 Teleports
      if Island == "Middle Town" then
         Tween(Vector3.new( -785, 33, 1606))

      elseif Island == "Marine Fortress" then
         Tween(Vector3.new(-4810, 21, 4359))

      elseif Island == "Marine Starter" then
         Tween(Vector3.new( -2571, 6, 2047))

      elseif Island == "Pirate Starter" then
         Tween(Vector3.new( 1080, 16, 1426))

      elseif Island == "Desert" then
         Tween(Vector3.new( 936, 6, 4477))

      elseif Island == "Frozen Village" then
         Tween(Vector3.new(1298, 87, -1344))

      elseif Island == "Pirate Village" then
         Tween(Vector3.new( -1159, 4, 3813))

      elseif Island == "Jungle" then
         Tween(Vector3.new( -1427, 61, -5))

      elseif Island == "Prison" then
         Tween(Vector3.new(4870, 6, 736))

      elseif Island == "Colosseum" then
         Tween(Vector3.new(-1535, 7, -3014))

      elseif Island == "Magma Village" then
         Tween(Vector3.new(-5290, 9, 8349))

      elseif Island == "Sky Island 1" then
         Tween(Vector3.new(-4814, 718, -2551))

      elseif Island == "Sky Island 2" then
         Tween(Vector3.new(-4652, 873, -1754))

      elseif Island == "Sky Island 3" then
         Tween(Vector3.new(-7895, 5547, -380))

      elseif (Island == "Underwater City") then
         Tween(Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))

      elseif (Island == "Fountain City") then
         Tween(Vector3.new(5127, 59, 4105))
      end
   elseif Sea2 then  -- Sea 2 Teleports
      if Island == "The Cafe" then
         Tween(Vector3.new(-382, 73, 290))

      elseif Island == "Kingdom of Rose" then
         Tween(Vector3.new(-11, 29, 2771))

      elseif Island == "Dark Arena" then
         Tween(Vector3.new(3494, 13, -3259))

      elseif Island == "Mansion" then
         Tween(Vector3.new( -288, 306, 601))

      elseif Island == "Swan's Room" then
         Tween(Vector3.new(2285, 15, 905))

      elseif Island == "Green Zone" then
         Tween(Vector3.new(-2258, 73, -2696))

      elseif Island == "Graveyard Island" then
         Tween(Vector3.new(-5552, 194, -776))

      elseif Island == "Snow Mountain" then
         Tween(Vector3.new(752, 408, -5277))

      elseif Island == "Hot and Cold" then
         Tween(Vector3.new(-5897, 18, -5096))

      elseif Island == "Cursed Ship" then
         Tween(Vector3.new(923, 126, 32852))

      elseif Island == "Ice Castle" then
         Tween(Vector3.new(5505, 40, -6178))

      elseif Island == "Forgotten Island" then
         Tween(Vector3.new(-3050, 240, -10178))

      elseif Island == "Ussop Island" then
         Tween(Vector3.new(4816, 8, 2863))
      end
   elseif Sea3 then
      if Island == "Mansion" then
         Tween(Vector3.new(-12471, 374, -7551))

      elseif Island == "Port Town" then
         Tween(Vector3.new( -344, 20, 5552))

      elseif Island == "Castle On The Sea" then
         Tween(Vector3.new( -5137, 314, -2955))

      elseif Island == "Hydra Island" then
         Tween(Vector3.new( 5661 , 1013 , -335))

      elseif Island == "Great Tree" then
         Tween(Vector3.new( 2154, 21, -6681))

      elseif Island == "Floating Turtle" then
         Tween(Vector3.new(-12528, 332, -8658))

      elseif Island == "Haunted Castle" then
         Tween(Vector3.new(-9517, 142, 5528))

      elseif Island == "Ice Cream Island" then
         Tween(Vector3.new( -681, 661, -11082))

      elseif Island == "Peanut Island" then
         Tween(Vector3.new( -2113, 192, -10222))

      elseif Island == "Cake Island" then
         Tween(Vector3.new(-1897, 14, -11576))

      elseif Island == "Candy Cane Island" then
         Tween(Vector3.new( -1051, 24, -14132))

      elseif Island == "Tiki Outpost" then
         Tween(Vector3.new(-16224, 9, 439))
         
        end
    end
end})




--—————— Sea Event ——————

--—————— Islands ——————

--—————— Player ——————

--—————— Race ——————



Race:AddSection("Status")
local prgAncientOne = Race:AddParagraph({
	Title = ""
	})
	spawn(function()
    while true do
        wait(1)
        prgAncientOne:SetTitle("Ancient One Status : "..tostring(CheckAcientOneStatus()))
    end
end)
local prgRaceStatus = Race:AddParagraph({
	Title = ""
	})
	spawn(function()
    while true do
        wait(1)
        prgRaceStatus:SetTitle("Your Race : "..tostring(CheckRace()))
    end
end)
local prgMoon = Race:AddParagraph({
	Title = ""
	})
	
	spawn(function()
    while true do
        task.wait()
        local moon = game:GetService("Lighting").Sky.MoonTextureId

        if moon == "http://www.roblox.com/asset/?id=9709150401" then -- 🌘
            prgMoon:SetTitle("Current Moon : 🌘")
            prgMoon:SetDesc("🌗 🌖 🌕 🌔 ?? 🌒 🌑")
        elseif moon == "http://www.roblox.com/asset/?id=9709143733" then -- 🌗
            prgMoon:SetTitle("Current Moon : 🌗")
            prgMoon:SetDesc("🌖 🌕 🌔 🌓 🌒 🌑 🌘")
        elseif moon == "http://www.roblox.com/asset/?id=9709149052" then -- 🌖
            prgMoon:SetTitle("Current Moon : 🌖")
            prgMoon:SetDesc("🌕 🌔 🌓 🌒 🌑 🌘 🌗")
        elseif moon == "http://www.roblox.com/asset/?id=9709149431" then -- 🌕
            prgMoon:SetTitle("Current Moon : 🌕")
            prgMoon:SetDesc("🌔 🌓 🌒 🌑 🌘 🌗 🌖")
        elseif moon == "http://www.roblox.com/asset/?id=9709149680" then -- 🌔
            prgMoon:SetTitle("Current Moon : 🌔")
            prgMoon:SetDesc("🌓 🌒 🌑 🌘 🌗 🌖 🌕")
        elseif moon == "http://www.roblox.com/asset/?id=9709150086" then -- 🌓
            prgMoon:SetTitle("Current Moon : 🌓")
            prgMoon:SetDesc("🌒 🌑 🌘 🌗 🌖 🌕 🌔")
        elseif moon == "http://www.roblox.com/asset/?id=9709139597" then -- 🌒
            prgMoon:SetTitle("Current Moon : 🌒")
            prgMoon:SetDesc("🌑 🌘 🌗 🌖 🌕 🌔 🌓")
        elseif moon == "http://www.roblox.com/asset/?id=9709135895" then -- 🌑
            prgMoon:SetTitle("Current Moon : 🌑")
            prgMoon:SetDesc("🌘 🌗 🌖 🌕 🌔 🌓 🌒")
        end
    end
end)
--[[

texturasLua = {
    "http://www.roblox.com/asset/?id=9709135895", -- moon1
    "http://www.roblox.com/asset/?id=9709139597", -- moon2
    "http://www.roblox.com/asset/?id=9709143733", -- moon3
    "http://www.roblox.com/asset/?id=9709149052", -- moon4
    "http://www.roblox.com/asset/?id=9709149431", -- moon5 (Full Moon)
    "http://www.roblox.com/asset/?id=9709149680", -- moon6
    "http://www.roblox.com/asset/?id=9709150086", -- moon7
    "http://www.roblox.com/asset/?id=9709150401"  -- moon8
}
imagem = Instance.new("ImageLabel", game.Players.LocalPlayer.PlayerGui:WaitForChild("ScreenGui")) imagem.Size = UDim2.new(0, 75, 0, 75) imagem.Image = "http://www.roblox.com/asset/?id=970913589"

botaoFechar = Instance.new("TextButton", game.Players.LocalPlayer.PlayerGui.ScreenGui) botaoFechar.Text = "X" botaoFechar.Size = UDim2.new(0, 30, 0, 30) botaoFechar.Position = UDim2.new(1, -35, 0, 5) botaoFechar.MouseButton1Click:Connect(function() imagem:Destroy() end)]]--




Race:AddSection("Trial")
Race:AddButton({
	Title = "Tween To Door Race",
	Callback = function()
	race = game:GetService("Players").LocalPlayer.Data.Race.Value

if race == "Human" then
    Tween(Vector3.new(29221, 14890, -206))
elseif race == "Skypiea" then
    Tween(Vector3.new(28960, 14919, 235))
elseif race == "Fishman" then
    Tween(Vector3.new(28231, 14890, -212))
elseif race == "Cyborg" then
    Tween(Vector3.new(28502, 14895, -424))
elseif race == "Ghoul" then
    Tween(Vector3.new(28674, 14890, 445))
elseif race == "Mink" then
    Tween(Vector3.new(29012, 14890, -380))
elseif race == "Draco" then
    v748 = workspace.Map.PrehistoricIsland:FindFirstChild("TrialTeleport")
    if v748 and v748:IsA("Part") then
        Tween(Vector3.new(v748.Position.X, v748.Position.Y, v748.Position.Z))
    end
end
	end})
	
	
Race:AddToggle({
	Title = "Auto Complete Trial",
	Callback = function(Value)
		_G.AutoTrial = Value
	end
})
PlayerKillList = {}

for _, jogador in pairs(game:GetService("Players"):GetPlayers()) do
    if jogador ~= game:GetService("Players").LocalPlayer and
       jogador.Name ~= "lucasviniciussoa" and
       jogador.Name ~= "furliye" and
       jogador.Name ~= "m4e_do1ren4n" then
        table.insert(PlayerKillList, jogador)
    end
end

game:GetService("Players").PlayerAdded:Connect(function(jogador)
    if jogador ~= game:GetService("Players").LocalPlayer and
       jogador.Name ~= "lucasviniciussoa" and
       jogador.Name ~= "furliye" and
       jogador.Name ~= "m4e_do1ren4n" then
        table.insert(PlayerKillList, jogador)
    end
end)
Race:AddDropdown({
    "Select Player to Kill",
    Options = PlayerKillList,
    Multi = true,
    Default = "nil",
    Callback = function(Value)
        _G.PlayerHunter = Value
    end
})

Race:AddToggle({
    "Auto Kill Player",
    Callback = function(Value)
        _G.AutoKillPlayerTrial = Value
    end
})

spawn(function()
    while true do
        task.wait()
        if _G.AutoKillPlayerTrial then
            repeat
                personagem = game:GetService("Players").LocalPlayer.Character
                if _G.PlayerHunter and _G.PlayerHunter.Character and _G.PlayerHunter.Character:FindFirstChild("HumanoidRootPart") and _G.PlayerHunter.Character:FindFirstChild("Humanoid") and personagem and personagem:FindFirstChild("HumanoidRootPart") then
                    distancia = (_G.PlayerHunter.Character.HumanoidRootPart.Position - personagem.HumanoidRootPart.Position).Magnitude
                    if distancia <= 200 then
                        repeat
                            task.wait()
                            EquipTool(SelectWeapon)
                            Tween(_G.PlayerHunter.Character.HumanoidRootPart.Position)
                            KeyEvent("Z",0.1)
                            KeyEvent("X",0.1)
                        until _G.PlayerHunter.Character.Humanoid.Health <= 0 or not _G.AutoKillPlayerTrial
                    end
                end
                task.wait()
            until not _G.AutoKillPlayerTrial or (_G.PlayerHunter and _G.PlayerHunter.Character and _G.PlayerHunter.Character:FindFirstChild("Humanoid") and _G.PlayerHunter.Character.Humanoid.Health <= 0)
        end
    end
end)

Race:AddSection("Teleport")


Race:AddButton({
	Title = "Teleport to Temple of Time",
	Callback = function()
	Tween(Vector3.new(28286, 14897, 103))
	end})
	Race:AddButton({
    Title = "Teleport to Lever",
    Callback = function(Value)
        print("Botão pressionado!")  -- Verificar se a callback está sendo acionada
        Tween(Vector3.new(28576, 14935, 75))
        PressHold()
        checkProximity(45)
        
        wait(0.1)  -- Espera um pouco para garantir que a interação seja registrada
        
        print("Chamando PressHold()...")
          -- Chama a função PressHold para interagir com os ProximityPrompt
    end
})
	Race:AddButton({
	Title = "Teleport to Clock",
	Callback = function()
	Tween(Vector3.new(29553, 15066, -88))
	end})
	Race:AddButton({
	Title = "Teleport to Ancient One",
	Callback = function()
	Tween(Vector3.new( 28974, 14890, -119))
	end})
	
	
	
	
	Race:AddSection("Buy")
	gearsTitle = Race:AddParagraph({
  Title = "Gears 0/3"
     })
        spawn(function()
            while true do
            task.wait()
                pcall(function()
                    if FireRemote("TempleClock","Check") then
                        gearsTitle:SetTitle("Gears " .. #game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TempleClock","Check").RaceDetails.Gears ..  "/3")
                    end
                end)
            end
        end)
        Gear1 = Race:AddParagraph({Title = "Gear 1: None"})
        Gear2 = Race:AddParagraph({Title = "Gear 2: None"})
        Gear3 = Race:AddParagraph({Title = "Gear 3: None"})
        spawn(function()
            while true do
            task.wait()
                pcall(function()
                    if FireRemote("TempleClock","Check") then
                        gears = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TempleClock","Check").RaceDetails.Gears
                        if #gears >= 1 then
                            if gears[1] == "A" then
                                Gear1:SetTitle("Gear 1: Red")
                            else
                                Gear1:SetTitle("Gear 1: Blue")
                            end
                        end
                        if #gears >= 2 then
                            if gears[2] == "A" then
                                Gear2:SetTitle("Gear 2: Red")
                            else
                                Gear2:SetTitle("Gear 2: Blue")
                            end
                        end
                        if #gears >= 3 then
                            if gears[3] == "A" then
                                Gear3:SetTitle("Gear 3: Red")
                            else
                                Gear3:SetTitle("Gear 3: Blue")
                            end
                        end
                    end
                end)
                wait(5)
            end
        end)
        Race:AddSection(" ")
        BlueGearDetails = Race:AddParagraph({Title = "Blue Gear: "})
        RedGearDetails = Race:AddParagraph({Title = "Red Gear: "})
        spawn(function()
            while wait() do
                pcall(function()
                    repeat wait() until PlayerRace
                    if PlayerRace == "Fishman" then
                        BlueGearDetails:SetTitle("Blue Gear: Whirlpool")
                        RedGearDetails:SetTitle("Red Gear: Leviathan Armor")
                    end
                    if PlayerRace == "Cyborg" then
                        BlueGearDetails:SetTitle("Blue Gear: Aftershock")
                        RedGearDetails:SetTitle("Red Gear: Energy Control (Drones)")
                    end
                    if PlayerRace == "Skypiea" then
                        BlueGearDetails:SetTitle("Blue Gear: King`s rule")
                        RedGearDetails:SetTitle("Red Gear: Prince of the skies")
                    end
                    if PlayerRace == "Human" then
                        BlueGearDetails:SetTitle("Blue Gear: Rage Meter [ V2 100% ]")
                        RedGearDetails:SetTitle("Red Gear: Flash Steps [ Shit ]")
                    end
                    if PlayerRace == "Mink" then
                        BlueGearDetails:SetTitle("Blue Gear: Whirlwind [ V2 100% ]")
                        RedGearDetails:SetTitle("Red Gear: Lightning Cloak")
                    end
                    if PlayerRace == "Ghoul" then
                        BlueGearDetails:SetTitle("Blue Gear: Domain Expansion [ V2 100% ]")
                        RedGearDetails:SetTitle("Red Gear: Blood Siphon [ Shit ]")
                    end
                end)
                wait(100)
            end
        end)
	Race:AddSection("")
	GearsList = {
   "Gear 1",
   "Gear 2",
   "Gear 3"
    }
    GearsListColor = {
   "Blue",
   "Red"
    }
	
	Race:AddDropdown({
		Title = "Select Gear to Shift",
		Options = GearsList,
		Callback = function(Value)
		_G.GearSelected = Value
        end
       })		
		Race:AddDropdown({
		Title = "Select Color to Shift",
		Options = GearsListColor,
		Callback = function(Value)
		_G.GearSelectedColor = Value
        end
       })		
		Race:AddToggle({
			Title = "Change Gear",
			Callback = function(Value)
			_G.ChangeGear = Value
			end})
			
			
		spawn(function()
    while true do
        task.wait()
        if _G.ChangeGear then
            if _G.GearSelectedColor == "Red" and _G.GearSelected == "Gear 1" then
                FireRemote("TempleClock","SpendPoint","Gear2","Alpha")
            elseif _G.GearSelectedColor == "Red" and _G.GearSelected == "Gear 2" then
                FireRemote("TempleClock","SpendPoint","Gear3","Alpha")
            elseif _G.GearSelectedColor == "Red" and _G.GearSelected == "Gear 3" then
                FireRemote("TempleClock","SpendPoint","Gear4","Alpha")
            elseif _G.GearSelectedColor == "Blue" and _G.GearSelected == "Gear 1" then
                FireRemote("TempleClock","SpendPoint","Gear2","Omega")
            elseif _G.GearSelectedColor == "Blue" and _G.GearSelected == "Gear 2" then
                FireRemote("TempleClock","SpendPoint","Gear3","Omega")
            elseif _G.GearSelectedColor == "Blue" and _G.GearSelected == "Gear 3" then
                FireRemote("TempleClock","SpendPoint","Gear4","Omega")
            end
        end
    end
end)
	Race:AddToggle({
			Title = "Unlock Transformation",
			Callback = function(Value)
			_G.UnlockTransformation = Value
			end})
			spawn(function()
    while true do
        task.wait()
        if _G.UnlockTransformation then
            FireRemote("TempleClock", "SpendPoint")
            FireRemote("TempleClock", "SpendPoint", "Gear5", "Default")
        end
    end
end)
Race:AddToggle({
    Title = "Buy Race Upgrade",
    Callback = function(Value)
        _G.BuyRaceUpgrade = Value
    end
})
spawn(function()
    while true do
    task.wait()
        if _G.BuyRaceUpgrade then
            FireRemote("UpgradeRace", "Buy")
        end
    end
end)



	Race:AddSection("More")
    Race:AddToggle({
    	"Auto Train Race",
    Callback = function(Value)
    _G.AutoTrainRace = Value
    end})
	spawn(function()
	    while true do
	      task.wait()
	         if _G.AutoTrainRace then
	        if workspace.Characters[game:GetService("Players").LocalPlayer.Name].RaceEnergy.Value <= 0.4 and workspace.Characters[game:GetService("Players").LocalPlayer.Name].RaceTransformed then
	       game:GetService("Players").LocalPlayer.Character.Humanoid.Health = 0
	          end
              if not workspace.Characters[game:GetService("Players").LocalPlayer.Name].RaceTransformed then
              repeat
              task.wait()
              _G.AutoFarmBones = true 
              until not _G.AutoTrainRace or workspace.Characters[game:GetService("Players").LocalPlayer.Name].RaceTransformed 
              if _G.AutoFarmBones and workspace.Characters[game:GetService("Players").LocalPlayer.Name].RaceTransformed then
              _G.AutoFarmBones = false
              UnequipTool(SelectWeapon)
              end
              end
	       end
	     end
	   end)
	
	
	
--—————— Stats ——————






Stats:AddSection("Stats")
local prgAvaiable = Stats:AddParagraph({
Title = "Avaiable Stats : ",
Content = ""
})
local prgMelee = Stats:AddParagraph({
    Title = "Melee Stats : ",
    Content = ""
})

local prgDefense = Stats:AddParagraph({
    Title = "Defense Stats : ",
    Content = ""
})

local prgSword = Stats:AddParagraph({
    Title = "Sword Stats : ",
    Content = ""
})

local prgGun = Stats:AddParagraph({
    Title = "Gun Stats : ",
    Content = ""
})

local prgBloxFruits = Stats:AddParagraph({
    Title = "Blox Fruits Stats : ",
    Content = ""
})
spawn(function()
  while true do
    task.wait()
      prgAvaiable:SetTitle("Avaiable Points : "..game:GetService("Players").LocalPlayer.Data.Points.Value)
        prgMelee:SetTitle("Melee Points : "..game:GetService("Players").LocalPlayer.Data.Stats.Melee.Level.Value)
          prgDefense:SetTitle("Defense Points : "..game:GetService("Players").LocalPlayer.Data.Stats.Defense.Level.Value)
            prgSword:SetTitle("Sword Points : "..game:GetService("Players").LocalPlayer.Data.Stats.Sword.Level.Value)
              prgGun:SetTitle("Gun Points : "..game:GetService("Players").LocalPlayer.Data.Stats.Gun.Level.Value)
                prgBloxFruits:SetTitle("Blox Fruits Points : "..game:GetService("Players").LocalPlayer.Data.Stats["Demon Fruit"].Level.Value)
  end
end)
Stats:AddSection("Auto Stats")

local SliderStats = Stats:AddSlider({
Title = "Select Points Value",
Description = "",
Default = S.AutoStatsSlide,
Min = 1,
Max = 100,
Increase = 1,
Callback = function(Value)
_G.PointsValue = Value
S.AutoStatsSlide = Value
SS()
end})





local ToggleAutoStats = Stats:AddToggle({
Title = "Auto Points",
Description = "",
Default = S.AutoStats,
Callback = function(Value)
_G.AutoStats = Value
S.AutoStats = Value
SS()
end
})





Stats:AddSection("")
Stats:AddToggle({
Title = "Auto Melee",
Description = "",
Default = S.AutoMelee,
Callback = function(Value)
     Melee = Value
     S.AutoMelee = Value
SS()
end})






Stats:AddToggle({
Title = "Auto Defense",
Description = "",
Default = S.AutoDefense,
Callback = function(Value)
    Defense = Value
     S.AutoDefense = Value
SS()
end})




Stats:AddToggle({
Title = "Auto Sword",
Description = "",
Default = S.AutoSword,
Callback = function(Value)
    Sword = Value
     S.AutoSword = Value
SS()
end})






Stats:AddToggle({
Title = "Auto Gun",
Description = "",
Default = S.AutoGun,
Callback = function(Value)
    Gun = Value
     S.AutoGun = Value
SS()
end})






Stats:AddToggle({
Title = "Auto Blox Fruit",
Description = "",
Default = S.AutoBF,
Callback = function(Value)
    BloxFruit = Value
     S.AutoBF = Value
SS()
end})






spawn(function()
  while true do
  task.wait()
  if _G.AutoStats then
  if game:GetService("Players").LocalPlayer.Data.Points.Value > 0 then
   if Melee then
     FireRemote("AddPoint","Melee",_G.PointsValue)
  end
  if Defense then
    FireRemote("AddPoint","Defense",_G.PointsValue)
  end
  if Sword then
     FireRemote("AddPoint","Sword",_G.PointsValue)
  end
  if Gun then
     FireRemote("AddPoint","Gun",_G.PointsValue)
  end
  if BloxFruit then
     FireRemote("AddPoint","Demon Fruit",_G.PointsValue)
  end
        end
      end
    end
  end)
  
  
  
  
  
  
--—————— Visual ——————

--—————— Shop ——————







Shop:AddSection("Ectoplasm")
Shop:AddButton({
	Title = "Buy Midnight Blade",
	Description = "Need 100 Ectoplasms.",
	Callback = function()
		FireRemote("Ectoplasm", "Buy", "3")
	end
})

Shop:AddButton({
	Title = "Buy Ghoul Mask",
	Description = "Need 50 Ectoplasms.",
	Callback = function()
		FireRemote("Ectoplasm", "Buy", "2")
	end
})

Shop:AddButton({
	Title = "Buy Bizarre Revolver",
	Description = "Need 25 Ectoplasms.",
	Callback = function()
		FireRemote("Ectoplasm", "Buy", "1")
	end
})
Shop:AddButton({
    Title = "Buy All Items Ectoplasms",
    Description = "Need 175 Ectoplasms.",
    Callback = function(Value)
        if Value then
            FireRemote("Ectoplasm", "Buy", "3")
            FireRemote("Ectoplasm", "Buy", "2")
            FireRemote("Ectoplasm", "Buy", "1")
        end
    end
})








Shop:AddSection("Misc")
Shop:AddButton({
	Title = "But Stats Refund",
	Description = "Need 2,500 Fragments.",
	Callback = function()
		FireRemote("BlackbeardReward", "Refund", "1")
		FireRemote("BlackbeardReward", "Refund", "2")
	end
})

Shop:AddButton({
	Title = "Buy Reroll Race",
	Description = "Need 3,000 Fragments.",
	Callback = function()
		FireRemote("BlackbeardReward", "Reroll", "1")
		FireRemote("BlackbeardReward", "Reroll", "2")
	end
	})
	
	
	
	
	
	

Shop:AddSection("Ability Teacher")
Shop:AddButton({
	Title = "Buy Geppo Haki",
	Description = "Need 10,000 Beli.",
	Callback = function()
		FireRemote("BuyHaki", "Geppo")
	end
})

Shop:AddButton({
	Title = "Buy Buso Haki",
	Description = "Need 25,000 Beli.",
	Callback = function()
		FireRemote("BuyHaki", "Buso")
	end
})

Shop:AddButton({
	Title = "Buy Soru Haki",
	Description = "Need 100,000 Beli.",
	Callback = function()
		FireRemote("BuyHaki", "Soru")
	end
})

Shop:AddButton({
	Title = "Buy Ken Haki",
	Description = "Need 750,000 Beli\nNeed Puzzle\nNeed Kill Saber Expert.",
	Callback = function()
		FireRemote("KenTalk", "Buy")
	end
})









Shop:AddSection("Fighting Styles")
Shop:AddButton({
	Title = "Buy Black Leg",
	Description = "Need 150,000 Beli.",
	Callback = function()
		FireRemote("BuyBlackLeg")
	end
})

Shop:AddButton({
	Title = "Buy Electro",
	Description = "Need 500,000 Beli.",
	Callback = function()
		FireRemote("BuyElectro")
	end
})
Shop:AddButton({
	Title = "Buy Fishman Karate",
	Description = "Need 750,000 Beli.",
	Callback = function()
		FireRemote("BuyFishmanKarate")
	end
})

Shop:AddButton({
	Title = "Buy Dragon Claw",
	Description = "Need 1,500 Fragments.",
	Callback = function()
		FireRemote("BlackbeardReward", "DragonClaw", "1")
		FireRemote("BlackbeardReward", "DragonClaw", "2")
	end
})

Shop:AddButton({
	Title = "Buy Superhuman",
	Description = "Need 3,000,000 Beli\nNeed 300 Mastery in Black Leg\nNeed 300 Mastery in Electro\nNeed 300 Mastery in Fishman Karate\nNeed 300 Mastery in Dragon Claw.",
	Callback = function()
		FireRemote("BuySuperhuman")
	end
})

Shop:AddButton({
	Title = "Buy Death Step",
	Description = "Need 2,500,000 Beli\nNeed 5,000 Fragments\nNeed 400 Mastery in Black Leg\nNeed Library Key.",
	Callback = function()
		FireRemote("BuyDeathStep")
	end
})

Shop:AddButton({
	Title = "Buy Electric Claw",
	Description = "Need 3,000,000 Beli\nNeed 5,000 Fragments\nNeed 400 Mastery in Electric\nNeed Previous Hero Quest Completed.",
	Callback = function()
		FireRemote("BuyElectricClaw")
	end
})

Shop:AddButton({
	Title = "Buy Sharkman Karate",
	Description = "Need 2,500,000 Beli\nNeed 5,000 Fragments\nNeed 400 Mastery in Fishman Karate\nNeed Water Key.",
	Callback = function()
		FireRemote("BuySharkmanKarate")
	end
})

Shop:AddButton({
	Title = "Buy Dragon Talon",
	Description = "Need 250,000 Beli\nNeed 5,000 Fragments\nNeed 400 Mastery in Dragon Claw\nNeed Fire Essence.",
	Callback = function()
		FireRemote("BuyDragonTalon")
	end
})

Shop:AddButton({
	Title = "Buy Godhuman",
	Description = "Need 5,000,000 Beli\nNeed 5,000 Fragments\nNeed 400 Mastery in Buy Death Step\nNeed 400 Mastery in Buy Electric Claw\nNeed 400 Mastery in Buy Sharkman Karate\nNeed 400 Mastery in Buy Dragon Talon\nNeed 5 Dragon Scale\nNeed 10 Mystic Droplet\nNeed 10 Fish Tail\nNeed 20 Magma Ore.",
	Callback = function()
		FireRemote("BuyGodhuman")
	end
})

Shop:AddButton({
	Title = "Buy Sanguine Art",
	Description = "Need 5,000,000 Beli\nNeed 5,000 Fragments\nNeed 1 Leviathan Heart\nNeed 2 Dark Fragments\nNeed 20 Demonic Wisps\nNeed 20 Vampire Fangs.",
	Callback = function()
		FireRemote("BuySanguineArt")
	end
})










Shop:AddSection("Swords")
 Shop:AddButton({
	Title = "Buy Cutlass",
	Description = "Need 1,000 Beli.",
	Callback = function()
		FireRemote("BuyItem", "Cutlass")
	end
})

Shop:AddButton({
	Title = "Buy Katana",
	Description = "Need 1,000 Beli.",
	Callback = function()
		FireRemote("BuyItem", "Katana")
	end
})
Shop:AddButton({
	Title = "Buy Dual Katana",
	Description = "Need 12,000 Beli.",
	Callback = function()
		FireRemote("BuyItem", "Dual Katana")
	end
})
Shop:AddButton({
	Title = "Buy Iron Mace",
	Description = "Need 25,000 Beli.",
	Callback = function()
		FireRemote("BuyItem", "Iron Mace")
	end
})



Shop:AddButton({
	Title = "Buy Triple Katana",
	Description = "Need 60,000 Beli.",
	Callback = function()
		FireRemote("BuyItem", "Triple Katana")
	end
})

Shop:AddButton({
	Title = "Buy Pipe",
	Description = "Need 100,000 Beli",
	Callback = function()
		FireRemote("BuyItem", "Pipe")
	end
})
Shop:AddButton({
	Title = "Buy Dual-Headed Blade",
	Description = "Need 400,000 Beli.",
	Callback = function()
		FireRemote("BuyItem", "Dual-Headed Blade")
	end
})

Shop:AddButton({
	Title = "Buy Soul Cane",
	Description = "Need 750,000 Beli.",
	Callback = function()
		FireRemote("BuyItem", "Soul Cane")
	end
})

Shop:AddButton({
	Title = "Buy Bisento",
	Description = "Need 1,000,000 Beli.",
	Callback = function()
		FireRemote("BuyItem", "Bisento")
	end
})
Shop:AddButton({
	Title = "Buy Pole (2nd Form)",
	Description = "Need 5,000 Fragments\nPole (1st Form) with 180+ Mastery\nFully awakened Rumble Fruit (250+ Mastery)\nComplete a Rumble Raid.",
	Callback = function()
		FireRemote("ThunderGodTalk")
	end
})











Shop:AddSection("Guns")
Shop:AddButton({
	Title = "Buy Slingshot",
	Description = "Need: 5,000 Beli.",
	Callback = function()
		FireRemote("BuyItem", "Slingshot")
	end
})

Shop:AddButton({
	Title = "Buy Musket",
	Description = "Need 8,000 Beli.",
	Callback = function()
		FireRemote("BuyItem", "Musket")
	end
})

Shop:AddButton({
	Title = "Buy Flintlock",
	Description = "Need 10,500 Beli.",
	Callback = function()
		FireRemote("BuyItem", "Flintlock")
	end
})

Shop:AddButton({
	Title = "Buy Refined Slingshot",
	Description = "Need 30,000 Beli.",
	Callback = function()
		FireRemote("BuyItem", "Refined Slingshot")
	end
})

Shop:AddButton({
	Title = "Buy Dual Flintlock",
	Description = "Need 65,000 Beli.",
	Callback = function()
		FireRemote("BuyItem", "Dual Flintlock")
	end
})
Shop:AddButton({
	Title = "Buy Cannon",
	Description = "Need 100,000 Beli.",
	Callback = function()
		FireRemote("BuyItem", "Cannon")
	end
})

Shop:AddButton({
	Title = "Buy Kabucha",
	Description = "Need 1,500 Fragments.",
	Callback = function()
		FireRemote("BlackbeardReward", "Slingshot", "1")
		FireRemote("BlackbeardReward", "Slingshot", "2")
	end
})









Shop:AddSection("Race")
Shop:AddButton({
	Title = "Buy Cyborg Race",
	Description = "Need 2,500 Fragments.",
	Callback = function()
		FireRemote("CyborgTrainer", "Buy")
	end
})
	Shop:AddButton({
	Title = "Buy Ghoul Race",
	Description = "Need 100 Ectoplasm\nNeed Hellfire Torch.",
	Callback = function()
		FireRemote("Ectoplasm", "Change", 4)
	end
})
	

if Sea3 then
    Shop:AddButton({
        Title = "Buy Draco Race",
        Description = "Need Black Belt\nNeed Dragon Egg.",
        Callback = function()
      
            if game:GetService("Players").LocalPlayer.Data.Race.Value == "Draco" then
                Notify.new("<Color=Orange>Your Race Is Draco<Color=/>"):Display()
            else
                Tween(Vector3.new(5814, 1208, 884))
                local v368 = Vector3.new(5814, 1208, 884)
                local v369 = game.Players.LocalPlayer
                local v370 = v369.Character or v369.CharacterAdded:Wait()
                repeat
                    wait()
                until (v370.HumanoidRootPart.Position - v368).Magnitude < 1
                local v371 = {
                    [1] = {
                        NPC = "Dragon Wizard",
                        Command = "DragonRace"
                    }
                }
                game:GetService("ReplicatedStorage").Modules.Net:FindFirstChild("RF/InteractDragonQuest"):InvokeServer(unpack(v371))
            end
        end
    })
end









Shop:AddSection("Dragon Update")
Shop:AddButton({
    Title = "Craft Dragonheart",
    Description = "Need 1 Dragon Egg\nNeed 10 Dinosaur Bones\nNeed 30 Blaze Embers\nNeed 1 Dojo Belt (Red).",
    Callback = function()
        FireRemote("CraftItem", "Craft", "Dragonheart")
    end
})
	Shop:AddButton({
    Title = "Craft Dragonstorm",
    Description = "Need 2 Dragon Eggs\nNeed 5 Dragon Scales\nNeed 10 Dinosaur Bones\nNeed 30 Blaze Embers\nNeed 1 Dojo Belt (Red).",
    Callback = function()
        FireRemote("CraftItem", "Craft", "Dragonstorm")
    end
})
	Shop:AddButton({
    Title = "Craft Volcanic Magnet",
    Description = "Need 10 Scrap Metal\nNeed 15 Blaze Embers.",
    Callback = function()
        FireRemote("CraftItem", "Craft", "Volcanic Magnet")
    end
})
	Shop:AddButton({
    Title = "Craft T-Rex Skull",
    Description = "Need 8 Dinosaur Bones\nNeed 5 Dragon Scales.",
    Callback = function()
        FireRemote("CraftItem", "Craft", "TRexSkull")
    end
})
	Shop:AddButton({
    Title = "Craft Dino Hood",
    Description = "Need 25 Dinosaur Bones\nNeed 10 Mini Tusks.",
    Callback = function()
        FireRemote("CraftItem", "Craft", "DinoHood")
    end
})
	







Shop:AddSection("Shark Hunter")
Shop:AddButton({
    Title = "Craft Shark Tooth Necklace",
    Description = "Need 1 Mutant Tooth\nNeed 5 Shark Teeth.",
    Callback = function()
        FireRemote("CraftItem", "Craft", "ToothNecklace")
    end
})

Shop:AddButton({
    Title = "Craft Terror Jaw",
    Description = "Need 1 Terror Eye\nNeed 2 Mutant Teeth\nNeed 10 Fool's Gold\nNeed 5 Shark Teeth.",
    Callback = function()
        FireRemote("CraftItem", "Craft", "TerrorJaw")
    end
})

Shop:AddButton({
    Title = "Craft Monster Magnet",
    Description = "Need 2 Terror Eyes\nNeed 8 Electric Wings\nNeed 20 Fool's Gold\nNeed 10 Shark Teeth.",
    Callback = function()
        FireRemote("CraftItem", "Craft", "SharkAnchor")
    end
})








Shop:AddSection("Beast Hunter")
Shop:AddButton({
    Title = "Craft Leviathan Crown",
    Description = "Need 1 Dark Fragment\nNeed 10 Leviathan Scales\nNeed 5 Electric Wings.",
    Callback = function()
        FireRemote("CraftItem", "Craft", "LeviathanCrown")
    end
})

Shop:AddButton({
    Title = "Craft Leviathan Shield",
    Description = "Need 1 Mirror Fractal\nNeed 10 Leviathan Scales\nNeed 5 Electric Wings.",
    Callback = function()
        FireRemote("CraftItem", "Craft", "LeviathanShield")
    end
})

Shop:AddButton({
    Title = "Craft Beast Hunter",
    Description = "Need 20 Leviathan Scales\nNeed 6 Electric Wings\nNeed 2 Mutant Teeth\nNeed 30 Fool's Gold\nNeed 6 Shark Teeth.",
    Callback = function()
        FireRemote("CraftItem", "Craft", "LeviathanBoat")
    end
})
	








Shop:AddSection("Dragon Talon Sage")
Shop:AddButton({
    Title = "Craft Common Scroll",
    Description = "Need 3 Fool's Gold\nNeed 1 Shark Tooth.",
    Callback = function()
        FireRemote("CraftItem", "Craft", "CommonScroll")
    end
})

Shop:AddButton({
    Title = "Craft Rare Scroll",
    Description = "Need 2 Electric Wings\nNeed 5 Fool's Gold\nNeed 1 Shark Tooth.",
    Callback = function()
        FireRemote("CraftItem", "Craft", "RareScroll")
    end
})

Shop:AddButton({
    Title = "Craft Legendary Scroll",
    Description = "Need 5 Leviathan Scales\nNeed 3 Electric Wings\nNeed 1 Mutant Tooth\nNeed 1 Fool's Gold.",
    Callback = function()
        FireRemote("CraftItem", "Craft", "LegendaryScroll")
    end
})

Shop:AddButton({
    Title = "Craft Mythical Scroll",
    Description = "Need 1 Leviathan Heart\nNeed 2 Leviathan Scales\nNeed 2 Terror Eyes\nNeed 5 Fool's Gold.",
    Callback = function()
        FireRemote("CraftItem", "Craft", "MythicalScroll")
    end
})


--—————— Debug ——————

Debug:AddButton({
    Title = "Copy Cord",
      Description = "",
        Callback = function()
          local pos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
          setclipboard("Vector3.new( "..math.floor(pos.X)..", "..math.floor(pos.Y)..", "..math.floor(pos.Z)..")")
        end
  })
  
  
  
  
    Debug:AddButton({
      Title = "Copy Place Id",
        Description = "",
          Callback = function()
            setclipboard(game.PlaceId)
          end
    })
    
    
    
    
    
    --[[
    
    local args = {
    [1] = {
        ["Context"] = "GetSkinsInventory"
    }
}

game:GetService("ReplicatedStorage").Modules.Net:FindFirstChild("RF/FruitCustomizerRF"):InvokeServer(unpack(args))


]]--
--[[

function GetEnemieSaber(MonsterName)
for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
if v.Name == MonsterName and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") then
while v.Humanoid.Health > 0  do
if not _G.AutoGetSaber  then
break
end
Tween(v.HumanoidRootPart.Position + Vector3.new(0, getgenv().EnemiePosY, 0))
task.wait()
end
end
end
end
FireRemote("ProQuestProgress", "PlaceRelic")
Tween(workspace.Map.Jungle.Final:GetChildren()[14].Position)
local Map = workspace:WaitForChild("Map")
local JungleUpstairs = Map:WaitForChild("Jungle")  -- Obtendo o valor completo de JungleUpstairs
local QuestPlatesInJungle = JungleUpstairs:WaitForChild("QuestPlates")

for index, plateStatus in next, QuestPlatesInJungle:GetChildren() do
    local plateObject = plateStatus
    local button = plateObject:WaitForChild("Button")
    
    -- Verifica se o botão não tem as cores "Camo" ou "Neon"
    if button.BrickColor.Name ~= "Camo" and button.Material ~= "Neon" then
        -- Aqui você já tem a Tween, então só aplique ela na posição da placa
        -- Supondo que você tenha uma variável 'Tween' já configurada:
        Tween(plateObject.WorldPivot.Position)
        
        -- Chama o CommF com o valor completo
       FireRemote("ProQuestProgress", "Plate", index)
    end
end
InvokeServer("ProQuestProgress", "GetTorch")
InvokeServer("ProQuestProgress", "DestroyTorch")
InvokeServer("ProQuestProgress", "GetCup")
InvokeServer("ProQuestProgress", "FillCup", LocalPlayer.Character.Cup)
FireRemote("ProQuestProgress", "PlaceRelic")

Tween(workspace.Map.Jungle.Final:GetChildren()[14].Position)
]]--


