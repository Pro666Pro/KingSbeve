game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Credits",Text = "Script By Nexer1234 💔",Icon = "rbxassetid://7733658504",Duration = 5})

--ez haha

game.Players.LocalPlayer.Character.Head.Nametag.TextLabel.Text = "KING SBEVE"

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

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["Baseplate"].CFrame * CFrame.new(0,30,0)

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

wait(0.1)
  
local args = {
    [1] = "Transform"
}

game:GetService("ReplicatedStorage").GeneralAbility:FireServer(unpack(args))

wait(0.01)

fireclickdetector(workspace.Lobby["Diamond"].ClickDetector)

wait(0.1)

game:GetService("ReplicatedStorage"):WaitForChild("Rockmode"):FireServer()

wait(2)

game:GetService("ReplicatedStorage"):WaitForChild("DeactivateRockmode"):FireServer()

wait(0.2)

fireclickdetector(workspace.Lobby["Sbeve"].ClickDetector)

wait(0.1)

repeat task.wait() until game.Players.LocalPlayer.Character
if game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
repeat task.wait()
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 0)
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 1)
until game.Players.LocalPlayer.Character:FindFirstChild("entered")
end

wait(0.5)

game:GetService("ReplicatedStorage").GeneralAbility:FireServer()

wait(1)

game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 26
	
else
game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Error",Text = "Not Enough Slaps. ( you need 44k slaps )",Icon = "rbxassetid://7733658504",Duration = 5})
end
