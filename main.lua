game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Credits",Text = "Script By Nexer1234",Icon = "rbxassetid://7733658504",Duration = 5})

wait(0.2)

if game.Players.LocalPlayer.leaderstats.Slaps.Value >= 44000 then

if workspace:FindFirstChild("Baseplate") == nil then
local S = Instance.new("Part")
S.Name = "Baseplate"
S.Anchored = true
S.CanCollide = true
S.Transparency = 0
S.Position = Vector3.new(-7000, -7000, -7000)
S.Size = Vector3.new(1000, 10, 1000)
S.Parent = workspace
end

fireclickdetector(workspace.Lobby["Diamond"].ClickDetector)
  
wait(0.1)

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["Baseplate"].CFrame * CFrame.new(0,30,0)

wait(0.2)
  
game:GetService("ReplicatedStorage"):WaitForChild("Rockmode"):FireServer()
  
wait(0.2)

for i, v in pairs(game:GetService("ReplicatedStorage")._NETWORK:GetChildren()) do
	    -- Check if the name contains the character '{'
	    if v.Name:find("{") then
	        local args = {
	            [1] = "Titan"
	        }
	
	        -- Check if v is a RemoteEvent and can FireServer
	        if v:IsA("RemoteEvent") then
	            v:FireServer(unpack(args))
	        elseif v:IsA("RemoteFunction") then
	            -- If it's a RemoteFunction, use InvokeServer
	            local result = v:InvokeServer(unpack(args))
	            print("Result from InvokeServer:", result)  -- Optional: Print the result
	        else
	            print("v is neither a RemoteEvent nor a RemoteFunction.")
	        end
	    end
	end

wait(1)
  
local args = {
    [1] = "Transform"
}

game:GetService("ReplicatedStorage").GeneralAbility:FireServer(unpack(args))

wait(0.2)

fireclickdetector(workspace.Lobby["Diamond"].ClickDetector)

wait(0.1)

game:GetService("ReplicatedStorage"):WaitForChild("DeactivateRockmode"):FireServer()

wait(0.5)

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Origo.CFrame

wait(0.2)

fireclickdetector(workspace.Lobby["Sbeve"].ClickDetector)

wait(0.1)

else
game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Error",Text = "Not Enough Slaps. ( you need 44k slaps )",Icon = "rbxassetid://7733658504",Duration = 5})
end
