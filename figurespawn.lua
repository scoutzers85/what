local figure = {}

function figure.doanimation(anim, figure)
	local animation = Instance.new("Animation")
	animation.AnimationId = anim
	local animationl = figure:WaitForChild("Humanoid"):LoadAnimation(animation)
	animationl:Play()
end

function figure.spawn()
	Functions = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Functions.lua"))()
	local model = LoadCustomInstance("https://github.com/scoutzers85/what/blob/main/figure.rbxm?raw=true")
	model.Parent = workspace
	model:PivotTo(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	figure.doanimation("rbxassetid://8369184411", model)
	model:Destroy()
end


return figure
