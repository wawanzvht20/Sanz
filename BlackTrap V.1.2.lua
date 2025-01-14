-- BLACKTRAP V1.2 FIXED_BUILD --
-- REALEASE DATE ON 25/02/2022 --
-- MADE By WANZ --
-- DO NOT COPYRIGHT --
-- (WINDOWS AND MOBILE VERSION) --

-- service --
local Blacklib = {}
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")

-- init --
local LocalizationService = game:GetService("LocalizationService")
local LocalPlayer = game:GetService("Players").LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local NameID = LocalPlayer.Name

-- themes --
_G.WindowBackgroundColor = Color3.fromRGB(12, 12, 12)
_G.BackgroundItemColor = Color3.fromRGB(20, 20, 20)
_G.TabWindowColor = Color3.fromRGB(30, 30, 30)
_G.ContainerColor = Color3.fromRGB(30, 30, 30)
_G.TitleTextColor = Color3.fromRGB(150, 150, 150)
_G.ImageColor = Color3.fromRGB(150, 150, 150)
_G.LineThemeColor = Color3.fromRGB(150, 150, 150)
_G.TabTextColor = Color3.fromRGB(150, 150, 150)
_G.TabImageColor = Color3.fromRGB(150, 150, 150)
_G.TabThemeColor = Color3.fromRGB(250, 0, 0)
_G.SectionColor = Color3.fromRGB(150, 150, 150)
_G.SectionImageColor = Color3.fromRGB(150, 150, 150)
_G.SectionTextColor = Color3.fromRGB(150, 150, 150)
_G.SectionOn = Color3.fromRGB(0, 250, 0)

