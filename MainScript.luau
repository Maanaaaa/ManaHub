local suc, res = pcall(function()
    if shared.ManaDeveloper then
        return loadstring(readfile('ManaHub/'..game.PlaceId..'.luau'))
    else
        return loadstring(game:HttpGet('https://raw.githubusercontent.com/Maanaaaa/ManaHub/main/'..game.PlaceId..'.luau'))()
    end
end)

if not suc then
    warn('ManaHub/MainScript.luau]: game not supported or game module out dated:\n', res)
end