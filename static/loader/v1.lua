-- Generated using RoadToGlory's Converter v1.1 (RoadToGlory#9879)

-- Instances:

local Converted = {
	["_ScreenGui"] = Instance.new("ScreenGui");
	["_Frame"] = Instance.new("Frame");
	["_TextLabel"] = Instance.new("TextLabel");
	["_UIGradient"] = Instance.new("UIGradient");
	["_TextLabel1"] = Instance.new("TextLabel");
	["_TextBox"] = Instance.new("TextBox");
	["_UIStroke"] = Instance.new("UIStroke");
	["_UICorner"] = Instance.new("UICorner");
	["_UIListLayout"] = Instance.new("UIListLayout");
	["_TextBox1"] = Instance.new("TextButton");
	["_UIStroke1"] = Instance.new("UIStroke");
	["_UICorner1"] = Instance.new("UICorner");
	["_UIGradient1"] = Instance.new("UIGradient");
	["_LocalScript"] = Instance.new("LocalScript");
	["_UIScale"] = Instance.new("UIScale");
}

-- Properties:

Converted["_ScreenGui"].ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Converted["_ScreenGui"].Parent = game:GetService("CoreGui")

Converted["_Frame"].BackgroundColor3 = Color3.fromRGB(17.00000088661909, 17.00000088661909, 17.00000088661909)
Converted["_Frame"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Frame"].BorderSizePixel = 0
Converted["_Frame"].Size = UDim2.new(1, 0, 1, 0)
Converted["_Frame"].Parent = Converted["_ScreenGui"]

Converted["_TextLabel"].Font = Enum.Font.GothamBold
Converted["_TextLabel"].Text = "We're Sorry,"
Converted["_TextLabel"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextLabel"].TextSize = 80
Converted["_TextLabel"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextLabel"].BackgroundTransparency = 1
Converted["_TextLabel"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_TextLabel"].BorderSizePixel = 0
Converted["_TextLabel"].LayoutOrder = 1
Converted["_TextLabel"].Position = UDim2.new(0.000231925093, 0, 0.295528263, 0)
Converted["_TextLabel"].Size = UDim2.new(0, 1724, 0, 81)
Converted["_TextLabel"].Parent = Converted["_Frame"]

Converted["_UIGradient"].Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(57.00000040233135, 57.00000040233135, 57.00000040233135))
}
Converted["_UIGradient"].Rotation = 90
Converted["_UIGradient"].Parent = Converted["_TextLabel"]

Converted["_TextLabel1"].Font = Enum.Font.GothamBold
Converted["_TextLabel1"].Text = "We are currently moving loadstrings, here's the new loadstring!"
Converted["_TextLabel1"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextLabel1"].TextSize = 20
Converted["_TextLabel1"].TextTransparency = 0.5
Converted["_TextLabel1"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextLabel1"].BackgroundTransparency = 1
Converted["_TextLabel1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_TextLabel1"].BorderSizePixel = 0
Converted["_TextLabel1"].LayoutOrder = 2
Converted["_TextLabel1"].Position = UDim2.new(0.000231925093, 0, 0.450764596, 0)
Converted["_TextLabel1"].Size = UDim2.new(0, 1724, 0, -22)
Converted["_TextLabel1"].Parent = Converted["_Frame"]

Converted["_TextBox"].ClearTextOnFocus = false
Converted["_TextBox"].Font = Enum.Font.Gotham
Converted["_TextBox"].SelectionStart = 1
Converted["_TextBox"].Text = [[loadstring(game:HttpGet('https://raw.githubusercontent.com/ZLens/TheRobloxExperience/refs/heads/main/games/mic%20up/main.lua'))()]]
Converted["_TextBox"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextBox"].TextEditable = false
Converted["_TextBox"].TextSize = 18
Converted["_TextBox"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextBox"].BackgroundTransparency = 0.8999999761581421
Converted["_TextBox"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_TextBox"].BorderSizePixel = 0
Converted["_TextBox"].LayoutOrder = 3
Converted["_TextBox"].Position = UDim2.new(0.299397051, 0, 0.563716412, 0)
Converted["_TextBox"].Size = UDim2.new(0, 901, 0, 50)
Converted["_TextBox"].Parent = Converted["_Frame"]

Converted["_UIStroke"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke"].Thickness = 2
Converted["_UIStroke"].Parent = Converted["_TextBox"]

Converted["_UICorner"].CornerRadius = UDim.new(0, 10)
Converted["_UICorner"].Parent = Converted["_TextBox"]

Converted["_UIListLayout"].Padding = UDim.new(0, 50)
Converted["_UIListLayout"].HorizontalAlignment = Enum.HorizontalAlignment.Center
Converted["_UIListLayout"].SortOrder = Enum.SortOrder.LayoutOrder
Converted["_UIListLayout"].VerticalAlignment = Enum.VerticalAlignment.Center
Converted["_UIListLayout"].Parent = Converted["_Frame"]

Converted["_TextBox1"].Font = Enum.Font.Gotham
Converted["_TextBox1"].Text = "Dismiss"
Converted["_TextBox1"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextBox1"].TextSize = 18
Converted["_TextBox1"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextBox1"].BackgroundTransparency = 0.8999999761581421
Converted["_TextBox1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_TextBox1"].BorderSizePixel = 0
Converted["_TextBox1"].LayoutOrder = 3
Converted["_TextBox1"].Position = UDim2.new(0.238810301, 0, 0.598470747, 0)
Converted["_TextBox1"].Size = UDim2.new(0, 209, 0, 50)
Converted["_TextBox1"].Name = "TextBox"
Converted["_TextBox1"].Parent = Converted["_Frame"]

Converted["_UIStroke1"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke1"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke1"].Thickness = 2
Converted["_UIStroke1"].Parent = Converted["_TextBox1"]

Converted["_UICorner1"].CornerRadius = UDim.new(0, 10)
Converted["_UICorner1"].Parent = Converted["_TextBox1"]

Converted["_UIGradient1"].Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(57.00000040233135, 57.00000040233135, 57.00000040233135))
}
Converted["_UIGradient1"].Rotation = 90
Converted["_UIGradient1"].Parent = Converted["_TextBox1"]

Converted["_UIScale"].Scale = 0.699999988079071
Converted["_UIScale"].Parent = Converted["_ScreenGui"]

-- Fake Module Scripts:

local fake_module_scripts = {}


-- Fake Local Scripts:

local function UCETY_fake_script() -- Fake Script: StarterGui.ScreenGui.Frame.TextBox.LocalScript
    local script = Instance.new("LocalScript")
    script.Name = "LocalScript"
    script.Parent = Converted["_TextBox1"]
    local req = require
    local require = function(obj)
        local fake = fake_module_scripts[obj]
        if fake then
            return fake()
        end
        return req(obj)
    end

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Parent:Destroy()
	end)
end

coroutine.wrap(UCETY_fake_script)()
