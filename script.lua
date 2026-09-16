local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")

if PlayerGui:FindFirstChild("CursedHubConsoleUI") then
    PlayerGui.CursedHubConsoleUI:Destroy()
end

local t1 = {
	Pos = nil,
	Orientation = nil
}
local u9 = false
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "CursedHubConsoleUI"
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = PlayerGui

local Frame = Instance.new("Frame")
Frame.Size = UDim2.new(0, 480, 0, 200)
Frame.Position = UDim2.new(1, -505, 0.5, -100)
Frame.BackgroundColor3 = Color3.fromRGB(12, 9, 18)
Frame.BackgroundTransparency = 1
Frame.BorderSizePixel = 0
Frame.ClipsDescendants = true
Frame.Active = true
Frame.Parent = ScreenGui

TweenService:Create(Frame, TweenInfo.new(0.5, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {
	BackgroundTransparency = 0.05
}):Play()

local u12
local u13
local inputPosition
local FramePosition

Frame.InputBegan:Connect(function(input)
    local v35 = input.UserInputType == Enum.UserInputType.MouseButton1
    if not v35 then
        v35 = input.UserInputType == Enum.UserInputType.Touch
    end
    if v35 then
        u12 = true
        inputPosition = input.Position
        FramePosition = Frame.Position
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                u12 = false
            end
        end)
    end
end)

Frame.InputChanged:Connect(function(input)
    local v37 = input.UserInputType == Enum.UserInputType.MouseMovement
    if not v37 then
        v37 = input.UserInputType == Enum.UserInputType.Touch
    end
    if v37 then
        u13 = input
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if input == u13 and u12 then
        local v39 = input.Position - inputPosition
        Frame.Position = UDim2.new(FramePosition.X.Scale, FramePosition.X.Offset + v39.X, FramePosition.Y.Scale, FramePosition.Y.Offset + v39.Y)
    end
end)

local UIStroke = Instance.new("UIStroke")
UIStroke.Color = Color3.fromRGB(150, 60, 230)
UIStroke.Thickness = 1.5
UIStroke.Transparency = 0.15
UIStroke.Parent = Frame

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 20)
UICorner.Parent = Frame

local Frame2 = Instance.new("Frame")
Frame2.Size = UDim2.new(1, 0, 0, 44)
Frame2.BackgroundColor3 = Color3.fromRGB(22, 15, 33)
Frame2.BorderSizePixel = 0
Frame2.ClipsDescendants = true
Frame2.ZIndex = 3
Frame2.Parent = Frame

local UICorner2 = Instance.new("UICorner")
UICorner2.CornerRadius = UDim.new(0, 20)
UICorner2.Parent = Frame2

