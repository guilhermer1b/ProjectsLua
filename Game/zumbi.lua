local inimigo = require("Game/inimigo")
local player = require("Game/player")
local zumbi = {}

function zumbi.novo()
    local zumbi = inimigo.novo(50, "zumbis")
    zumbi.come_cerebros = true
    zumbi.explode = false
    return zumbi
end

function zumbi.novo_bomber()
    local zumbi = zumbi.novo()
    zumbi.come_cerebros = false
    zumbi.explode = true
    return zumbi
end

function zumbi.atacar(instancia, player_instancia)
    if instancia == nil then
    print("Esse zumbi ja esta morto!")
    elseif instancia.explode then
        print("Zumbi explodiu!")
        player.matar(player_instancia)
        
        return nil
    else
        print("Zumbi atacou " .. player_instancia.nome .. "!")
        player.atacado(player_instancia, instancia.forca)
        return instancia
    end

    

end

return zumbi 