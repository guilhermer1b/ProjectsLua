local player = {}

function player.novo(nome)
    return {
        vida = 200, 
        pocoes = {},
        nome = nome
    }
end

function player.obter_pocao(instancia, pocao)
    table.insert(instancia.pocoes, pocao)
end

function player.atacado(instancia, forca)
    if player.vivo(instancia) then
        instancia.vida = instancia.vida - forca

        if not player.vivo(instancia) then
            print("Apos o ataque, " .. instancia.nome .. " morreu!")
        else
            print("Apos o ataque, " .. instancia.nome .. " agora tem " .. instancia.vida .. " de vida!")
        end
    else
        print(instancia.nome .. " " .. "ja esta morto!")
    end
end

function player.matar(instancia)
    if player.vivo(instancia) then
        instancia.vida = 0
        print(instancia.nome .. " morreu!")
    else
        print(instancia.nome .. " " .. "ja esta morto!")
    end
end

function player.vivo(instancia)
    return instancia.vida > 0
end

function player.usar_pocao(instancia)
    if #instancia.pocoes > 0 then 
        instancia.vida = instancia.vida + instancia.pocoes[1].vida
        table.remove(instancia.pocoes, 1)
        print(instancia.nome .. " usou uma pocao e agora tem " .. instancia.vida .. " de vida!")
    else
        print(instancia.nome .. " nao tem pocoes!")
end
end 

return player