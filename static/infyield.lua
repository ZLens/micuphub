local Converted = {
	["_RobloxGui"] = Instance.new("ScreenGui");
	["_promptOverlay"] = Instance.new("Frame");
	["_ErrorPrompt"] = Instance.new("Frame");
	["_PromptLayout"] = Instance.new("UIListLayout");
	["_PromptScale"] = Instance.new("UIScale");
	["_TitleFrame"] = Instance.new("Frame");
	["_TitleFramePadding"] = Instance.new("UIPadding");
	["_ErrorTitle"] = Instance.new("TextLabel");
	["_SplitLine"] = Instance.new("Frame");
	["_MessageArea"] = Instance.new("Frame");
	["_MessageAreaPadding"] = Instance.new("UIPadding");
	["_ErrorFrame"] = Instance.new("Frame");
	["_ErrorFrameLayout"] = Instance.new("UIListLayout");
	["_ErrorMessage"] = Instance.new("TextLabel");
	["_ButtonArea"] = Instance.new("Frame");
	["_ButtonLayout"] = Instance.new("UIGridLayout");
	["_LeaveButton"] = Instance.new("ImageButton");
	["_ButtonText"] = Instance.new("TextLabel");
	["_ShimmerFrame"] = Instance.new("ImageLabel");
	["_Shimmer"] = Instance.new("ImageLabel");
	["_ShimmerOverlay"] = Instance.new("ImageLabel");
	["_AccurateBlur"] = Instance.new("BlurEffect");
	["_LocalScript"] = Instance.new("LocalScript");
}

-- Properties:

Converted["_RobloxGui"].DisplayOrder = 9
Converted["_RobloxGui"].AutoLocalize = false
Converted["_RobloxGui"].Name = "RobloxGui"
Converted["_RobloxGui"].Parent = game:GetService("CoreGui")