local TextLabel = Instance.new("TextLabel")
TextLabel.Size = UDim2.new(0, 200, 1, 0)
TextLabel.Position = UDim2.new(0, 20, 0, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.ZIndex = 4
TextLabel.Text = "CURSED HUB"
TextLabel.TextColor3 = Color3.fromRGB(255, 250, 255)
TextLabel.TextSize = 14
TextLabel.Font = Enum.Font.GothamBold
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.Parent = Frame2

local TextLabel2 = Instance.new("TextLabel")
TextLabel2.Size = UDim2.new(0, 250, 0, 14)
TextLabel2.Position = UDim2.new(0, 20, 0, 26)
TextLabel2.BackgroundTransparency = 1
TextLabel2.ZIndex = 4
TextLabel2.Text = "discord.gg/vGRFQdev8"
TextLabel2.TextColor3 = Color3.fromRGB(180, 130, 230)
TextLabel2.TextSize = 10
TextLabel2.Font = Enum.Font.GothamMedium
TextLabel2.TextXAlignment = Enum.TextXAlignment.Left
TextLabel2.Parent = Frame2

local TextButton = Instance.new("TextButton")
TextButton.Size = UDim2.new(0, 32, 0, 32)
TextButton.Position = UDim2.new(1, -38, 0.5, -16)
TextButton.BackgroundColor3 = Color3.fromRGB(32, 22, 48)
TextButton.ZIndex = 4
TextButton.Text = "-"
TextButton.TextColor3 = Color3.fromRGB(230, 200, 255)
TextButton.TextSize = 16
TextButton.Font = Enum.Font.GothamBold
TextButton.Parent = Frame2

local UIStroke2 = Instance.new("UIStroke")
UIStroke2.Color = Color3.fromRGB(160, 70, 240)
UIStroke2.Transparency = 0.3
UIStroke2.Parent = TextButton

local UICorner3 = Instance.new("UICorner")
UICorner3.CornerRadius = UDim.new(1, 0)
UICorner3.Parent = TextButton

TextButton.MouseEnter:Connect(function()
    TweenService:Create(TextButton, TweenInfo.new(0.2, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
		BackgroundColor3 = Color3.fromRGB(50, 32, 75),
		Size = UDim2.new(0, 34, 0, 34),
		Position = UDim2.new(1, -39, 0.5, -17)
	}):Play()
end)

TextButton.MouseLeave:Connect(function()
    TweenService:Create(TextButton, TweenInfo.new(0.2, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
		BackgroundColor3 = Color3.fromRGB(32, 22, 48),
		Size = UDim2.new(0, 32, 0, 32),
		Position = UDim2.new(1, -38, 0.5, -16)
	}):Play()
end)

local Frame3 = Instance.new("Frame")
Frame3.Size = UDim2.new(1, 0, 0, 150)
Frame3.Position = UDim2.new(0, 0, 0, 46)
Frame3.BackgroundTransparency = 1
Frame3.ClipsDescendants = true
Frame3.ZIndex = 2
Frame3.Parent = Frame

-- Button 1: SET POSE
local TextButton2 = Instance.new("TextButton")
TextButton2.Size = UDim2.new(0.45, 0, 0, 45)
TextButton2.Position = UDim2.new(0.035, 0, 0.08, 0)
TextButton2.BackgroundColor3 = Color3.fromRGB(20, 14, 30)
TextButton2.TextColor3 = Color3.fromRGB(240, 230, 255)
TextButton2.ZIndex = 2
TextButton2.Text = "SET POSE"
TextButton2.TextSize = 12
TextButton2.Font = Enum.Font.GothamBold
TextButton2.Parent = Frame3
local UIStroke3 = Instance.new("UIStroke")
UIStroke3.Color = Color3.fromRGB(110, 45, 160)
UIStroke3.Transparency = 0.4
UIStroke3.Parent = TextButton2
local UICorner4 = Instance.new("UICorner")
UICorner4.CornerRadius = UDim.new(0, 12)
UICorner4.Parent = TextButton2

-- Button 2: STEAL
local TextButton3 = Instance.new("TextButton")
TextButton3.Size = UDim2.new(0.45, 0, 0, 45)
TextButton3.Position = UDim2.new(0.515, 0, 0.08, 0)
TextButton3.BackgroundColor3 = Color3.fromRGB(65, 15, 105)
TextButton3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton3.ZIndex = 2
TextButton3.Text = "STEAL"
TextButton3.TextSize = 12
TextButton3.Font = Enum.Font.GothamBold
TextButton3.Parent = Frame3
local UIStroke4 = Instance.new("UIStroke")
UIStroke4.Color = Color3.fromRGB(190, 60, 250)
UIStroke4.Transparency = 0.15
UIStroke4.Parent = TextButton3
local UICorner5 = Instance.new("UICorner")
UICorner5.CornerRadius = UDim.new(0, 12)
UICorner5.Parent = TextButton3

-- Button 3: TP TO WALL
local TextButton4 = Instance.new("TextButton")
TextButton4.Size = UDim2.new(0.45, 0, 0, 45)
TextButton4.Position = UDim2.new(0.035, 0, 0.55, 0)
TextButton4.BackgroundColor3 = Color3.fromRGB(30, 12, 45)
TextButton4.TextColor3 = Color3.fromRGB(240, 230, 255)
TextButton4.ZIndex = 2
TextButton4.Text = "TP TO WALL"
TextButton4.TextSize = 12
TextButton4.Font = Enum.Font.GothamBold
TextButton4.Parent = Frame3
local UIStroke5 = Instance.new("UIStroke")
UIStroke5.Color = Color3.fromRGB(130, 50, 190)
UIStroke5.Transparency = 0.3
UIStroke5.Parent = TextButton4
local UICorner6 = Instance.new("UICorner")
UICorner6.CornerRadius = UDim.new(0, 12)
UICorner6.Parent = TextButton4

-- Button 4: KICK
local TextButton5 = Instance.new("TextButton")
TextButton5.Size = UDim2.new(0.45, 0, 0, 45)
TextButton5.Position = UDim2.new(0.515, 0, 0.55, 0)
TextButton5.BackgroundColor3 = Color3.fromRGB(85, 15, 30)
TextButton5.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton5.ZIndex = 2
TextButton5.Text = "KICK"
TextButton5.TextSize = 12
TextButton5.Font = Enum.Font.GothamBold
TextButton5.Parent = Frame3
local UIStroke6 = Instance.new("UIStroke")
UIStroke6.Color = Color3.fromRGB(220, 50, 60)
UIStroke6.Transparency = 0.15
UIStroke6.Parent = TextButton5
local UICorner7 = Instance.new("UICorner")
UICorner7.CornerRadius = UDim.new(0, 12)
UICorner7.Parent = TextButton5

-- Minimize/Maximize Logic
TextButton.MouseButton1Click:Connect(function()
    u9 = not u9
    if u9 then
        TextButton.Text = "+"
        TextLabel2.Visible = false
        TweenService:Create(Frame, TweenInfo.new(0.35, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {
			Size = UDim2.new(0, 480, 0, 44)
		}):Play()
        return
    end

    TextLabel2.Visible = true
    TextButton.Text = "-"
    TweenService:Create(Frame, TweenInfo.new(0.35, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {
		Size = UDim2.new(0, 480, 0, 200)
	}):Play()
end)

-- Steal Function
local function v33()
    if not t1.Pos then
        TextButton2.Text = "No Pose!"
        task.spawn(function()
            task.wait(1)
            TextButton2.Text = "SET POSE"
        end)
        return
    end

    TextButton3.Text = "Stealing..."

    local Character = LocalPlayer.Character
    local v58 = not Character
    if not v58 then
        v58 = not Character:FindFirstChild("HumanoidRootPart")
        if not v58 then
            v58 = not Character:FindFirstChild("Humanoid")
        end
    end

    if v58 then
        TextButton3.Text = "STEAL"
        return
    end

    local HumanoidRootPart = Character.HumanoidRootPart
    local Humanoid = Character.Humanoid
    local v61 = CFrame.new(t1.Pos + Vector3.new(0, 1, 0)) * t1.Orientation
    local cFrame = CFrame.new(t1.Pos.X, t1.Pos.Y - 2000, t1.Pos.Z)

    task.spawn(function()
        local t2 = {}
        pcall(function()
            HumanoidRootPart.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
            HumanoidRootPart.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
            for _, v87 in ipairs(Character:GetDescendants()) do
                if v87:IsA("Motor6D") then
                    table.insert(t2, {
						motor = v87,
						parent = v87.Parent
					})
                    v87.Parent = nil
                end
                if v87:IsA("BasePart") then
                    v87.CanCollide = false
                end
            end
            Humanoid.Parent = Workspace
            local timestamp = tick()
            while tick() - timestamp < 2.8 do
                if not Character or not Character.Parent or not HumanoidRootPart then break end
                pcall(function()
                    HumanoidRootPart.CFrame = cFrame
                    HumanoidRootPart.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
                    HumanoidRootPart.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
                end)
                RunService.Heartbeat:Wait()
            end
            for _, v96 in ipairs(t2) do
                if v96.motor and v96.parent then
                    v96.motor.Parent = v96.parent
                end
            end
            for _, descendant in ipairs(Character:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    descendant.CanCollide = true
                end
            end
            Humanoid.Parent = Character
            Humanoid.PlatformStand = false
            local v99 = CFrame.new(t1.Pos + Vector3.new(0, 18, 0)) * t1.Orientation
            pcall(function()
                HumanoidRootPart.CFrame = v99
                HumanoidRootPart.AssemblyLinearVelocity = Vector3.new(0, -35, 0)
                Humanoid:ChangeState(Enum.HumanoidStateType.Freefall)
            end)
            local timestamp2 = tick()
            while tick() - timestamp2 < 3.5 do
                if not Character or not Character.Parent or not HumanoidRootPart then break end
                pcall(function()
                    if tick() - timestamp2 > 0.3 then
                        HumanoidRootPart.CFrame = v61
                        HumanoidRootPart.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
                        HumanoidRootPart.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
                    end
                end)
                RunService.Heartbeat:Wait()
            end
            pcall(function()
                if Humanoid and Humanoid.Parent then
                    Humanoid:ChangeState(Enum.HumanoidStateType.Landing)
                    Humanoid.Jump = true
                end
            end)
        end)
        TextButton3.Text = "STEAL"
    end)
end

-- TP Wall Function (Custom)
local function tpToNearestWall()
    TextButton4.Text = "EXECUTING..."

    task.spawn(function()
        local character = LocalPlayer.Character
        if not character or not character:FindFirstChild("HumanoidRootPart") then return end
        local hrp = character.HumanoidRootPart

        -- 1. Trava a física momentaneamente para evitar quedas ou flags
        hrp.Anchored = true
        
        -- 2. Pega a direção exata para onde você está olhando e avança 10 studs
        local lookVector = hrp.CFrame.LookVector
        hrp.CFrame = hrp.CFrame + (lookVector * 10)
        
        -- 3. Pausa curtíssima para o servidor processar a travessia da parede
        task.wait(0.05)
        
        -- 4. Destrava o personagem
        hrp.Anchored = false

        TextButton4.Text = "CONCLUÍDO!"
        task.spawn(function()
            task.wait(1)
            TextButton4.Text = "TP TO WALL"
        end)
    end)
end

-- Kick Function
local function kickPlayer()
    LocalPlayer:Kick("Kicked By CURSEDHUB")
end

-- Button Connections
TextButton2.MouseButton1Click:Connect(function()
    local Character = LocalPlayer.Character
    if Character and Character:FindFirstChild("HumanoidRootPart") then
        local hrpCFrame = Character.HumanoidRootPart.CFrame
        t1.Pos = hrpCFrame.Position
        t1.Orientation = hrpCFrame - hrpCFrame.Position
        TextButton2.Text = "SAVED!"
        task.spawn(function()
            task.wait(0.8)
            TextButton2.Text = "SET POSE"
        end)
    end
end)

TextButton3.MouseButton1Click:Connect(function()
    v33()
end)

TextButton4.MouseButton1Click:Connect(function()
    tpToNearestWall()
end)

TextButton5.MouseButton1Click:Connect(function()
    kickPlayer()
end)
