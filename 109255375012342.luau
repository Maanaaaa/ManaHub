local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()
local window = library:CreateWindow('ManaHub')
local gameSection = window:CreateFolder('Game features')
local playerSection = window:CreateFolder('Player features')
local miscSection = window:CreateFolder('Misc')

local plrs = game:GetService('Players')
local lplr = plrs.LocalPlayer
local stage = lplr.leaderstats.Stage

local function getCharacter()
    return lplr.Character
end

local function getRootPart()
    return getCharacter().HumanoidRootPart
end

local function getHumanoid()
    return getCharacter().Humanoid
end

-- // gameSection
gameSection:Button('Auto stage', function()
    for i = 1, 67 do
        if workspace.Spawns[i] then
            getRootPart().CFrame = workspace.Spawns[i].CFrame
            task.wait(0.1)
        end
    end
end)

gameSection:Button('Next stage', function()
    getRootPart().CFrame = workspace.Spawns:FindFirstChild(stage.Value + 1).CFrame
end)

-- // playerSection
playerSection:Slider("Speed", {
    min = 1,
    max = 100,
    precise = false
},
function(v)
    getHumanoid().WalkSpeed = v
end)

playerSection:Slider("Jump power", {
    min = 1,
    max = 200,
    precise = false
},
function(v)
    getHumanoid().JumpPower = v
end)

playerSection:Button('Reset character', function()
    getHumanoid().Health = 0
end)

-- // miscSection
miscSection:Button('Copy discord', function()
    toclipboard('https://discord.gg/CEMMRSvXek')
end)

miscSection:DestroyGui()

miscSection:Label("made with <3\nby Maanaaaa",{
    TextSize = 15,
    TextColor = Color3.fromRGB(255, 255, 255),
    BgColor = Color3.fromRGB(67, 67, 67)
})