Converted["_promptOverlay"].Active = true
Converted["_promptOverlay"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_promptOverlay"].BackgroundTransparency = 1
Converted["_promptOverlay"].BorderColor3 = Color3.fromRGB(27.000002190470695, 42.000001296401024, 53.000004440546036)
Converted["_promptOverlay"].Position = UDim2.new(0, 0, 0, -36)
Converted["_promptOverlay"].Size = UDim2.new(1, 0, 1, 36)
Converted["_promptOverlay"].Name = "promptOverlay"
Converted["_promptOverlay"].Parent = Converted["_RobloxGui"]

Converted["_ErrorPrompt"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_ErrorPrompt"].BackgroundColor3 = Color3.fromRGB(57.00000040233135, 59.00000028312206, 61.00000016391277)
Converted["_ErrorPrompt"].BorderColor3 = Color3.fromRGB(27.000002190470695, 42.000001296401024, 53.000004440546036)
Converted["_ErrorPrompt"].BorderSizePixel = 0
Converted["_ErrorPrompt"].Position = UDim2.new(0.5, 0, 0.513901234, 0)
Converted["_ErrorPrompt"].Size = UDim2.new(0, 400, 0, 233)
Converted["_ErrorPrompt"].ZIndex = 8
Converted["_ErrorPrompt"].AutoLocalize = false
Converted["_ErrorPrompt"].Name = "ErrorPrompt"
Converted["_ErrorPrompt"].Parent = Converted["_promptOverlay"]

Converted["_PromptLayout"].HorizontalAlignment = Enum.HorizontalAlignment.Center
Converted["_PromptLayout"].SortOrder = Enum.SortOrder.LayoutOrder
Converted["_PromptLayout"].Name = "PromptLayout"
Converted["_PromptLayout"].Parent = Converted["_ErrorPrompt"]

Converted["_PromptScale"].Name = "PromptScale"
Converted["_PromptScale"].Parent = Converted["_ErrorPrompt"]

Converted["_TitleFrame"].BackgroundTransparency = 1
Converted["_TitleFrame"].BorderColor3 = Color3.fromRGB(27.000002190470695, 42.000001296401024, 53.000004440546036)
Converted["_TitleFrame"].BorderSizePixel = 0
Converted["_TitleFrame"].LayoutOrder = 1
Converted["_TitleFrame"].Size = UDim2.new(1, 0, 0, 50)
Converted["_TitleFrame"].ZIndex = 8
Converted["_TitleFrame"].Name = "TitleFrame"
Converted["_TitleFrame"].Parent = Converted["_ErrorPrompt"]

Converted["_TitleFramePadding"].PaddingBottom = UDim.new(0, 11)
Converted["_TitleFramePadding"].PaddingTop = UDim.new(0, 11)
Converted["_TitleFramePadding"].Name = "TitleFramePadding"
Converted["_TitleFramePadding"].Parent = Converted["_TitleFrame"]

Converted["_ErrorTitle"].Font = Enum.Font.SourceSansSemibold
Converted["_ErrorTitle"].Text = "Disconnected"
Converted["_ErrorTitle"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_ErrorTitle"].TextSize = 25
Converted["_ErrorTitle"].BackgroundTransparency = 1
Converted["_ErrorTitle"].BorderColor3 = Color3.fromRGB(27.000002190470695, 42.000001296401024, 53.000004440546036)
Converted["_ErrorTitle"].Size = UDim2.new(1, 0, 0, 28)
Converted["_ErrorTitle"].ZIndex = 8
Converted["_ErrorTitle"].Name = "ErrorTitle"
Converted["_ErrorTitle"].Parent = Converted["_TitleFrame"]

Converted["_SplitLine"].BackgroundColor3 = Color3.fromRGB(189.00000393390656, 190.0000038743019, 190.0000038743019)
Converted["_SplitLine"].BorderColor3 = Color3.fromRGB(27.000002190470695, 42.000001296401024, 53.000004440546036)
Converted["_SplitLine"].BorderSizePixel = 0
Converted["_SplitLine"].LayoutOrder = 2
Converted["_SplitLine"].Size = UDim2.new(1, -40, 0, 1)
Converted["_SplitLine"].ZIndex = 8
Converted["_SplitLine"].Name = "SplitLine"
Converted["_SplitLine"].Parent = Converted["_ErrorPrompt"]

Converted["_MessageArea"].BackgroundTransparency = 1
Converted["_MessageArea"].BorderColor3 = Color3.fromRGB(27.000002190470695, 42.000001296401024, 53.000004440546036)
Converted["_MessageArea"].BorderSizePixel = 0
Converted["_MessageArea"].LayoutOrder = 3
Converted["_MessageArea"].Size = UDim2.new(1, 0, 1, -51)
Converted["_MessageArea"].ZIndex = 8
Converted["_MessageArea"].Name = "MessageArea"
Converted["_MessageArea"].Parent = Converted["_ErrorPrompt"]

Converted["_MessageAreaPadding"].PaddingBottom = UDim.new(0, 20)
Converted["_MessageAreaPadding"].PaddingLeft = UDim.new(0, 20)
Converted["_MessageAreaPadding"].PaddingRight = UDim.new(0, 20)
Converted["_MessageAreaPadding"].PaddingTop = UDim.new(0, 20)
Converted["_MessageAreaPadding"].Name = "MessageAreaPadding"
Converted["_MessageAreaPadding"].Parent = Converted["_MessageArea"]

Converted["_ErrorFrame"].BackgroundTransparency = 1
Converted["_ErrorFrame"].BorderColor3 = Color3.fromRGB(27.000002190470695, 42.000001296401024, 53.000004440546036)
Converted["_ErrorFrame"].Size = UDim2.new(1, 0, 1, 0)
Converted["_ErrorFrame"].ZIndex = 8
Converted["_ErrorFrame"].Name = "ErrorFrame"
Converted["_ErrorFrame"].Parent = Converted["_MessageArea"]

Converted["_ErrorFrameLayout"].Padding = UDim.new(0, 20)
Converted["_ErrorFrameLayout"].HorizontalAlignment = Enum.HorizontalAlignment.Center
Converted["_ErrorFrameLayout"].SortOrder = Enum.SortOrder.LayoutOrder
Converted["_ErrorFrameLayout"].Name = "ErrorFrameLayout"
Converted["_ErrorFrameLayout"].Parent = Converted["_ErrorFrame"]

Converted["_ErrorMessage"].Font = Enum.Font.SourceSans
Converted["_ErrorMessage"].Text = "You have been kicked from this experience:

Ban Reason: Exploiting detected.
(Error Code: 267)"
Converted["_ErrorMessage"].TextColor3 = Color3.fromRGB(189.00000393390656, 190.0000038743019, 190.0000038743019)
Converted["_ErrorMessage"].TextSize = 20
Converted["_ErrorMessage"].TextWrapped = true
Converted["_ErrorMessage"].BackgroundTransparency = 1
Converted["_ErrorMessage"].BorderColor3 = Color3.fromRGB(27.000002190470695, 42.000001296401024, 53.000004440546036)
Converted["_ErrorMessage"].LayoutOrder = 1
Converted["_ErrorMessage"].Position = UDim2.new(0, 0, -2.14912518e-07, 0)
Converted["_ErrorMessage"].Size = UDim2.new(1, 0, 1.03521144, -56)
Converted["_ErrorMessage"].ZIndex = 8
Converted["_ErrorMessage"].Name = "ErrorMessage"
Converted["_ErrorMessage"].Parent = Converted["_ErrorFrame"]

Converted["_ButtonArea"].BackgroundTransparency = 1
Converted["_ButtonArea"].BorderColor3 = Color3.fromRGB(27.000002190470695, 42.000001296401024, 53.000004440546036)
Converted["_ButtonArea"].LayoutOrder = 2
Converted["_ButtonArea"].Size = UDim2.new(1, 0, 0, 36)
Converted["_ButtonArea"].ZIndex = 8
Converted["_ButtonArea"].SelectionBehaviorDown = Enum.SelectionBehavior.Stop
Converted["_ButtonArea"].SelectionBehaviorLeft = Enum.SelectionBehavior.Stop
Converted["_ButtonArea"].SelectionBehaviorRight = Enum.SelectionBehavior.Stop
Converted["_ButtonArea"].SelectionBehaviorUp = Enum.SelectionBehavior.Stop
Converted["_ButtonArea"].SelectionGroup = true
Converted["_ButtonArea"].Name = "ButtonArea"
Converted["_ButtonArea"].Parent = Converted["_ErrorFrame"]

Converted["_ButtonLayout"].CellPadding = UDim2.new(0, 10, 0, 0)
Converted["_ButtonLayout"].CellSize = UDim2.new(0, 360, 0, 36)
Converted["_ButtonLayout"].HorizontalAlignment = Enum.HorizontalAlignment.Center
Converted["_ButtonLayout"].SortOrder = Enum.SortOrder.LayoutOrder
Converted["_ButtonLayout"].VerticalAlignment = Enum.VerticalAlignment.Center
Converted["_ButtonLayout"].Name = "ButtonLayout"
Converted["_ButtonLayout"].Parent = Converted["_ButtonArea"]

Converted["_LeaveButton"].Image = "rbxasset://textures/ui/ErrorPrompt/PrimaryButton.png"
Converted["_LeaveButton"].ImageContent = Content
Converted["_LeaveButton"].ScaleType = Enum.ScaleType.Slice
Converted["_LeaveButton"].SliceCenter = Rect.new(8, 8, 9, 9)
Converted["_LeaveButton"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_LeaveButton"].BackgroundTransparency = 1
Converted["_LeaveButton"].BorderColor3 = Color3.fromRGB(27.000002190470695, 42.000001296401024, 53.000004440546036)
Converted["_LeaveButton"].LayoutOrder = 1
Converted["_LeaveButton"].Size = UDim2.new(1, 0, 1, 0)
Converted["_LeaveButton"].ZIndex = 8
Converted["_LeaveButton"].Name = "LeaveButton"
Converted["_LeaveButton"].Parent = Converted["_ButtonArea"]

Converted["_ButtonText"].Font = Enum.Font.SourceSans
Converted["_ButtonText"].Text = "Leave"
Converted["_ButtonText"].TextColor3 = Color3.fromRGB(35.00000171363354, 37.00000159442425, 39.00000147521496)
Converted["_ButtonText"].TextSize = 20
Converted["_ButtonText"].BackgroundTransparency = 1
Converted["_ButtonText"].BorderColor3 = Color3.fromRGB(27.000002190470695, 42.000001296401024, 53.000004440546036)
Converted["_ButtonText"].Size = UDim2.new(1, 0, 1, 0)
Converted["_ButtonText"].ZIndex = 8
Converted["_ButtonText"].Name = "ButtonText"
Converted["_ButtonText"].Parent = Converted["_LeaveButton"]

Converted["_ShimmerFrame"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_ShimmerFrame"].BackgroundTransparency = 0.699999988079071
Converted["_ShimmerFrame"].BorderColor3 = Color3.fromRGB(27.000002190470695, 42.000001296401024, 53.000004440546036)
Converted["_ShimmerFrame"].BorderSizePixel = 0
Converted["_ShimmerFrame"].ClipsDescendants = true
Converted["_ShimmerFrame"].Size = UDim2.new(1, 0, 1, 0)
Converted["_ShimmerFrame"].Visible = false
Converted["_ShimmerFrame"].ZIndex = 8
Converted["_ShimmerFrame"].Name = "ShimmerFrame"
Converted["_ShimmerFrame"].Parent = Converted["_LeaveButton"]

Converted["_Shimmer"].Image = "rbxasset://textures/ui/LuaApp/graphic/shimmer_darkTheme.png"
Converted["_Shimmer"].ImageContent = Content
Converted["_Shimmer"].BackgroundTransparency = 1
Converted["_Shimmer"].BorderColor3 = Color3.fromRGB(27.000002190470695, 42.000001296401024, 53.000004440546036)
Converted["_Shimmer"].BorderSizePixel = 0
Converted["_Shimmer"].Position = UDim2.new(-1, 0, 0, 0)
Converted["_Shimmer"].Size = UDim2.new(1, 0, 2, 0)
Converted["_Shimmer"].ZIndex = 8
Converted["_Shimmer"].Name = "Shimmer"
Converted["_Shimmer"].Parent = Converted["_ShimmerFrame"]

Converted["_ShimmerOverlay"].Image = "rbxasset://textures/ui/ErrorPrompt/ShimmerOverlay.png"
Converted["_ShimmerOverlay"].ImageColor3 = Color3.fromRGB(57.00000040233135, 59.00000028312206, 61.00000016391277)
Converted["_ShimmerOverlay"].ImageContent = Content
Converted["_ShimmerOverlay"].ScaleType = Enum.ScaleType.Slice
Converted["_ShimmerOverlay"].SliceCenter = Rect.new(8, 8, 9, 9)
Converted["_ShimmerOverlay"].BackgroundTransparency = 1
Converted["_ShimmerOverlay"].BorderColor3 = Color3.fromRGB(27.000002190470695, 42.000001296401024, 53.000004440546036)
Converted["_ShimmerOverlay"].BorderSizePixel = 0
Converted["_ShimmerOverlay"].Size = UDim2.new(1, 0, 1, 0)
Converted["_ShimmerOverlay"].ZIndex = 9
Converted["_ShimmerOverlay"].Name = "ShimmerOverlay"
Converted["_ShimmerOverlay"].Parent = Converted["_ShimmerFrame"]

Converted["_AccurateBlur"].Size = 30
Converted["_AccurateBlur"].Name = "AccurateBlur"
Converted["_AccurateBlur"].Parent = Converted["_RobloxGui"]

-- Fake Module Scripts:

local fake_module_scripts = {}


-- Fake Local Scripts:

local function GIQOO_fake_script() -- Fake Script: StarterGui.RobloxGui.LocalScript
    local script = Instance.new("LocalScript")
    script.Name = "LocalScript"
    script.Parent = Converted["_RobloxGui"]
    local req = require
    local require = function(obj)
        local fake = fake_module_scripts[obj]
        if fake then
            return fake()
        end
        return req(obj)
    end

	script.Parent.AccurateBlur.Parent = game.Lighting
	
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 0
	
	task.wait(10)
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 17
	game.Lighting.AccurateBlur:Destroy()
	script.Parent:Destroy()
end

coroutine.wrap(GIQOO_fake_script)()