-- Windows --
function Blacklib:Window(gametitle)
    local osfunc = {}
    local osfunc2 = {}
    local titlefunc = {}    
    local mintoggle = false
    local Points = Instance.new("Frame")
    local BlackTrap = Instance.new("ScreenGui")
    local Shadow = Instance.new("ImageLabel")
    local WindowFrame = Instance.new("Frame")
    local WindowCorner = Instance.new("UICorner")
    local BlackImage = Instance.new("ImageLabel")
    local BlackTitle = Instance.new("TextLabel")
    local Space = Instance.new("TextLabel")
    local GameTitle = Instance.new("TextLabel")
    local ServerTime = Instance.new("TextLabel")
    local MinButton = Instance.new("TextButton")
    local CloseButton = Instance.new("TextButton")
    local CloseImage = Instance.new("ImageButton")
    local ServerTime = Instance.new("TextButton")
    local ServerDate = Instance.new("TextButton")
    local PlaLab = Instance.new("TextLabel")
    
    -- Propertiers --
    BlackTrap.Name = "BlackTrap"
    BlackTrap.Parent = game.CoreGui
    BlackTrap.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    
    Points.Name = "Points"
    Points.Parent = BlackTrap
    Points.BackgroundColor3 = _G.WindowBackgroundColor
    Points.BackgroundTransparency = 1.000
    Points.Size = UDim2.new(0, 800, 0, 600)
    Points.Position = UDim2.new(0, 320, 0, 90)
    
    Shadow.Name = "Shadow"
    Shadow.Parent = Points
    Shadow.AnchorPoint = Vector2.new(0.5, 0.5)
    Shadow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Shadow.BackgroundTransparency = 1.000
    Shadow.Position = UDim2.new(0, 295, 0, 170)
    Shadow.Size = UDim2.new(0, 0, 0, 0)
    Shadow.Image = "http://www.roblox.com/asset/?id=6105530152"
    Shadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
    Shadow.ClipsDescendants = true
    
    Shadow:TweenSize(UDim2.new(0, 650, 0, 450), Enum.EasingDirection.InOut, Enum.EasingStyle.Linear, .6, true)
    
    WindowFrame.Name = "WindowFrame"
    WindowFrame.Parent = Shadow
    WindowFrame.BackgroundColor3 = _G.WindowBackgroundColor
    WindowFrame.Position = UDim2.new(0, 32, 0, 37)
    WindowFrame.BorderSizePixel = 0
    WindowFrame.Size = UDim2.new(0, 589, 0, 378)
    WindowFrame.ClipsDescendants = true
    
    WindowCorner.Name = "WindowCorner"
    WindowCorner.Parent = WindowFrame
    WindowCorner.CornerRadius = UDim.new(0, 5)
    
    BlackImage.Name = "BlackImage"
    BlackImage.Parent = WindowFrame
    BlackImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    BlackImage.BackgroundTransparency = 1.000
    BlackImage.Position = UDim2.new(0, 5, 0, 7)
    BlackImage.Size = UDim2.new(0, 25, 0, 25)
    BlackImage.Image = "rbxassetid://8666601749"
    BlackImage.ImageColor3 = Color3.fromRGB(200, 200, 200)
    
    BlackTitle.Name = "BlackTitle"
    BlackTitle.Parent = WindowFrame
    BlackTitle.BackgroundColor3 = _G.WindowBackgroundColor
    BlackTitle.BackgroundTransparency = 1.000
    BlackTitle.Position = UDim2.new(0, 33, 0, 7)
    BlackTitle.Size = UDim2.new(0, 50, 0, 25)
    BlackTitle.Font = Enum.Font.GothamBold
    BlackTitle.Text = ""
    BlackTitle.TextColor3 = _G.TitleTextColor
    BlackTitle.TextSize = 15.000
    BlackTitle.TextXAlignment = Enum.TextXAlignment.Left
    
    Space.Name = "Space"
    Space.Parent = WindowFrame
    Space.BackgroundColor3 = _G.WindowBackgroundColor
    Space.BackgroundTransparency = 1.000
    Space.Position = UDim2.new(0, 102, 0, 7)
    Space.Size = UDim2.new(0, 10, 0, 25)
    Space.Font = Enum.Font.GothamBold
    Space.Text = "|"
    Space.TextColor3 = Color3.fromRGB(150, 0, 0)
    Space.TextSize = 18.000
    
    GameTitle.Name = gametitle or "GameTitle"
    GameTitle.Parent = WindowFrame
    GameTitle.BackgroundColor3 = _G.WindowBackgroundColor
    GameTitle.BackgroundTransparency = 1.000
    GameTitle.Position = UDim2.new(0, 114, 0, 7)
    GameTitle.Size = UDim2.new(0, 100, 0, 25)
    GameTitle.Font = Enum.Font.GothamSemibold
    GameTitle.Text = gametitle
    GameTitle.TextColor3 = _G.TitleTextColor
    GameTitle.TextSize = 15.000
    GameTitle.TextXAlignment = Enum.TextXAlignment.Left
    
    MinButton.Name = "MinButton"
    MinButton.Parent = WindowFrame
    MinButton.BackgroundColor3 = _G.WindowBackgroundColor
    MinButton.BackgroundTransparency = 1.000
    MinButton.AutoButtonColor = false
    MinButton.Position = UDim2.new(0, 535, 0, 7)
    MinButton.Size = UDim2.new(0, 25, 0, 25)
    MinButton.Font = Enum.Font.GothamSemibold
    MinButton.TextColor3 = Color3.fromRGB(150, 150, 150)
    MinButton.Text = "-"
    MinButton.TextSize = 35.000
    
    CloseButton.Name = "CloseButton"
    CloseButton.Parent = WindowFrame
    CloseButton.BackgroundColor3 = _G.WindowBackgroundColor
    CloseButton.BackgroundTransparency = 1.000
    CloseButton.AutoButtonColor = false
    CloseButton.Position = UDim2.new(0, 560, 0, 7)
    CloseButton.Size = UDim2.new(0, 25, 0, 25)
    CloseButton.Font = Enum.Font.GothamSemibold
    CloseButton.TextColor3 = Color3.fromRGB(150, 0, 0)
    CloseButton.Text = "×"
    CloseButton.TextSize = 30.000
    
    CloseImage.Name = "CloseImage"
    CloseImage.Parent = Points
    CloseImage.AnchorPoint = Vector2.new(0.5, 0.5)
    CloseImage.AutoButtonColor = false
    CloseImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    CloseImage.BackgroundTransparency = 1.000
    CloseImage.Size = UDim2.new(0, 0, 0, 0)
    CloseImage.Position = UDim2.new(0, -370, 0, 170)
    CloseImage.Image = "rbxassetid://8666601749"
    CloseImage.ImageColor3 = Color3.fromRGB(150, 30, 30)
    
    ServerTime.Name = "ServerTime"
    ServerTime.Parent = WindowFrame
    ServerTime.BackgroundColor3 = _G.WindowBackgroundColor
    ServerTime.AutoButtonColor = false
    ServerTime.BackgroundTransparency = 1.000
    ServerTime.Position = UDim2.new(0, 260, 0, 16)
    ServerTime.Size = UDim2.new(0, 225, 0, 25)
    ServerTime.Font = Enum.Font.Code
    ServerTime.Text = ""
    ServerTime.TextSize = 15.000
    ServerTime.TextColor3 = Color3.fromRGB(200, 200, 200)
    ServerTime.TextXAlignment = Enum.TextXAlignment.Center
    
    ServerDate.Name = "ServerDate"
    ServerDate.Parent = WindowFrame
    ServerDate.BackgroundColor3 = _G.WindowBackgroundColor
    ServerDate.AutoButtonColor = false
    ServerDate.BackgroundTransparency = 1.000
    ServerDate.Position = UDim2.new(0, 260, 0, 0)
    ServerDate.Size = UDim2.new(0, 225, 0, 25)
    ServerDate.Font = Enum.Font.Code
    ServerDate.Text = ""
    ServerDate.TextSize = 15.000
    ServerDate.TextColor3 = Color3.fromRGB(200, 200, 200)
    ServerDate.TextXAlignment = Enum.TextXAlignment.Center
    
    PlaLab.Name = "PlaLab"
    PlaLab.Parent = WindowFrame
    PlaLab.BackgroundColor3 = _G.TabWindowColor
    PlaLab.BackgroundTransparency = 1.000
    PlaLab.Position = UDim2.new(0, 3, 0, 353)
    PlaLab.Size = UDim2.new(0, 150, 0, 25)
    PlaLab.Font = Enum.Font.Code
    PlaLab.Text = "User : " .. NameID
    PlaLab.TextSize = 13.000
    PlaLab.TextColor3 = Color3.fromRGB(255, 0, 0)
    PlaLab.TextXAlignment = Enum.TextXAlignment.Center
    PlaLab.TextScaled = true
    PlaLab.TextWrapped = true
    
    -- Tab & Container --
    local LineWindow = Instance.new("Frame")
    local TabWindow = Instance.new("ScrollingFrame")
    local TabWindowList = Instance.new("UIListLayout")
    local ContainerHold = Instance.new("Frame")
    local ContainerItem = Instance.new("Folder")
    local ContainerHoldCorner = Instance.new("UICorner")
    
    LineWindow.Name = "LineWindow"
    LineWindow.Parent = WindowFrame
    LineWindow.BackgroundColor3 = _G.TitleTextColor
    LineWindow.BorderSizePixel = 0
    LineWindow.Position = UDim2.new(0, 2, 0, 40)
    LineWindow.Size = UDim2.new(0, 583, 0, 2)
    
    TabWindow.Name = "TabWindow"
    TabWindow.Parent = WindowFrame
    TabWindow.BackgroundColor3 = _G.TabWindowColor
    TabWindow.BackgroundTransparency = 1.000
    TabWindow.BorderSizePixel = 0
    TabWindow.Position = UDim2.new(0, 3, 0, 50)
    TabWindow.Size = UDim2.new(0, 150, 0, 0)
    TabWindow.ScrollBarThickness = 0
    TabWindow.ClipsDescendants = true
    
    TabWindow:TweenSize(UDim2.new(0, 150, 0, 300), Enum.EasingDirection.InOut, Enum.EasingStyle.Linear, 10.0, true)
    
    TabWindowList.Name = "TabWindowList"
    TabWindowList.Parent = TabWindow
    TabWindowList.FillDirection = Enum.FillDirection.Vertical
    TabWindowList.SortOrder = Enum.SortOrder.LayoutOrder
    TabWindowList.Padding = UDim.new(0, 3)
    TabWindowList.VerticalAlignment = Enum.VerticalAlignment.Top
    
    ContainerHold.Name = "ContainerHold"
    ContainerHold.Parent = WindowFrame
    ContainerHold.BackgroundColor3 = _G.ContainerColor
    ContainerHold.BorderSizePixel = 0
    ContainerHold.Position = UDim2.new(0, 160, 0, 50)
    ContainerHold.Size = UDim2.new(0, 425, 0, 325)
    
    ContainerHoldCorner.Name = "ContainerHoldCorner"
    ContainerHoldCorner.Parent = ContainerHold
    ContainerHoldCorner.CornerRadius = UDim.new(0, 5)
    
    ContainerItem.Name = "ContainerItem"
    ContainerItem.Parent = ContainerHold
    
    TabWindow.CanvasSize = UDim2.new(0, 0, 0, 0 + TabWindowList.AbsoluteContentSize.Y)
    TabWindowList:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
        TabWindow.CanvasSize = UDim2.new(0, 0, 0, 0 + TabWindowList.AbsoluteContentSize.Y)
    end)
    
    -- Window Script --
    local gui = Shadow
    local gui2 = CloseImage
    local dragging
    local dragInput
    local dragStart
    local startPos
    local function update(input)
        local delta = input.Position - dragStart
        gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
        gui2.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end
    gui.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = gui.Position
            
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)
    gui2.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = gui2.Position
            
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)
    gui.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end)
    gui2.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end)
    UserInputService.InputChanged:Connect(function(input)
        if input == dragInput and dragging then
            update(input)
        end
    end)
    
    -- Script --
    local opentog = false
    local closetog = false
    CloseImage.MouseEnter:Connect(function()
        game.TweenService:Create(CloseImage, TweenInfo.new(.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {ImageTransparency = 0.8}):Play()
    end)
    CloseImage.MouseLeave:Connect(function()
        game.TweenService:Create(CloseImage, TweenInfo.new(.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {ImageTransparency = 0}):Play()
    end)
    CloseImage.MouseButton1Click:Connect(function()
            game.TweenService:Create(CloseImage, TweenInfo.new(0.05, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Size = UDim2.new(0, 0, 0, 0)}):Play()
            game.TweenService:Create(CloseImage, TweenInfo.new(0.05, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Position = UDim2.new(0, -370, 0, 170)}):Play()
            game.TweenService:Create(Shadow, TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Size = UDim2.new(0, 650, 0, 450)}):Play()
            game.TweenService:Create(Shadow, TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Position = UDim2.new(0, 295, 0, 170)}):Play()
            WindowFrame.Size = UDim2.new(0, 589, 0, 378)
            WindowFrame.Position = UDim2.new(0, 32, 0, 37)
            MinButton.Text = "-"
            MinButton.TextSize = 35.000
            wait(0.6)
            Shadow.ImageTransparency = 0
    end)
    CloseButton.MouseButton1Click:Connect(function()
        Shadow.ImageTransparency = 1.000
            game.TweenService:Create(Shadow, TweenInfo.new(0.12, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Size = UDim2.new(0, 0, 0, 0)}):Play()
            game.TweenService:Create(CloseImage, TweenInfo.new(0.03, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Size = UDim2.new(0, 70, 0, 70)}):Play()
            game.TweenService:Create(CloseImage, TweenInfo.new(0.03, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Position = UDim2.new(0, -95, 0, 170)}):Play()
    end)
    MinButton.MouseButton1Click:Connect(function()
        if mintoggle == true then
            MinButton.Text = "-"
            MinButton.TextSize = 35.000
            game.TweenService:Create(WindowFrame, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Size = UDim2.new(0, 589, 0, 378)}):Play()
            game.TweenService:Create(WindowFrame, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Position = UDim2.new(0, 32, 0, 37)}):Play()
            game.TweenService:Create(Shadow, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Size = UDim2.new(0, 650, 0, 450)}):Play()
            else
                MinButton.Text = "+"
                MinButton.TextSize = 27.000
                game.TweenService:Create(WindowFrame, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Size = UDim2.new(0, 589, 0, 45)}):Play()
                game.TweenService:Create(WindowFrame, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Position = UDim2.new(0, 30, 0, 3)}):Play()
                game.TweenService:Create(Shadow, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Size = UDim2.new(0, 648, 0, 51)}):Play()
        end
            mintoggle = not mintoggle
    end)
    
    function osfunc:Refresh(textadd)
        ServerTime.Text = textadd
    end
    function osfunc2:Refresh(textadd2)
        ServerDate.Text = textadd2
    end
    function titlefunc:Refresh(text)
        BlackTitle.Text = text
    end
    local function UpdateOS()
        local date = os.date("*t")
        local hour = (date.hour) % 24
        local ampm = hour < 12 and "AM" or "PM"
        local timezone = string.format("%02i:%02i:%02i %s", ((hour -1) % 12) + 1, date.min, date.sec, ampm)
        local datetime = string.format("%02d/%02d/%04d", date.day, date.month, date.year)
        osfunc:Refresh("Time : " .. timezone)
        osfunc2:Refresh("Date : " .. datetime .. " [UTC]")
    end
    spawn(function()
        while true do
            UpdateOS()
            game:GetService("RunService").RenderStepped:Wait()
        end
    end)
    spawn(function()
        while task.wait() do
            titlefunc:Refresh("") wait(.2) titlefunc:Refresh("B") wait(.2) titlefunc:Refresh("Bl") wait(.2) titlefunc:Refresh("Bla") wait(.2) titlefunc:Refresh("Blac") wait(.2) titlefunc:Refresh("Black") wait(.2) titlefunc:Refresh("BlackT") wait(.2) titlefunc:Refresh("BlackTr") wait(.2) titlefunc:Refresh("BlackTra") wait(.2) titlefunc:Refresh("BlackTrap") wait(.9) titlefunc:Refresh("BlackTra") wait(.2) titlefunc:Refresh("BlackTr") wait(.2) titlefunc:Refresh("BlackT") wait(.2) titlefunc:Refresh("Black") wait(.2) titlefunc:Refresh("Blac") wait(.2) titlefunc:Refresh("Bla") wait(.2) titlefunc:Refresh("Bl") wait(.2) titlefunc:Refresh("B") wait(.2) titlefunc:Refresh("") wait(.2) wait(.3)
        end
    end)
    -- End Windows --
    
    -- Notification --
    function Blacklib:Notification(titledesc, textdesc)
        local NotificationHold = Instance.new("TextButton")
        local NotificationFrame = Instance.new("Frame")
        local OkayBtn = Instance.new("TextButton")
        local OkayBtnCorner = Instance.new("UICorner")
        local OkayBtnTitle = Instance.new("TextLabel")
        local NotificationTitle = Instance.new("TextLabel")
        local NotificationDesc = Instance.new("TextLabel")
        local NotifCorner = Instance.new("UICorner")
        local NotifHolderUIStroke = Instance.new("UIStroke")
        local Line = Instance.new("Frame")
        
        -- Prop --
        NotificationHold.Name = "NotificationHold"
        NotificationHold.Parent = WindowFrame
        NotificationHold.BackgroundColor3 = _G.WindowBackgroundColor
        NotificationHold.BackgroundTransparency = 0.4
        NotificationHold.BorderSizePixel = 0
        NotificationHold.Size = UDim2.new(0, 589, 0, 378)
        NotificationHold.AutoButtonColor = false
        NotificationHold.Font = Enum.Font.SourceSans
        NotificationHold.Text = ""
        NotificationHold.TextColor3 = _G.SectionTextColor
        NotificationHold.TextSize = 13.000
        
        TweenService:Create(NotificationHold, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundTransparency = 0.4}):Play()
        wait(0.4)
        
        NotificationFrame.Name = "NotificationFrame"
        NotificationFrame.Parent = NotificationHold
        NotificationFrame.AnchorPoint = Vector2.new(0.5, 0.5)
        NotificationFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
        NotificationFrame.BorderColor3 = _G.SectionColor
        NotificationFrame.BorderSizePixel = 0
        NotificationFrame.ClipsDescendants = true
        NotificationFrame.Position = UDim2.new(0, 295, 0, 190)
        NotificationFrame.Size = UDim2.new(0, 0, 0, 0)		
 
        NotificationFrame:TweenSize(UDim2.new(0, 400, 0, 250), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .6, true)
        
        NotifCorner.Name = "NotifCorner"
        NotifCorner.Parent = NotificationFrame
        NotifCorner.CornerRadius = UDim.new(0, 5)
        
        NotifHolderUIStroke.Name = "NotifHolderUIStroke"
        NotifHolderUIStroke.Parent = NotificationFrame
        NotifHolderUIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        NotifHolderUIStroke.Color = _G.SectionColor
        NotifHolderUIStroke.LineJoinMode = Enum.LineJoinMode.Round
        NotifHolderUIStroke.Thickness = 1
        NotifHolderUIStroke.Transparency = 0
        NotifHolderUIStroke.Enabled = true
        NotifHolderUIStroke.Archivable = true
        
        OkayBtn.Name = "OkayBtn"
        OkayBtn.Parent = NotificationFrame
        OkayBtn.BackgroundColor3 = Color3.fromRGB(190, 190, 190)
        OkayBtn.BorderSizePixel = 1
        OkayBtn.BorderColor3 = _G.SectionColor
        OkayBtn.Position = UDim2.new(0, 125, 0, 190)
        OkayBtn.Size = UDim2.new(0, 150, 0, 30)
        OkayBtn.AutoButtonColor = true
        OkayBtn.Font = Enum.Font.SourceSans
        OkayBtn.Text = ""
        OkayBtn.TextColor3 = _G.SectionTextColor
        OkayBtn.TextSize = 13.000
        
        OkayBtnCorner.CornerRadius = UDim.new(0, 5)
        OkayBtnCorner.Name = "OkayBtnCorner"
        OkayBtnCorner.Parent = OkayBtn
        
        OkayBtnTitle.Name = "OkayBtnTitle"
        OkayBtnTitle.Parent = OkayBtn
        OkayBtnTitle.BackgroundColor3 = _G.SectionColor
        OkayBtnTitle.BackgroundTransparency = 1.000
        OkayBtnTitle.Size = UDim2.new(0, 150, 0, 30)
        OkayBtnTitle.Text = "OK"
        OkayBtnTitle.Font = Enum.Font.ArialBold
        OkayBtnTitle.TextColor3 = Color3.fromRGB(0, 0, 0)
        OkayBtnTitle.TextSize = 22.000
        
        NotificationTitle.Name = "NotificationTitle"
        NotificationTitle.Parent = NotificationFrame
        NotificationTitle.BackgroundColor3 = _G.SectionColor
        NotificationTitle.BackgroundTransparency = 1.000
        NotificationTitle.Position = UDim2.new(0, 0, 0, 10)
        NotificationTitle.Size = UDim2.new(0, 400, 0, 25)
        NotificationTitle.ZIndex = 3
        NotificationTitle.Font = Enum.Font.Code
        NotificationTitle.Text = titledesc or "Notification"
        NotificationTitle.TextColor3 = Color3.fromRGB(255, 0, 0)
        NotificationTitle.TextSize = 22.000
        
        Line.Name = "Line"
        Line.Parent = NotificationFrame
        Line.BackgroundColor3 = _G.SectionColor
        Line.BorderSizePixel = 0
        Line.Position = UDim2.new(0, 10, 0, 40)
        Line.Size = UDim2.new(0, 380, 0, 1)
        
        NotificationDesc.Name = "NotificationDesc"
        NotificationDesc.Parent = NotificationFrame
        NotificationDesc.BackgroundColor3 = _G.SectionColor
        NotificationDesc.BackgroundTransparency = 1.000
        NotificationDesc.Position = UDim2.new(0, 10, 0, 70)
        NotificationDesc.Size = UDim2.new(0, 380, 0, 100)
        NotificationDesc.Font = Enum.Font.GothamSemibold
        NotificationDesc.Text = textdesc
        NotificationDesc.TextColor3 = _G.SectionTextColor
        NotificationDesc.TextSize = 16.000
        NotificationDesc.TextWrapped = true
        NotificationDesc.TextXAlignment = Enum.TextXAlignment.Center
        NotificationDesc.TextYAlignment = Enum.TextYAlignment.Top
        
        -- Notification Script--
        OkayBtn.MouseEnter:Connect(function()
            TweenService:Create(OkayBtn, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(30, 30, 30)}):Play()
        end)
 
        OkayBtn.MouseLeave:Connect(function()
            TweenService:Create(OkayBtn, TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(25, 25, 25)}):Play()
        end)
        
        OkayBtn.MouseButton1Click:Connect(function()
            NotificationFrame:TweenSize(UDim2.new(0, 0, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .6, true)
 
            wait(0.4)
 
            TweenService:Create(NotificationHold, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundTransparency = 1}):Play()
 
            wait(.3)
 
            NotificationHold:Destroy()
        end)
    end
    
    coroutine.wrap(function()
        while wait() do
        end
    end)()
    -- End Notification --
    
    -- Tabs --
    local Tabs = {}
    function Tabs:Tab(tabtitle, img)
        local TabFrame = Instance.new("TextButton")
        local TabCorner = Instance.new("UICorner")
        local TabTitle = Instance.new("TextLabel")
        local TabImage = Instance.new("ImageLabel")
        
        -- Prop --
        TabFrame.Name = tabtitle or "TabFrame"
        TabFrame.Parent = TabWindow
        TabFrame.BackgroundColor3 = _G.TabThemeColor
        TabFrame.BackgroundTransparency = 1.000
        TabFrame.BorderSizePixel = 0
        TabFrame.AutoButtonColor = false
        TabFrame.Size = UDim2.new(0, 150, 0, 30)
        TabFrame.Font = Enum.Font.GothamSemibold
        TabFrame.Text = ""
        TabFrame.TextColor3 = _G.TabTextColor
        TabFrame.TextSize = 15.000
        
        TabCorner.Name = tabtitle or "TabCorner"
        TabCorner.Parent = TabFrame
        TabCorner.CornerRadius = UDim.new(0, 10)
        
        TabImage.Name = tabtitle or "TabImage"
        TabImage.Parent = TabFrame
        TabImage.BackgroundColor3 = _G.TabWindowColor
        TabImage.BackgroundTransparency = 1.000
        TabImage.Position = UDim2.new(0, 3, 0, 4)
        TabImage.Size = UDim2.new(0, 20, 0, 20)
        TabImage.Image = img or "rbxassetid://8666601749"
        TabImage.ImageColor3 = _G.TabImageColor
        
        TabTitle.Name = tabtitle or "TabTitle"
        TabTitle.Parent = TabFrame
        TabTitle.BackgroundColor3 = _G.TabWindowColor
        TabTitle.BackgroundTransparency = 1.000
        TabTitle.BorderSizePixel = 0
        TabTitle.Position = UDim2.new(0, 30, 0, 2.5)
        TabTitle.Size = UDim2.new(0, 120, 0, 25)
        TabTitle.Font = Enum.Font.GothamSemibold
        TabTitle.Text = tabtitle or "Put Tab Title"
        TabTitle.TextColor3 = _G.TabTextColor
        TabTitle.TextSize = 15.000
        TabTitle.TextXAlignment = Enum.TextXAlignment.Left
        
        -- Container --
        local Container = Instance.new("ScrollingFrame")
        local ContainerLayout = Instance.new("UIListLayout")
        
        -- Prop --
        Container.Name = "Container"
        Container.Parent = ContainerItem
        Container.Active = true
        Container.AnchorPoint = Vector2.new(0, 0)
        Container.BackgroundColor3 = _G.ContainerColor
        Container.BackgroundTransparency = 1.000
        Container.Position = UDim2.new(0, 10, 0, 10)
        Container.Size = UDim2.new(0, 425, 0, 0)
        Container.ScrollBarThickness = 0
        Container.Visible = true
        
        ContainerLayout.Name = "ContainerLayout"
        ContainerLayout.Parent = Container
        ContainerLayout.SortOrder = Enum.SortOrder.LayoutOrder
        ContainerLayout.Padding = UDim.new(0, 10)
        
        local function UpdateSize()
            local cLt = ContainerLayout.AbsoluteContentSize

            game.TweenService:Create(Container, TweenInfo.new(.3, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
                CanvasSize = UDim2.new(0, cLt.X, 0, cLt.Y)
            }):Play()
        end
        UpdateSize()
        Container.ChildAdded:Connect(UpdateSize)
        Container.ChildRemoved:Connect(UpdateSize)
        
        -- function --
        TabFrame.MouseButton1Click:Connect(function()
            for i,v in next, TabWindow:GetChildren() do
                if v:IsA('TextButton') then
                    game.TweenService:Create(v, TweenInfo.new(.3, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {BackgroundTransparency = 1}):Play()
                    UpdateSize()
                end
            end
            game.TweenService:Create(TabFrame, TweenInfo.new(.3, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {BackgroundTransparency = 0.7}):Play()
            
            for i,v in next, ContainerItem:GetChildren() do
                v:TweenSize(UDim2.new(0, 425, 0, 0), Enum.EasingDirection.In, Enum.EasingStyle.Linear, .3, true)
                UpdateSize()
            end
            wait(0.1)
            Container:TweenSize(UDim2.new(0, 425, 0, 305), Enum.EasingDirection.In, Enum.EasingStyle.Linear, .3, true)
            UpdateSize()
            
        end)
        -- End Tabs Container --
        
        -- Section --
        local Section = {}
        function Section:NewSection(seclabel)
            local sectionFrame = Instance.new("Frame")
            local UICorner = Instance.new("UICorner")
            local sectionListLayout = Instance.new("UIListLayout")
            local sectionFrameHead = Instance.new("Frame")
            local UICorner_2 = Instance.new("UICorner")
            local sectionCircle = Instance.new("Frame")
            local UICorner_3 = Instance.new("UICorner")
            local TextLabel = Instance.new("TextLabel")
            local closeSection = Instance.new("TextButton")
            
            -- Prop --
            sectionFrame.Name = "sectionFrame"
            sectionFrame.Parent = Container
            sectionFrame.BackgroundColor3 = _G.WindowBackgroundColor
            sectionFrame.Position = UDim2.new(0, 0, 0, 0)
            sectionFrame.Size = UDim2.new(0, 405, 0, 36)
            sectionFrame.ClipsDescendants = true

            UICorner.Parent = sectionFrame
            UICorner.CornerRadius = UDim.new(0, 5)

            sectionListLayout.Parent = sectionFrame
            sectionListLayout.SortOrder = Enum.SortOrder.LayoutOrder
            sectionListLayout.Padding = UDim.new(0, 5)
            sectionListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center

            sectionFrameHead.Name = "sectionFrameHead"
            sectionFrameHead.Parent = sectionFrame
            sectionFrameHead.BackgroundColor3 = _G.WindowBackgroundColor
            sectionFrameHead.Position = UDim2.new(0, 0, 0, 0)
            sectionFrameHead.Size = UDim2.new(0, 405, 0, 36)

            UICorner_2.Parent = sectionFrameHead
            UICorner_2.CornerRadius = UDim.new(0, 5)

            sectionCircle.Name = "sectionCircle"
            sectionCircle.Parent = sectionFrameHead
            sectionCircle.BackgroundColor3 = _G.SectionColor
            sectionCircle.Position = UDim2.new(0, 10, 0, 15)
            sectionCircle.Size = UDim2.new(0, 7, 0, 7)

            UICorner_3.CornerRadius = UDim.new(0, 100000)
            UICorner_3.Parent = sectionCircle

            TextLabel.Parent = sectionFrameHead
            TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel.BackgroundTransparency = 1.000
            TextLabel.Position = UDim2.new(0, 25, 0, 6)
            TextLabel.Size = UDim2.new(0, 173, 0, 25)
            TextLabel.Font = Enum.Font.GothamBold
            TextLabel.Text = seclabel
            TextLabel.TextColor3 = _G.SectionTextColor
            TextLabel.TextSize = 14.000
            TextLabel.TextXAlignment = Enum.TextXAlignment.Left
            
            closeSection.Name = "closeSection"
            closeSection.Parent = sectionFrameHead
            closeSection.BackgroundTransparency = 1.000
            closeSection.Position = UDim2.new(0, 377, 0, 7)
            closeSection.Size = UDim2.new(0, 25, 0, 25)
            closeSection.AutoButtonColor = false
            closeSection.Font = Enum.Font.GothamSemibold
            closeSection.Text = "×"
            closeSection.TextSize = 25.000
            closeSection.Rotation = -135
            closeSection.TextColor3 = _G.SectionTextColor
            
            -- Section Script --
            closeSection.MouseButton1Click:Connect(function()
                if isDropped then
                    isDropped = false
                    sectionFrame:TweenSize(UDim2.new(0, 405, 0, 36), "In", "Linear", 0.10)
                    game.TweenService:Create(closeSection, TweenInfo.new(0.10, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {Rotation = -135}):Play()
                    game.TweenService:Create(closeSection, TweenInfo.new(0.10, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {TextColor3 = _G.SectionTextColor}):Play()
                    game.TweenService:Create(sectionCircle, TweenInfo.new(0.10, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {BackgroundColor3 = _G.SectionColor}):Play()
                    game.TweenService:Create(TextLabel, TweenInfo.new(0.10, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {TextColor3 = _G.SectionTextColor}):Play()
                    wait(0.10)
                    UpdateSize()
                else
                    isDropped = true
                    sectionFrame:TweenSize(UDim2.new(0, 405, 0, sectionListLayout.AbsoluteContentSize.Y + 8), "In", "Linear", 0.10)
                    game.TweenService:Create(closeSection, TweenInfo.new(0.10, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {Rotation = 0}):Play()
                    game.TweenService:Create(closeSection, TweenInfo.new(0.10, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {TextColor3 = Color3.fromRGB(200, 12, 12)}):Play()
                    game.TweenService:Create(sectionCircle, TweenInfo.new(0.10, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {BackgroundColor3 = Color3.fromRGB(200, 12, 12)}):Play()
                    game.TweenService:Create(TextLabel, TweenInfo.new(0.10, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {TextColor3 = Color3.fromRGB(200, 12, 12)}):Play()
                    wait(0.10)
                    UpdateSize()
                end
            end)
            -- End Section --
        
            -- Button --
            local ItemHand = {}
            function ItemHand:Button(buttontitle, callback)
                local ButtonFrame = Instance.new("Frame")
                local Button = Instance.new("TextButton")
                local UICorner = Instance.new("UICorner")
                local UIListLayout = Instance.new("UIListLayout")
                
                -- Prop --
                ButtonFrame.Name = buttontitle or "ButtonFrame"
                ButtonFrame.Parent = sectionFrame
                ButtonFrame.BackgroundColor3 = _G.SectionColor
                ButtonFrame.BackgroundTransparency = 1.000
                ButtonFrame.BorderSizePixel = 0
                ButtonFrame.Size = UDim2.new(0, 405, 0, 25)
            
                Button.Name = "Button"
                Button.Parent = ButtonFrame
                Button.AutoButtonColor = false
                Button.BackgroundColor3 = Color3.fromRGB(180, 180, 180)
                Button.BorderSizePixel = 0
                Button.Position = UDim2.new(0, 50, 0, 2)
                Button.Size = UDim2.new(0, 305, 0, 25)
                Button.Font = Enum.Font.GothamSemibold
                Button.Text = buttontitle
                Button.TextColor3 = Color3.fromRGB(12, 12, 12)
                Button.TextSize = 13.000
                
                UICorner.CornerRadius = UDim.new(0, 5)
                UICorner.Parent = Button
                
                UIListLayout.Parent = ButtonFrame
                UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
                UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
                UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
                
                -- Button Script --
                local clickDebounce = false
                local callBackDebounce = false
                local mouseleft
                
                Button.MouseButton1Click:Connect(function()
                    if not callBackDebounce then
                        callBackDebounce = true	
                        callback()
                        wait(0.5)
                        callBackDebounce = false
                    end
                end)
                Button.MouseButton1Down:Connect(function()
                    if not clickDebounce then
                        clickDebounce = true
                        game.TweenService:Create(Button, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),{
                            Size = UDim2.new(0, 295,0, 23),
                            TextSize = 11
                        }):Play()
                        wait(0.5)
                        clickDebounce = false
                    end
                end)
                Button.MouseButton1Up:Connect(function()
                    if mouseleft then
                        game.TweenService:Create(Button, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),{
                            Size = UDim2.new(0, 305, 0, 25),
                            TextSize = 13
                        }):Play()
                    else
                        game.TweenService:Create(Button, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),{
                            Size = UDim2.new(0, 305, 0, 25),
                            TextSize = 13
                        }):Play()
                    end
                end)
                Button.MouseEnter:Connect(function()
                    if callBackDebounce then
                        mouseleft = false
                        game.TweenService:Create(Button, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),{
                            BackgroundColor3 = Color3.fromRGB(120, 120, 120)
                        }):Play()
                    else
                        mouseleft = false
                        game.TweenService:Create(Button, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),{
                            BackgroundColor3 = Color3.fromRGB(140, 140, 140)
                        }):Play()
                    end
                end)
                Button.MouseLeave:Connect(function()
                    if callBackDebounce then
                        mouseleft = true
                        game.TweenService:Create(Button, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),{
                            Size = UDim2.new(0, 305,0, 25),
                            TextSize = 13
                        }):Play()
                        game.TweenService:Create(Button, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),{
                            BackgroundColor3 = Color3.fromRGB(180, 180, 180)
                        }):Play()
                    else
                        mouseleft = true
                        game.TweenService:Create(Button, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),{
                            Size = UDim2.new(0, 305,0, 25),
                            TextSize = 13
                        }):Play()
                        game.TweenService:Create(Button, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),{
                            BackgroundColor3 = Color3.fromRGB(180, 180, 180)
                        }):Play()
                    end
                end)
            end
            -- End Button --
            
            -- Toggled --
            function ItemHand:Toggle(TogInfo, callback)
                local toggle = false
                local CheckFrame = Instance.new("Frame")
                local CheckFrame2 = Instance.new("Frame")
                local UIListLayout = Instance.new("UIListLayout")
                local UICorner = Instance.new("UICorner")
                local ImageLabel = Instance.new("ImageLabel")
                local Space = Instance.new("TextLabel")
                local Title = Instance.new("TextLabel")
                local ImageButton = Instance.new("ImageButton")
                
                -- Prop --
                CheckFrame.Name = TogInfo or "CheckFrame"
                CheckFrame.Parent = sectionFrame
                CheckFrame.BackgroundColor3 = _G.BackgroundItemColor
                CheckFrame.BackgroundTransparency = 1.000
                CheckFrame.BorderSizePixel = 0
                CheckFrame.Size = UDim2.new(0, 405, 0, 30)
            
                CheckFrame2.Name = "CheckFrame2"
                CheckFrame2.Parent = CheckFrame
                CheckFrame2.BackgroundColor3 = _G.BackgroundItemColor
                CheckFrame2.BorderSizePixel = 0
                CheckFrame2.Position = UDim2.new(0, 10, 0, 0)
                CheckFrame2.Size = UDim2.new(0, 385, 0, 30)
                
                UICorner.Parent = CheckFrame2
                UICorner.CornerRadius = UDim.new(0, 5)
                
                ImageLabel.Name = "ImageLabel"
                ImageLabel.Parent = CheckFrame2
                ImageLabel.BackgroundColor3 = _G.SectionColor
                ImageLabel.BackgroundTransparency = 1.000
                ImageLabel.BorderSizePixel = 0
                ImageLabel.Position = UDim2.new(0, 5, 0, 6)
                ImageLabel.Size = UDim2.new(0, 18, 0, 18)
                ImageLabel.Image = "rbxassetid://8825010231"
                ImageLabel.ImageColor3 = _G.SectionImageColor
                
                Space.Name = "Space"
                Space.Parent = CheckFrame2
                Space.BackgroundColor3 = _G.SectionColor
                Space.BackgroundTransparency = 1.000
                Space.Position = UDim2.new(0, 30, 0, 0)
                Space.Size = UDim2.new(0, 15, 0, 30)
                Space.Font = Enum.Font.GothamSemibold
                Space.Text = "|"
                Space.TextSize = 13.000
                Space.TextColor3 = _G.SectionTextColor
                Space.TextXAlignment = Enum.TextXAlignment.Center
            
                Title.Name = "Title"
                Title.Parent = CheckFrame2
                Title.BackgroundColor3 = _G.SectionColor
                Title.BackgroundTransparency = 1.000
                Title.Position = UDim2.new(0, 50, 0, 0)
                Title.Size = UDim2.new(0, 280, 0, 30)
                Title.Font = Enum.Font.GothamSemibold
                Title.Text = TogInfo or "checkBox Title"
                Title.TextColor3 = _G.SectionTextColor
                Title.TextSize = 13.000
                Title.TextXAlignment = Enum.TextXAlignment.Left
            
                ImageButton.Name = "ImageButton"
                ImageButton.Parent = CheckFrame2
                ImageButton.BackgroundColor3 = _G.WindowBackgroundColor
                ImageButton.BackgroundTransparency = 1.000
                ImageButton.Position = UDim2.new(0, 355, 0, 3)
                ImageButton.Size = UDim2.new(0, 25, 0, 25)
                ImageButton.ZIndex = 2
                ImageButton.Image = "rbxassetid://3926311105"
                ImageButton.ImageColor3 = _G.SectionColor
                ImageButton.ImageRectOffset = Vector2.new(940, 784)
                ImageButton.ImageRectSize = Vector2.new(48, 48)
                
                -- Toggle Script --
                ImageButton.MouseButton1Click:Connect(function()
                    if toggle then
                        game.TweenService:Create(ImageButton.Parent.Title, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {TextColor3 = _G.SectionTextColor}):Play()
                        ImageButton.ImageRectOffset = Vector2.new(940, 784)
                        game.TweenService:Create(ImageButton, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {ImageColor3 = _G.SectionColor}):Play()
                        game.TweenService:Create(Space, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {TextColor3 = _G.SectionTextColor}):Play()
                        game.TweenService:Create(ImageLabel, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {ImageColor3 = _G.SectionColor}):Play()
                        toggle = false
                        pcall(function()
                            callback(toggle)
                        end)
                    else
                        game.TweenService:Create(ImageButton.Parent.Title, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {TextColor3 = _G.SectionOn}):Play()
                        ImageButton.ImageRectOffset = Vector2.new(4, 836)
                        game.TweenService:Create(ImageButton, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {ImageColor3 = _G.SectionOn}):Play()
                        game.TweenService:Create(Space, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {TextColor3 = _G.SectionOn}):Play()
                        game.TweenService:Create(ImageLabel, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {ImageColor3 = _G.SectionOn}):Play()
                        toggle = true
                        pcall(function()
                            callback(toggle)
                        end)
                    end
                end)
            end
            -- End Toggle -
            
            -- Dropdown --
            function ItemHand:Dropdown(droptitle, list, callback)
                -- Local --
                local dropfunc = {}
                local list = list or {}
                local DropToggled = false
                local DropSizeFrame = Instance.new("Frame")
                local DropCover = Instance.new("Frame")
                local UICorner = Instance.new("UICorner")
                local ImageLabel = Instance.new("ImageLabel")
                local Space = Instance.new("TextLabel")
                local Title = Instance.new("TextLabel")
                local ImageButton = Instance.new("ImageButton")
                local DropStrokeList = Instance.new("UIStroke")
                local DropTextList = Instance.new("TextLabel")
                
                -- Prop --
                DropSizeFrame.Name = droptitle or "DropSizeFrame"
                DropSizeFrame.Parent = sectionFrame
                DropSizeFrame.BackgroundColor3 = _G.SectionColor
                DropSizeFrame.BackgroundTransparency = 1.000
                DropSizeFrame.Size = UDim2.new(0, 405, 0, 60)
                
                DropCover.Name = "DropCover"
                DropCover.Parent = DropSizeFrame
                DropCover.BackgroundColor3 = _G.BackgroundItemColor
                DropCover.BorderSizePixel = 0
                DropCover.Position = UDim2.new(0, 10, 0, 0)
                DropCover.Size = UDim2.new(0, 385, 0, 30)
                
                UICorner.Parent = DropCover
                UICorner.CornerRadius = UDim.new(0, 5)
                
                ImageLabel.Name = "ImageLabel"
                ImageLabel.Parent = DropCover
                ImageLabel.BackgroundColor3 = _G.SectionColor
                ImageLabel.BackgroundTransparency = 1.000
                ImageLabel.BorderSizePixel = 0
                ImageLabel.Position = UDim2.new(0, 5, 0, 6)
                ImageLabel.Size = UDim2.new(0, 18, 0, 18)
                ImageLabel.Image = "rbxassetid://8825005073"
                ImageLabel.ImageColor3 = _G.SectionImageColor
                
                Space.Name = "Space"
                Space.Parent = DropCover
                Space.BackgroundColor3 = _G.SectionColor
                Space.BackgroundTransparency = 1.000
                Space.Position = UDim2.new(0, 30, 0, 0)
                Space.Size = UDim2.new(0, 15, 0, 30)
                Space.Font = Enum.Font.GothamSemibold
                Space.Text = "|"
                Space.TextSize = 13.000
                Space.TextColor3 = _G.SectionTextColor
                Space.TextXAlignment = Enum.TextXAlignment.Center
            
                Title.Name = "Title"
                Title.Parent = DropCover
                Title.BackgroundColor3 = _G.SectionColor
                Title.BackgroundTransparency = 1.000
                Title.Position = UDim2.new(0, 50, 0, 0)
                Title.Size = UDim2.new(0, 280, 0, 30)
                Title.Font = Enum.Font.GothamSemibold
                Title.Text = droptitle or "drop Title"
                Title.TextColor3 = _G.SectionTextColor
                Title.TextSize = 13.000
                Title.TextXAlignment = Enum.TextXAlignment.Left
            
                ImageButton.Name = "ImageButton"
                ImageButton.Parent = DropCover
                ImageButton.BackgroundColor3 = _G.WindowBackgroundColor
                ImageButton.BackgroundTransparency = 1.000
                ImageButton.Position = UDim2.new(0, 355, 0, 6)
                ImageButton.Size = UDim2.new(0, 25, 0, 20)
                ImageButton.Image = "rbxassetid://8530745436"
                ImageButton.ImageColor3 = _G.SectionImageColor
                ImageButton.Rotation = 180
                
                DropTextList.Name = "DropTextList"
                DropTextList.Parent = DropSizeFrame
                DropTextList.BackgroundColor3 = _G.BackgroundItemColor
                DropTextList.BackgroundTransparency = 1.000
                DropTextList.Position = UDim2.new(0, 15, 0, 35)
                DropTextList.Size = UDim2.new(0, 375, 0, 20)
                DropTextList.Font = Enum.Font.GothamSemibold
                DropTextList.Text = v or "...."
                DropTextList.TextColor3 = _G.SectionTextColor
                DropTextList.TextSize = 13.000
                DropTextList.TextXAlignment = Enum.TextXAlignment.Center
                
                DropStrokeList.Name = "DropStrokeList"
                DropStrokeList.Parent = DropTextList
                DropStrokeList.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                DropStrokeList.Color = _G.SectionColor
                DropStrokeList.LineJoinMode = Enum.LineJoinMode.Round
                DropStrokeList.Thickness = 1
                DropStrokeList.Transparency = 0
                DropStrokeList.Enabled = true
                DropStrokeList.Archivable = true
                
                -- Adden Local --
                local DropItemScroll = Instance.new("ScrollingFrame")
                local DropItemLayout = Instance.new("UIListLayout")
                local DropItemStroke = Instance.new("UIStroke")
                
                -- Adden Prop --
                DropItemScroll.Name = "DropItemScroll"
                DropItemScroll.Parent = DropSizeFrame
                DropItemScroll.BackgroundColor3 = _G.SectionColor
                DropItemScroll.BackgroundTransparency = 1.000
                DropItemScroll.Position = UDim2.new(0, 15, 0, 60)
                DropItemScroll.Size = UDim2.new(0, 375, 0, 0)
                DropItemScroll.ScrollBarThickness = 0
                DropItemScroll.CanvasSize = UDim2.new(0, 0, 0, 0)
            
                DropItemLayout.Name = "DropItemLayout"
                DropItemLayout.Parent = DropItemScroll
                DropItemLayout.SortOrder = Enum.SortOrder.LayoutOrder
                DropItemLayout.Padding = UDim.new(0, 0)
                
                DropItemStroke.Name = "DropItemStroke"
                DropItemStroke.Parent = DropItemScroll
                DropItemStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                DropItemStroke.Color = _G.SectionColor
                DropItemStroke.LineJoinMode = Enum.LineJoinMode.Round
                DropItemStroke.Thickness = 0
                DropItemStroke.Transparency = 0
                DropItemStroke.Enabled = true
                DropItemStroke.Archivable = true
                
                -- Dropdown Script--
                local ItemCount = 0
                local FrameSize = 0
                
                ImageButton.MouseButton1Click:Connect(function()
                    if DropToggled then
                        DropToggled = false
                        DropSizeFrame:TweenSize(UDim2.new(0, 405, 0, 60), 'InOut', 'Linear', 0.08)
                        DropItemScroll:TweenSize(UDim2.new(0, 375, 0, 0), 'InOut', 'Linear', 0.08)
                        game.TweenService:Create(ImageLabel, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {ImageColor3 = _G.SectionImageColor}):Play()
                        game.TweenService:Create(ImageButton, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {ImageColor3 = _G.SectionImageColor}):Play()
                        game.TweenService:Create(Space, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {TextColor3 = _G.SectionTextColor}):Play()
                        game.TweenService:Create(Title, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {TextColor3 = _G.SectionTextColor}):Play()
                        game.TweenService:Create(DropItemStroke, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Thickness = 0}):Play()
                        game.TweenService:Create(ImageButton, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Rotation = 180}):Play()
                        wait(0.1)
                        sectionFrame:TweenSize(UDim2.new(0, 405, 0, sectionListLayout.AbsoluteContentSize.Y + 8), "InOut", "Linear", 0.1)
                        wait(0.1)
                        UpdateSize()
                        else
                            DropToggled = true
                            DropSizeFrame:TweenSize(UDim2.new(0, 405, 0, 65 + FrameSize), 'InOut', 'Linear', 0.08)
                            DropItemScroll:TweenSize(UDim2.new(0, 375, 0, FrameSize), 'InOut', 'Linear', 0.08)
                            game.TweenService:Create(ImageLabel, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {ImageColor3 = _G.SectionOn}):Play()
                            game.TweenService:Create(ImageButton, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {ImageColor3 = _G.SectionOn}):Play()
                            game.TweenService:Create(Space, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {TextColor3 = _G.SectionOn}):Play()
                            game.TweenService:Create(Title, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {TextColor3 = _G.SectionOn}):Play()
                            game.TweenService:Create(DropItemStroke, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Thickness = 1}):Play()
                            game.TweenService:Create(ImageButton, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Rotation = 0}):Play()
                            wait(0.1)
                            sectionFrame:TweenSize(UDim2.new(0, 405, 0, sectionListLayout.AbsoluteContentSize.Y + 8), "InOut", "Linear", 0.1)
                            wait(0.1)
                            UpdateSize()
                    end
                end)
                
                for i,v in next, list do
                    ItemCount = ItemCount + 1
                    if ItemCount == 1 then
                        FrameSize = 30
                    elseif ItemCount == 2 then
                        FrameSize = 60
                    elseif ItemCount == 3 then
                        FrameSize = 90
                    elseif ItemCount >= 3 then
                        FrameSize = 120
                    end
                    
                    local ItemList = Instance.new("TextButton")
                    
                    ItemList.Name = "ItemList"
                    ItemList.Parent = DropItemScroll
                    ItemList.BackgroundColor3 = _G.SectionOn
                    ItemList.BackgroundTransparency = 1.000
                    ItemList.Size = UDim2.new(0, 375, 0, 30)
                    ItemList.AutoButtonColor = false
                    ItemList.Font = Enum.Font.GothamSemibold
                    ItemList.TextColor3 = _G.SectionTextColor
                    ItemList.TextSize = 13.000
                    ItemList.Text = v or "...."
                    ItemList.TextXAlignment = Enum.TextXAlignment.Center
                        
                    ItemList.MouseEnter:Connect(function()
                        game.TweenService:Create(ItemList, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {TextColor3 = _G.SectionOn}):Play()
                        game.TweenService:Create(ItemList, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {BackgroundTransparency = 0.8}):Play()
                    end)
                    ItemList.MouseLeave:Connect(function()
                        game.TweenService:Create(ItemList, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {TextColor3 = _G.SectionTextColor}):Play()
                        game.TweenService:Create(ItemList, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {BackgroundTransparency = 1}):Play()
                    end)
                    
                    ItemList.MouseButton1Click:Connect(function()
                        DropTextList.Text = v or "...."
                        pcall(callback, v)
                        DropToggled = false
                        DropSizeFrame:TweenSize(UDim2.new(0, 405, 0, 60), 'InOut', 'Linear', 0.08)
                        DropItemScroll:TweenSize(UDim2.new(0, 375, 0, 0), 'InOut', 'Linear', 0.08)
                        game.TweenService:Create(ItemList, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {TextColor3 = _G.SectionTextColor}):Play()
                        game.TweenService:Create(ItemList, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {BackgroundTransparency = 1}):Play()
                        game.TweenService:Create(ImageLabel, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {ImageColor3 = _G.SectionImageColor}):Play()
                        game.TweenService:Create(ImageButton, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {ImageColor3 = _G.SectionImageColor}):Play()
                        game.TweenService:Create(Space, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {TextColor3 = _G.SectionTextColor}):Play()
                        game.TweenService:Create(Title, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {TextColor3 = _G.SectionTextColor}):Play()
                        game.TweenService:Create(DropItemStroke, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Thickness = 0}):Play()
                        game.TweenService:Create(ImageButton, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Rotation = 180}):Play()
                        wait(0.1)
                        sectionFrame:TweenSize(UDim2.new(0, 405, 0, sectionListLayout.AbsoluteContentSize.Y + 8), "InOut", "Linear", 0.1)
                        wait(0.1)
                        UpdateSize()
                    end)
                    DropItemScroll.CanvasSize = UDim2.new(0, 0, 0, DropItemLayout.AbsoluteContentSize.Y)
                end
                
                function dropfunc:Clear()
                    for _,v  in next, DropItemScroll:GetChildren() do
                        if v:IsA("TextButton") then
                            v:Destroy()
                            FrameSize = 0
                            ItemCount = 0
                        end
                    end
                    DropTextList.Text = "...."
                    DropToggled = false
                    DropSizeFrame:TweenSize(UDim2.new(0, 405, 0, 60), 'InOut', 'Linear', 0.08)
                    DropItemScroll:TweenSize(UDim2.new(0, 375, 0, 0), 'InOut', 'Linear', 0.08)
                    ImageButton.Rotation = 180
                    ImageButton.ImageColor3 = _G.SectionImageColor
                    ImageLabel.ImageColor3 = _G.SectionImageColor
                    DropItemStroke.Thickness = 0
                    Space.TextColor3 = _G.SectionTextColor
                    Title.TextColor3 = _G.SectionTextColor
                    wait(0.1)
                    sectionFrame:TweenSize(UDim2.new(0, 405, 0, sectionListLayout.AbsoluteContentSize.Y + 8), "InOut", "Linear", 0.1)
                    wait(0.1)
                    UpdateSize()
                end
                
                function dropfunc:Refresh(newlist)
                    newlist = newlist or {}
                    for i,v in next, newlist do
                        ItemCount = ItemCount + 1
                        if ItemCount == 1 then
                            FrameSize = 30
                        elseif ItemCount == 2 then
                            FrameSize = 60
                        elseif ItemCount == 3 then
                            FrameSize = 90
                        elseif ItemCount >= 3 then
                            FrameSize = 120
                        end
                    
                        local ItemList = Instance.new("TextButton")
                    
                        ItemList.Name = "ItemList"
                        ItemList.Parent = DropItemScroll
                        ItemList.BackgroundColor3 = _G.SectionOn
                        ItemList.BackgroundTransparency = 1.000
                        ItemList.Size = UDim2.new(0, 375, 0, 30)
                        ItemList.AutoButtonColor = false
                        ItemList.Font = Enum.Font.GothamSemibold
                        ItemList.TextColor3 = _G.SectionTextColor
                        ItemList.TextSize = 13.000
                        ItemList.Text = v or "...."
                        ItemList.TextXAlignment = Enum.TextXAlignment.Center
                        
                        ItemList.MouseEnter:Connect(function()
                        game.TweenService:Create(ItemList, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {TextColor3 = _G.SectionOn}):Play()
                        game.TweenService:Create(ItemList, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {BackgroundTransparency = 0.8}):Play()
                        end)
                        ItemList.MouseLeave:Connect(function()
                            game.TweenService:Create(ItemList, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {TextColor3 = _G.SectionTextColor}):Play()
                            game.TweenService:Create(ItemList, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {BackgroundTransparency = 1}):Play()
                        end)
                    
                        ItemList.MouseButton1Click:Connect(function()
                            DropTextList.Text = v or "...."
                            pcall(callback, v)
                            DropToggled = false
                            DropSizeFrame:TweenSize(UDim2.new(0, 405, 0, 60), 'InOut', 'Linear', 0.08)
                            DropItemScroll:TweenSize(UDim2.new(0, 375, 0, 0), 'InOut', 'Linear', 0.08)
                            game.TweenService:Create(ItemList, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {TextColor3 = _G.SectionTextColor}):Play()
                            game.TweenService:Create(ItemList, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {BackgroundTransparency = 1}):Play()
                            game.TweenService:Create(ImageLabel, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {ImageColor3 = _G.SectionImageColor}):Play()
                            game.TweenService:Create(ImageButton, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {ImageColor3 = _G.SectionImageColor}):Play()
                            game.TweenService:Create(Space, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {TextColor3 = _G.SectionTextColor}):Play()
                            game.TweenService:Create(Title, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {TextColor3 = _G.SectionTextColor}):Play()
                            game.TweenService:Create(DropItemStroke, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Thickness = 0}):Play()
                            game.TweenService:Create(ImageButton, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Rotation = 180}):Play()
                            wait(0.1)
                            sectionFrame:TweenSize(UDim2.new(0, 405, 0, sectionListLayout.AbsoluteContentSize.Y + 8), "InOut", "Linear", 0.1)
                            wait(0.1)
                            UpdateSize()
                        end)
                        DropItemScroll.CanvasSize = UDim2.new(0, 0, 0, DropItemLayout.AbsoluteContentSize.Y)
                    end
                end
                
                function dropfunc:Add(newadd)
                    newadd = newadd or {}
                    ItemCount = ItemCount + 1
                    if ItemCount == 1 then
                        FrameSize = 30
                    elseif ItemCount == 2 then
                        FrameSize = 60
                    elseif ItemCount == 3 then
                        FrameSize = 90
                    elseif ItemCount >= 3 then
                        FrameSize = 120
                    end
                    
                    local ItemList = Instance.new("TextButton")
                    
                    ItemList.Name = "ItemList"
                    ItemList.Parent = DropItemScroll
                    ItemList.BackgroundColor3 = _G.SectionOn
                    ItemList.BackgroundTransparency = 1.000
                    ItemList.Size = UDim2.new(0, 375, 0, 30)
                    ItemList.AutoButtonColor = false
                    ItemList.Font = Enum.Font.GothamSemibold
                    ItemList.TextColor3 = _G.SectionTextColor
                    ItemList.TextSize = 13.000
                    ItemList.Text = newadd or "...."
                    ItemList.TextXAlignment = Enum.TextXAlignment.Center
                        
                    ItemList.MouseEnter:Connect(function()
                        game.TweenService:Create(ItemList, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {TextColor3 = _G.SectionOn}):Play()
                        game.TweenService:Create(ItemList, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {BackgroundTransparency = 0.8}):Play()
                    end)
                    ItemList.MouseLeave:Connect(function()
                        game.TweenService:Create(ItemList, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {TextColor3 = _G.SectionTextColor}):Play()
                        game.TweenService:Create(ItemList, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {BackgroundTransparency = 1}):Play()
                    end)
                    
                    ItemList.MouseButton1Click:Connect(function()
                        DropTextList.Text = newadd or "...."
                        pcall(callback, newadd)
                        DropToggled = false
                        DropSizeFrame:TweenSize(UDim2.new(0, 405, 0, 60), 'InOut', 'Linear', 0.08)
                        DropItemScroll:TweenSize(UDim2.new(0, 375, 0, 0), 'InOut', 'Linear', 0.08)
                        game.TweenService:Create(ItemList, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {TextColor3 = _G.SectionTextColor}):Play()
                        game.TweenService:Create(ItemList, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {BackgroundTransparency = 1}):Play()
                        game.TweenService:Create(ImageLabel, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {ImageColor3 = _G.SectionImageColor}):Play()
                        game.TweenService:Create(ImageButton, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {ImageColor3 = _G.SectionImageColor}):Play()
                        game.TweenService:Create(Space, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {TextColor3 = _G.SectionTextColor}):Play()
                        game.TweenService:Create(Title, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {TextColor3 = _G.SectionTextColor}):Play()
                        game.TweenService:Create(DropItemStroke, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Thickness = 0}):Play()
                        game.TweenService:Create(ImageButton, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Rotation = 180}):Play()
                        wait(0.1)
                        sectionFrame:TweenSize(UDim2.new(0, 405, 0, sectionListLayout.AbsoluteContentSize.Y + 8), "InOut", "Linear", 0.1)
                        wait(0.1)
                        UpdateSize()
                    end)
                    DropItemScroll.CanvasSize = UDim2.new(0, 0, 0, DropItemLayout.AbsoluteContentSize.Y)
                end
                return dropfunc
            end
            -- End Dropdown --
            
            -- Slider --
            function ItemHand:Slider(slidertitle, min, max, start, callback)
                local sliderfunc = {}
                local SliderFrame = Instance.new("Frame")
                local SliderFrame_2 = Instance.new("Frame")
                local UICorner = Instance.new("UICorner")
                local ImageLabel = Instance.new("ImageLabel")
                local Space = Instance.new("TextLabel")
                local Title = Instance.new("TextLabel")
                local SliderInput = Instance.new("Frame")
                local SliderButton = Instance.new("Frame")
                local SliderCount = Instance.new("Frame")
                local SliderCorner = Instance.new("UICorner")
                local SliderCorner2 = Instance.new("UICorner")
                local BoxFrame = Instance.new("Frame")
                local SliderBox = Instance.new("TextBox")
                local SliderStroke = Instance.new("UIStroke")
                local Title_2 = Instance.new("TextButton")
                local UICorner_2 = Instance.new("UICorner")
                local UICorner_3 = Instance.new("UICorner")
                
                -- Prop --
                SliderFrame.Name = slidertitle or "SliderFrame"
                SliderFrame.Parent = sectionFrame
                SliderFrame.BackgroundColor3 = _G.BackgroundItemColor
                SliderFrame.BackgroundTransparency = 1.000
                SliderFrame.BorderSizePixel = 0
                SliderFrame.Size = UDim2.new(0, 405, 0, 55)
            
                SliderFrame_2.Name = "SliderFrame_2"
                SliderFrame_2.Parent = SliderFrame
                SliderFrame_2.BackgroundColor3 = _G.BackgroundItemColor
                SliderFrame_2.BorderSizePixel = 0
                SliderFrame_2.Position = UDim2.new(0, 10, 0, 0)
                SliderFrame_2.Size = UDim2.new(0, 385, 0, 55)
                
                UICorner.Parent = SliderFrame_2
                UICorner.CornerRadius = UDim.new(0, 5)
                
                ImageLabel.Name = "ImageLabel"
                ImageLabel.Parent = SliderFrame_2
                ImageLabel.BackgroundColor3 = _G.SectionColor
                ImageLabel.BackgroundTransparency = 1.000
                ImageLabel.BorderSizePixel = 0
                ImageLabel.Position = UDim2.new(0, 5, 0, 5)
                ImageLabel.Size = UDim2.new(0, 18, 0, 18)
                ImageLabel.Image = "rbxassetid://8825007757"
                ImageLabel.ImageColor3 = _G.SectionImageColor
                
                Space.Name = "Space"
                Space.Parent = SliderFrame_2
                Space.BackgroundColor3 = _G.SectionColor
                Space.BackgroundTransparency = 1.000
                Space.Position = UDim2.new(0, 30, 0, 0)
                Space.Size = UDim2.new(0, 15, 0, 30)
                Space.Font = Enum.Font.GothamSemibold
                Space.Text = "|"
                Space.TextSize = 13.000
                Space.TextColor3 = _G.SectionTextColor
                Space.TextXAlignment = Enum.TextXAlignment.Center
            
                Title.Name = "Title"
                Title.Parent = SliderFrame_2
                Title.BackgroundColor3 = _G.SectionColor
                Title.BackgroundTransparency = 1.000
                Title.Position = UDim2.new(0, 50, 0, 0)
                Title.Size = UDim2.new(0, 280, 0, 30)
                Title.Font = Enum.Font.GothamSemibold
                Title.Text = slidertitle or "Slider Title"
                Title.TextColor3 = _G.SectionTextColor
                Title.TextSize = 13.000
                Title.TextXAlignment = Enum.TextXAlignment.Left
                
                SliderInput.Name = "SliderInput"
                SliderInput.Parent = SliderFrame_2
                SliderInput.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
                SliderInput.BackgroundTransparency = 0.7
                SliderInput.BorderSizePixel = 0
                SliderInput.Position = UDim2.new(0, 10, 0, 37)
                SliderInput.Size = UDim2.new(0, 365, 0, 4)
                
                SliderCorner2.CornerRadius = UDim.new(0, 100000)
                SliderCorner2.Parent = SliderInput
                
                SliderButton.Name = "SliderButton"
                SliderButton.Parent = SliderInput
                SliderButton.BackgroundColor3 = _G.SectionColor
                SliderButton.BackgroundTransparency = 1.000
                SliderButton.BorderSizePixel = 0
                SliderButton.Position = UDim2.new(0, 0, 0, -7)
                SliderButton.Size = UDim2.new(0, 365, 0, 25)
            
                SliderCount.Name = "SliderCount"
                SliderCount.Parent = SliderButton
                SliderCount.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
                SliderCount.BackgroundTransparency = 0.3
                SliderCount.BorderSizePixel = 0
                SliderCount.Position = UDim2.new((start or 0) / max, 0, 0, 0)
                SliderCount.Size = UDim2.new(0, 18, 0, 18)
                
                Title_2.Name = "Title_2"
                Title_2.Parent = SliderButton
                Title_2.AnchorPoint = Vector2.new(0, 0)
                Title_2.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
                Title_2.AutoButtonColor = false
                Title_2.BackgroundTransparency = 1.000
                Title_2.Position = UDim2.new((start or 0) / max, 0, 0, 0)
                Title_2.Size = UDim2.new(0, 18, 0, 18)
                Title_2.Font = Enum.Font.GothamSemibold
                Title_2.Text = tostring(start and math.floor((start / max) * (max - min) + min) or 0)
                Title_2.TextColor3 = Color3.fromRGB(255, 255, 255)
                Title_2.TextSize = 8.000
                Title_2.TextXAlignment = Enum.TextXAlignment.Center
                
                UICorner_2.Parent = Title_2
                UICorner_2.CornerRadius = UDim.new(0, 100000)
                
                SliderCorner.CornerRadius = UDim.new(0, 100000)
                SliderCorner.Parent = SliderCount
                
                SliderStroke.Name = "SliderStroke"
                SliderStroke.Parent = BoxFrame
                SliderStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                SliderStroke.Color = Color3.fromRGB(200, 0, 0)
                SliderStroke.LineJoinMode = Enum.LineJoinMode.Round
                SliderStroke.Thickness = 1
                SliderStroke.Transparency = 0.5
                SliderStroke.Enabled = true
                SliderStroke.Archivable = true
                
                BoxFrame.Name = "BoxFrame"
                BoxFrame.Parent = SliderFrame_2
                BoxFrame.BackgroundColor3 = _G.BackgroundItemColor
                BoxFrame.BackgroundTransparency = 1.000
                BoxFrame.Size = UDim2.new(0, 50, 0, 15)
                BoxFrame.Position = UDim2.new(0, 327, 0, 6)
            
                SliderBox.Name = "SliderBox"
                SliderBox.Parent = BoxFrame
                SliderBox.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
                SliderBox.BackgroundTransparency = 1.000
                SliderBox.Position = UDim2.new(0, 0, 0, 1.65)
                SliderBox.Size = UDim2.new(0, 50, 0, 15)
                SliderBox.ClearTextOnFocus = false
                SliderBox.Font = Enum.Font.GothamSemibold
                SliderBox.Text = tostring(start and math.floor((start / max) * (max - min) + min) or 0)
                SliderBox.TextColor3 = Color3.fromRGB(200, 0, 0)
                SliderBox.TextSize = 10.000
                SliderBox.TextTransparency = 0.5
                SliderBox.TextXAlignment = Enum.TextXAlignment.Center
                SliderBox.TextEditable = true
                
                UICorner_3.Parent = BoxFrame
                UICorner_3.CornerRadius = UDim.new(0, 2)
                
                -- Slider Script --
                local dragging
                local SliderButtonStart
                local SliderButtonInput
                local slide = SliderButton
                
                local function slide(input)
                    local slidein = UDim2.new(math.clamp((input.Position.X - SliderButton.AbsolutePosition.X) / SliderButton.AbsoluteSize.X, 0, 1), 0, 0, 0)
                    SliderCount:TweenPosition(slidein, Enum.EasingDirection.InOut, Enum.EasingStyle.Linear, 0.08, true)
                    Title_2:TweenPosition(slidein, Enum.EasingDirection.InOut, Enum.EasingStyle.Linear, 0.12, true)
                    local Value = math.floor(((slidein.X.Scale * max) / max) * (max - min) + min)
                    SliderBox.Text = tostring(Value)
                    Title_2.Text = tostring(Value)
                    pcall(callback, Value, slidein)
                end
            
                SliderButton.InputBegan:Connect(function(input)
                    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                        dragging = true
                        SliderButtonInput = input
                        SliderButtonStart = input.Position.X
                        slidein = SliderButton.AbsolutePosition.X
                        game.TweenService:Create(SliderCount, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {BackgroundTransparency = 0, Size = UDim2.new(0, 14, 0, 14)}):Play()
                        game.TweenService:Create(Title_2, TweenInfo.new(0.12, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {AnchorPoint = Vector2.new(0.22, 0.8), TextSize = 13.000, BackgroundTransparency = 0, Size = UDim2.new(0, 25, 0, 25)}):Play()
                        game.TweenService:Create(SliderBox, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {TextTransparency = 0}):Play()
                        game.TweenService:Create(SliderInput, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {BackgroundTransparency = 0.5}):Play()
                        game.TweenService:Create(SliderStroke, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Transparency = 0}):Play()
                        game.TweenService:Create(ImageLabel, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {ImageColor3 = _G.SectionOn}):Play()
                        game.TweenService:Create(Space, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {TextColor3 = _G.SectionOn}):Play()
                        game.TweenService:Create(Title, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {TextColor3 = _G.SectionOn}):Play()
                    end
                    input.Changed:Connect(function(input)
                        if input.UserInputType == Enum.UserInputState.End then
                        dragging = false
                        
                        end
                    end)
                end)
                SliderButton.InputEnded:Connect(function(input)
                    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
                        dragging = false
                        SliderButtonInput = input
                        game.TweenService:Create(SliderCount, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {BackgroundTransparency = 0.3, Size = UDim2.new(0, 18, 0, 18)}):Play()
                        game.TweenService:Create(Title_2, TweenInfo.new(0.12, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {AnchorPoint = Vector2.new(0, 0), TextSize = 8.000, BackgroundTransparency = 1.000, Size = UDim2.new(0, 18, 0, 18)}):Play()
                        game.TweenService:Create(SliderBox, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {TextTransparency = 0.5}):Play()
                        game.TweenService:Create(SliderInput, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {BackgroundTransparency = 0.7}):Play()
                        game.TweenService:Create(SliderStroke, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Transparency = 0.5}):Play()
                        game.TweenService:Create(ImageLabel, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {ImageColor3 = _G.SectionImageColor}):Play()
                        game.TweenService:Create(Space, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {TextColor3 = _G.SectionTextColor}):Play()
                        game.TweenService:Create(Title, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {TextColor3 = _G.SectionTextColor}):Play()
                    end
                end)
                UserInputService.InputChanged:Connect(function(input)
                    if input == SliderButtonInput and dragging then
                        slide(input)
                    end
                end)
                
                function set(property)
                    if property == "Text" then
                        if tonumber(SliderBox.Text) then 
                            if tonumber(SliderBox.Text) <= max then
                                Value = SliderBox.Text
                                Title_2.Text = SliderBox.Text
                                SliderCount:TweenPosition(UDim2.new(((tonumber(SliderBox.Text) or min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.08, true)
                                Title_2:TweenPosition(UDim2.new(((tonumber(SliderBox.Text) or min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.12, true)
                                pcall(function()
                                    callback(Value)
                                end)
                            end
                            if tonumber(SliderBox.Text) > max then
                                SliderBox.Text = max
                                Title_2.Text = max
                                Value = max
                                SliderCount:TweenPosition(UDim2.new(((max or min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.08, true)
                                Title_2:TweenPosition(UDim2.new(((max or min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.12, true)
                                pcall(function()
                                    callback(Value)
                                end)
                            end
                            if tonumber(SliderBox.Text) >= min then
                                Value = SliderBox.Text
                                Title_2.Text = SliderBox.Text
                                SliderCount:TweenPosition(UDim2.new(((tonumber(SliderBox.Text) or min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.08, true)
                                Title_2:TweenPosition(UDim2.new(((tonumber(SliderBox.Text) or min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.12, true)
                                pcall(function()
                                    callback(Value)
                                end)
                            end
                            if tonumber(SliderBox.Text) < min then
                                Value = min
                                Title_2 = min
                                SliderCount.Position = UDim2.new(((min or min) - min) / (max - min), 0, 0, 0)
                                Title_2.Position = UDim2.new(((min or min) - min) / (max - min), 0, 0, 0)
                                pcall(function()
                                    callback(Value)
                                end)
                            end
                        else
                            SliderBox.Text = "" or Value
                            Title_2.Text = Value
                        end
                    end
                end
                
                SliderBox.Focused:Connect(function()
                    SliderBox.Changed:Connect(set)
                end)
                
                SliderBox.FocusLost:Connect(function(enterP)
                    if not enterP then
                        if SliderBox.Text == "" then
                            SliderBox.Text = min
                            Title_2.Text = min
                            Value = min
                            SliderCount:TweenPosition(UDim2.new(((min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.08, true)
                            Title_2:TweenPosition(UDim2.new(((min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.12, true)
                            pcall(function()
                                callback(Value)
                            end)
                        end
                        if tonumber(SliderBox.Text) > tonumber(max) then
                            Value = max
                            SliderBox.Text = max
                            Title_2.Text = max
                            SliderCount:TweenPosition(UDim2.new(((max or min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.08, true)
                            Title_2:TweenPosition(UDim2.new(((max or min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.12, true)
                            pcall(function()
                                callback(Value)
                            end)
                        else
                            Value = tonumber(SliderBox.Text)
                        end
                        if tonumber(SliderBox.Text) < min then
                            SliderBox.Text = min
                            Title_2.Text = min
                            Value = min
                            SliderCount:TweenPosition(UDim2.new(((min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.08, true)
                            Title_2:TweenPosition(UDim2.new(((min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.12, true)
                            pcall(function()
                                callback(Value)
                            end)
                        else
                            Value = tonumber(SliderBox.Text)
                        end
                    end
                    if tonumber(SliderBox.Text) > max then
                        SliderBox.Text = max
                        Title_2.Text = max
                        Value = max
                        SliderCount:TweenPosition(UDim2.new(((max or min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.08, true)
                        Title_2:TweenPosition(UDim2.new(((max or min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.12, true)
                        pcall(function()
                            callback(Value)
                        end)
                    else
                        Value = tonumber(SliderBox.Text)
                    end
                    if tonumber(SliderBox.Text) < min then
                        SliderBox.Text = min
                        Title_2.Text = min
                        Value = min
                        SliderCount.Position = UDim2.new(((min) - min) / (max - min), 0, 0, 0)
                        Title_2.Position = UDim2.new(((min) - min) / (max - min), 0, 0, 0)
                        pcall(function()
                            callback(Value)
                        end)
                    else
                        Value = tonumber(SliderBox.Text)
                    end
                    if SliderBox.Text == "" then
                        SliderBox.Text = min
                        Title_2.Text = min
                        Value = min
                        SliderCount:TweenPosition(UDim2.new(((min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.08, true)
                        Title_2:TweenPosition(UDim2.new(((min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.12, true)
                        pcall(function()
                            callback(Value)
                        end)
                    end
                end)
                return sliderfunc
            end
            -- End Slider --
            
            -- Text Box --
            function ItemHand:TextBox(boxtitle, textbox, callback)
                textbox = textbox or "Type Here"
                callback = callback or function() end
                local BoxFrame = Instance.new("Frame")
                local BoxCover = Instance.new("Frame")
                local UICorner = Instance.new("UICorner")
                local ImageLabel = Instance.new("ImageLabel")
                local Space = Instance.new("TextLabel")
                local Title = Instance.new("TextLabel")
                local TextBox = Instance.new("TextBox")
                local UICorner_2 = Instance.new("UICorner")
                local UIStroke = Instance.new("UIStroke")
                
                -- Prop --
                BoxFrame.Name = boxtitle or "BoxFrame"
                BoxFrame.Parent = sectionFrame
                BoxFrame.BackgroundColor3 = _G.BackgroundItemColor
                BoxFrame.BackgroundTransparency = 1.000
                BoxFrame.BorderSizePixel = 0
                BoxFrame.Size = UDim2.new(0, 405, 0, 40)
            
                BoxCover.Name = "BoxCover"
                BoxCover.Parent = BoxFrame
                BoxCover.BackgroundColor3 = _G.BackgroundItemColor
                BoxCover.BorderSizePixel = 0
                BoxCover.Position = UDim2.new(0, 10, 0, 0)
                BoxCover.Size = UDim2.new(0, 385, 0, 40)
                
                UICorner.Parent = BoxCover
                UICorner.CornerRadius = UDim.new(0, 5)
                
                ImageLabel.Name = "ImageLabel"
                ImageLabel.Parent = BoxCover
                ImageLabel.BackgroundColor3 = _G.SectionColor
                ImageLabel.BackgroundTransparency = 1.000
                ImageLabel.BorderSizePixel = 0
                ImageLabel.Position = UDim2.new(0, 5, 0, 12)
                ImageLabel.Size = UDim2.new(0, 18, 0, 18)
                ImageLabel.Image = "rbxassetid://8825051254"
                ImageLabel.ImageColor3 = _G.SectionImageColor
                
                Space.Name = "Space"
                Space.Parent = BoxCover
                Space.BackgroundColor3 = _G.SectionColor
                Space.BackgroundTransparency = 1.000
                Space.Position = UDim2.new(0, 30, 0, 0)
                Space.Size = UDim2.new(0, 15, 0, 40)
                Space.Font = Enum.Font.GothamSemibold
                Space.Text = "|"
                Space.TextSize = 13.000
                Space.TextColor3 = _G.SectionTextColor
                Space.TextXAlignment = Enum.TextXAlignment.Center
            
                Title.Name = "Title"
                Title.Parent = BoxCover
                Title.BackgroundColor3 = _G.SectionColor
                Title.BackgroundTransparency = 1.000
                Title.Position = UDim2.new(0, 50, 0, 0)
                Title.Size = UDim2.new(0, 280, 0, 40)
                Title.Font = Enum.Font.GothamSemibold
                Title.Text = boxtitle or "box Title"
                Title.TextColor3 = _G.SectionTextColor
                Title.TextSize = 13.000
                Title.TextXAlignment = Enum.TextXAlignment.Left
                
                TextBox.Name = "TextBox"
                TextBox.Parent = BoxCover
                TextBox.BackgroundColor3 = Color3.fromRGB(190, 190, 180)
                TextBox.BackgroundTransparency = 0
                TextBox.Position = UDim2.new(0, 297, 0, 10)
                TextBox.Size = UDim2.new(0, 80, 0, 20)
                TextBox.Font = Enum.Font.Code
                TextBox.PlaceholderText = textbox or "Type Here"
                TextBox.Text = ""
                TextBox.TextColor3 = Color3.fromRGB(12, 12, 12)
                TextBox.TextWrapped = true
                TextBox.TextScaled = false
                TextBox.TextTransparency = 0.5
                TextBox.PlaceholderColor3 = Color3.fromRGB(12, 12, 12)
                TextBox.TextSize = 13.000
            
                UICorner_2.Parent = TextBox
                UICorner_2.CornerRadius = UDim.new(0, 2)
            
                UIStroke.Parent = TextBox
                UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                UIStroke.Color = Color3.fromRGB(255, 255, 245)
                UIStroke.LineJoinMode = Enum.LineJoinMode.Round
                UIStroke.Thickness = 1
                UIStroke.Transparency = 0.5
                UIStroke.Enabled = true
                UIStroke.Archivable = true
                
                -- TextBox Script --
                function anim(property)
                    if property == "Text" then
                        TextBox:TweenSize(UDim2.new(0, 70, 0, 18), "InOut", "Linear", 0.08, true)
                        wait(0.15)
                        TextBox:TweenSize(UDim2.new(0, 80, 0, 20), "InOut", "Linear", 0.08, true)
                    end
                end
            
                TextBox.FocusLost:Connect(function()
                    if not EnterPressed then
                        callback(TextBox.Text)
                        TextBox:TweenSize(UDim2.new(0, 70, 0, 18), "InOut", "Linear", 0.08, true)
                        game.TweenService:Create(UIStroke, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Transparency = 0}):Play()
                        game.TweenService:Create(TextBox, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {TextTransparency = 0}):Play()
                        game.TweenService:Create(ImageLabel, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {ImageColor3 = _G.SectionOn}):Play()
                        game.TweenService:Create(Space, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {TextColor3 = _G.SectionOn}):Play()
                        game.TweenService:Create(Title, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {TextColor3 = _G.SectionOn}):Play()
                        wait(0.15)
                        TextBox:TweenSize(UDim2.new(0, 80, 0, 20), "InOut", "Linear", 0.08, true)
                        game.TweenService:Create(UIStroke, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Transparency = 0.5}):Play()
                        game.TweenService:Create(TextBox, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {TextTransparency = 0.5}):Play()
                        game.TweenService:Create(ImageLabel, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {ImageColor3 = _G.SectionImageColor}):Play()
                        game.TweenService:Create(Space, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {TextColor3 = _G.SectionTextColor}):Play()
                        game.TweenService:Create(Title, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {TextColor3 = _G.SectionTextColor}):Play()
                        return
                    end
                    TextBox.Text = textbox
                end)
            end
            -- End TextBox --
            
            -- KeyBind --
            function ItemHand:Bind(textbind, preset, callback)
                local Key = preset.Name
                local BindFrame = Instance.new("Frame")
                local BindFrame_2 = Instance.new("Frame")
                local UICorner = Instance.new("UICorner")
                local ImageLabel = Instance.new("ImageLabel")
                local Space = Instance.new("TextLabel")
                local Title = Instance.new("TextLabel")
                local KeyBindButton = Instance.new("TextButton")
                local UICorner_2 = Instance.new("UICorner")
                local UIStroke = Instance.new("UIStroke")
                
                -- Prop --
                BindFrame.Name = textbind or "BindFrame"
                BindFrame.Parent = sectionFrame
                BindFrame.BackgroundColor3 = _G.BackgroundItemColor
                BindFrame.BackgroundTransparency = 1.000
                BindFrame.BorderSizePixel = 0
                BindFrame.Size = UDim2.new(0, 405, 0, 40)
            
                BindFrame_2.Name = "BindFrame_2"
                BindFrame_2.Parent = BindFrame
                BindFrame_2.BackgroundColor3 = _G.BackgroundItemColor
                BindFrame_2.BorderSizePixel = 0
                BindFrame_2.Position = UDim2.new(0, 10, 0, 0)
                BindFrame_2.Size = UDim2.new(0, 385, 0, 40)
                
                UICorner.Parent = BindFrame_2
                UICorner.CornerRadius = UDim.new(0, 5)
                
                ImageLabel.Name = "ImageLabel"
                ImageLabel.Parent = BindFrame_2
                ImageLabel.BackgroundColor3 = _G.SectionColor
                ImageLabel.BackgroundTransparency = 1.000
                ImageLabel.BorderSizePixel = 0
                ImageLabel.Position = UDim2.new(0, 5, 0, 12)
                ImageLabel.Size = UDim2.new(0, 18, 0, 18)
                ImageLabel.Image = "rbxassetid://8930945601"
                ImageLabel.ImageColor3 = _G.SectionImageColor
                
                Space.Name = "Space"
                Space.Parent = BindFrame_2
                Space.BackgroundColor3 = _G.SectionColor
                Space.BackgroundTransparency = 1.000
                Space.Position = UDim2.new(0, 30, 0, 0)
                Space.Size = UDim2.new(0, 15, 0, 40)
                Space.Font = Enum.Font.GothamSemibold
                Space.Text = "|"
                Space.TextSize = 13.000
                Space.TextColor3 = _G.SectionTextColor
                Space.TextXAlignment = Enum.TextXAlignment.Center
            
                Title.Name = "Title"
                Title.Parent = BindFrame_2
                Title.BackgroundColor3 = _G.SectionColor
                Title.BackgroundTransparency = 1.000
                Title.Position = UDim2.new(0, 50, 0, 0)
                Title.Size = UDim2.new(0, 280, 0, 40)
                Title.Font = Enum.Font.GothamSemibold
                Title.Text = textbind or "bind Title"
                Title.TextColor3 = _G.SectionTextColor
                Title.TextSize = 13.000
                Title.TextXAlignment = Enum.TextXAlignment.Left
                
                KeyBindButton.Name = textbind or "KeyBindButton"
                KeyBindButton.Parent = BindFrame_2
                KeyBindButton.BackgroundColor3 = Color3.fromRGB(190, 190, 180)
                KeyBindButton.BackgroundTransparency = 0.2
                KeyBindButton.AutoButtonColor = true
                KeyBindButton.Position = UDim2.new(0, 297, 0, 10)
                KeyBindButton.Size = UDim2.new(0, 80, 0, 20)
                KeyBindButton.Font = Enum.Font.Code
                KeyBindButton.Text = preset.Name
                KeyBindButton.TextColor3 = Color3.fromRGB(12, 12, 12)
                KeyBindButton.TextSize = 13.000
                KeyBindButton.TextXAlignment = Enum.TextXAlignment.Center
                
                UICorner_2.Parent = KeyBindButton
                UICorner_2.CornerRadius = UDim.new(0, 2)
            
                UIStroke.Parent = KeyBindButton
                UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                UIStroke.Color = Color3.fromRGB(255, 255, 245)
                UIStroke.LineJoinMode = Enum.LineJoinMode.Round
                UIStroke.Thickness = 1
                UIStroke.Transparency = 0.2
                UIStroke.Enabled = true
                UIStroke.Archivable = true
                
                
                -- Keybind Script --
                KeyBindButton.MouseButton1Click:Connect(function()
					KeyBindButton.Text = ". . ."
					local inputwait = game:GetService("UserInputService").InputBegan:wait()
					if inputwait.KeyCode.Name ~= "Unknown" then
						KeyBindButton.Text = inputwait.KeyCode.Name
						Key = inputwait.KeyCode.Name
					end
				end)
				UserInputService.InputBegan:Connect(function(current, pressed)
					if not pressed then
						if current.KeyCode.Name == Key then
							pcall(callback)
						end
					end
				end)
				
				KeyBindButton.MouseEnter:Connect(function()
				    game.TweenService:Create(ImageLabel, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {ImageColor3 = _G.SectionOn}):Play()
                    game.TweenService:Create(Space, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {TextColor3 = _G.SectionOn}):Play()
                    game.TweenService:Create(Title, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {TextColor3 = _G.SectionOn}):Play()
				end)
                KeyBindButton.MouseLeave:Connect(function()
                    game.TweenService:Create(ImageLabel, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {ImageColor3 = _G.SectionImageColor}):Play()
                    game.TweenService:Create(Space, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {TextColor3 = _G.SectionTextColor}):Play()
                    game.TweenService:Create(Title, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {TextColor3 = _G.SectionTextColor}):Play()
                end)
            end
            -- End Keybind --
            
            -- Label --
            function ItemHand:Label(textlabel)
                local labelfunc = {}
                local Frame = Instance.new("Frame")
                local TextButton = Instance.new("TextButton")
                
                -- Prop --
                Frame.Name = textlabel or "Frame"
                Frame.Parent = sectionFrame
                Frame.BackgroundColor3 = _G.BackgroundItemColor
                Frame.BackgroundTransparency = 1.000
                Frame.BorderSizePixel = 0
                Frame.Size = UDim2.new(0, 405, 0, 15)
                
                TextButton.Name = "TextButton"
                TextButton.Parent = Frame
                TextButton.BackgroundColor3 = _G.SectionColor
                TextButton.BackgroundTransparency = 1.000
                TextButton.AutoButtonColor = false
                TextButton.Position = UDim2.new(0, 10, 0, 0)
                TextButton.Size = UDim2.new(0, 385, 0, 15)
                TextButton.Font = Enum.Font.GothamSemibold
                TextButton.Text = textlabel or ""
                TextButton.TextColor3 = _G.SectionTextColor
                TextButton.TextSize = 13.000
                TextButton.TextXAlignment = Enum.TextXAlignment.Left
                
                -- Label Script --
                function labelfunc:Refresh(newtext)
                    TextButton.Text = newtext
                end
                
                spawn(function()
                    while task.wait() do
                        pcall(function()
                            labelfunc:Refresh("")
                            wait(.3)
                            labelfunc:Refresh(textlabel)
                            wait(.1)
                            wait(.8)
                        end)
                    end
                end)
                return labelfunc
            end
            -- End Label --
            return ItemHand
        end
        return Section
    end
    return Tabs
end
return Blacklib
