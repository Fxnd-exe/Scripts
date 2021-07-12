local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()
local w = library:CreateWindow("Dragonball Revenge") 
local b = w:CreateFolder("Autofarm's & More")
local e = w:CreateFolder("Credits")

--Button
b:Button("Free Best Tool",function()
    local args = {
    [1] = {
        [1] = {
            [1] = "Galactic Destroyer",
            [2] = 0,
            [3] = 0,
            [4] = 0,
            [5] = 0
        },
        [2] = "Energy"
    }
}

game:GetService("ReplicatedStorage").Remotes.RequestSkill:InvokeServer(unpack(args))
end)

--Toggle
b:Toggle("Auto Agility",function(bool)
    shared.toggle = bool
    AutoAgility = bool
end)

b:Toggle("Auto Save",function(bool)
    shared.toggle = bool
    AutoSave = bool
end)

b:Toggle("Auto Combat",function(bool)
    shared.toggle = bool
    AutoCombat = bool
end)

b:Toggle("Auto Blast",function(bool)
    shared.toggle = bool
    AutoBlast = bool
end)

b:Toggle("Auto Defense",function(bool)
    shared.toggle = bool
    AutoDefense = bool
end)

b:Toggle("Auto Charge",function(bool)
    shared.toggle = bool
    AutoCharge = bool
end)

--Dropdown
--b:Dropdown("Dropdown",{"A","B","C"},true,function(mob) --true/false, replaces the current title "Dropdown" with the option that t
  --  print(mob)
--end)

--Box
--b:Box("Box","number",function(value) -- "number" or "string"
 --   print(value)
--end)

while wait() do
    if AutoDefense == true then
        local args = {
    [1] = game:GetService("Players").LocalPlayer.Stats,
    [2] = game:GetService("Players").LocalPlayer.Status,
    [3] = game:GetService("Players").LocalPlayer.Character.Humanoid,
    [4] = game:GetService("Players").LocalPlayer.Character.RightHand
}

game:GetService("ReplicatedStorage").Remotes.Training.Defense:InvokeServer(unpack(args))

    end
    
    if AutoCombat == true then
        local args = {
    [1] = game:GetService("Players").LocalPlayer.Stats,
    [2] = {
        ["LeftLowerArm"] = game:GetService("Players").LocalPlayer.Character.LeftLowerArm,
        ["RightUpperArm"] = game:GetService("Players").LocalPlayer.Character.RightUpperArm,
        ["LeftFoot"] = game:GetService("Players").LocalPlayer.Character.LeftFoot,
        ["RightHand"] = game:GetService("Players").LocalPlayer.Character.RightHand,
        ["RightLowerArm"] = game:GetService("Players").LocalPlayer.Character.RightLowerArm,
        ["LeftUpperLeg"] = game:GetService("Players").LocalPlayer.Character.LeftUpperLeg,
        ["LeftUpperArm"] = game:GetService("Players").LocalPlayer.Character.LeftUpperArm,
        ["Character"] = game:GetService("Players").LocalPlayer.Character,
        ["LeftHand"] = game:GetService("Players").LocalPlayer.Character.LeftHand,
        ["RightFoot"] = game:GetService("Players").LocalPlayer.Character.RightFoot,
        ["Humanoid"] = game:GetService("Players").LocalPlayer.Character.Humanoid,
        ["RightLowerLeg"] = game:GetService("Players").LocalPlayer.Character.RightLowerLeg,
        ["RightUpperLeg"] = game:GetService("Players").LocalPlayer.Character.RightUpperLeg,
        ["LeftLowerLeg"] = game:GetService("Players").LocalPlayer.Character.LeftLowerLeg
    }
}

game:GetService("ReplicatedStorage").Remotes.Training.Combat:InvokeServer(unpack(args))
end

if AutoAgility == true then
    local args = {
    [1] = game:GetService("Players").LocalPlayer.Stats
}

game:GetService("ReplicatedStorage").Remotes.Training.Agility:FireServer(unpack(args))
end

if AutoCharge == true then
    local args = {
    [1] = game:GetService("Players").LocalPlayer.Status,
    [2] = game:GetService("Players").LocalPlayer.Character.UpperTorso,
    [3] = game:GetService("Players").LocalPlayer.Character.Humanoid
}

game:GetService("ReplicatedStorage").Remotes.Training.Charge:InvokeServer(unpack(args))
game:GetService("ReplicatedStorage").Remotes.Training.ChargeFinish:FireServer()
end

if AutoSave == true then
    game:GetService("ReplicatedStorage").Remotes.Save:InvokeServer()
end

if AutoBlast == true then
    local args = {
    [1] = game:GetService("Players").LocalPlayer.Status,
    [2] = game:GetService("Players").LocalPlayer.Stats,
    [3] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,
    [4] = game:GetService("Players").LocalPlayer.Character.RightHand,
    [5] = game:GetService("Players").LocalPlayer.Character
}

game:GetService("ReplicatedStorage").Remotes.Training.Blast:InvokeServer(unpack(args))
    end
    end
