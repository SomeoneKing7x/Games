
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
if Sea1 or Sea2 or Sea3 then
function FireRemote(...)
     return game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(...)
     end
     
repeat wait() until game:IsLoaded()

if Team == "Marines" then
    FireRemote("SetTeam", "Marines")
elseif Team == "Pirates" then
    FireRemote("SetTeam", "Pirates")
else
    FireRemote("SetTeam", "Marines") 
    warn("Time inválido ou não definido. Entrando na Marinha por padrão.")
end

local function Tween(targetPosition)
gettween = true
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
        table.insert(PortalPos, Vector3.new(3030, 2281, -7328))
    end
    local closestPortal = nil
    local closestDistance = (humanoidRootPart.Position - targetPosition).magnitude

    for _, portal in pairs(PortalPos) do
        local portalDistance = (portal - targetPosition).magnitude
        if portalDistance < closestDistance then
            closestPortal = portal
            closestDistance = portalDistance
        end
    end
    if Sea3 and closestPortal == Vector3.new(3030, 2281, -7328) then
    FireRemote("requestEntrance", Vector3.new(28286, 14897, 103))
    wait(1)
        Tween(Vector3.new(28610, 14896, 107)) -- Move primeiro para esse ponto
        task.wait(1) -- Pequena pausa
        FireRemote("RaceV4Progress", "TeleportBack")
    elseif closestPortal then
        -- Caso contrário, usa o requestEntrance normal
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", closestPortal)
    end
	if humanoidRootPart.Position.Y ~= targetPosition.Y then
		while humanoidRootPart.Position.Y ~= targetPosition.Y do
			humanoidRootPart.CFrame = CFrame.new(humanoidRootPart.Position.X, targetPosition.Y, humanoidRootPart.Position.Z)
		end
	end
    while (humanoidRootPart.Position - targetPosition).magnitude > stopDistance do
        local distance = (humanoidRootPart.Position - targetPosition).magnitude
        local speed
        if distance <= 50 then
            speed = math.max(minSpeed, 350 * (distance / 50))
        else
            speed = 350
        end
        local direction = (targetPosition - humanoidRootPart.Position).unit
        humanoidRootPart.CFrame = humanoidRootPart.CFrame + direction * speed * task.wait()
        humanoidRootPart.AssemblyLinearVelocity = Vector3.zero
    end
end

game:GetService("RunService").RenderStepped:Connect(function()
if game.Players.LocalPlayer.Character.Humanoid.Sit and gettween then 
		game:GetService("VirtualInputManager"):SendKeyEvent(true, "Space", false, game)
		wait(0.15)
		game:GetService("VirtualInputManager"):SendKeyEvent(false, "Space", false, game)
	end
	end)
game:GetService("RunService").RenderStepped:Connect(function()
    pcall(function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin", "Buy")
    end)
end)
game:GetService("RunService").RenderStepped:Connect(function()
        for v801, v802 in pairs(game.Workspace:GetChildren()) do
            if string.find(v802.Name, "Fruit") then
                v802.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            end
        end
end)
game:GetService("RunService").RenderStepped:Connect(function()
        for v803, v804 in pairs(game.Workspace:GetChildren()) do
            if string.find(v804.Name, "Fruit") then
                Tween(v804.Handle.Position)
            end
        end
end)
spawn(function()
    while true do
        task.wait()
        
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
end)
local HttpService = game:GetService("HttpService")
local placeId = game.PlaceId


local function buscarServidores()
local cursor = nil
local enviados = 0

repeat  
    local url = "https://games.roblox.com/v1/games/" .. placeId .. "/servers/Public?sortOrder=Asc&limit=100"  
    if cursor then  
        url = url .. "&cursor=" .. cursor  
    end  

    local sucesso, resposta = pcall(function()  
        return HttpService:JSONDecode(game:HttpGet(url))  
    end)  

    if sucesso and resposta and resposta.data then  
        for _, server in ipairs(resposta.data) do  
            if server.playing and server.playing < 5 then    
                game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId,server.id, game.Players.LocalPlayer)
                enviados += 1  
                wait(1)
            end  
        end  
        cursor = resposta.nextPageCursor  
    else  
        
        break  
    end  

    wait()  
until not cursor  

end

buscarServidores()


game:GetService("RunService").RenderStepped:Connect(function()
    for _, objeto in pairs(game.Workspace:GetChildren()) do
        if not string.find(objeto.Name, "Fruit") then
            coroutine.wrap(buscarServidor)()
            break
        end
    end
end)
end