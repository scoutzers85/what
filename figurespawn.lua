local figure = {}

function figure.spawn()
	Functions = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Functions.lua"))()
	local model = LoadCustomInstance("https://github.com/scoutzers85/what/blob/main/figure.rbxm?raw=true")
	model.Parent = workspace
	model:PivotTo(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	local animation = Instance.new("Animation")
	animation.AnimationId = "rbxassetid://8369184411"
	local testanim = model.Humanoid:LoadAnimation(animation)
	testanim:Play()
	wait(3)
	model:Destroy()
end

return figure
