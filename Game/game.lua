local player = require("Game/player")
local pocao = require("Game/pocao")
local zumbi = require("Game/zumbi")

local player1 = player.novo("Orientadao")
local player2 = player.novo("Objentacio")

local zumbi1 = zumbi.novo()
local zumbi2 = zumbi.novo()
local zumbi3 = zumbi.novo_bomber()

player.obter_pocao(player1, pocao.novo())
player.obter_pocao(player2, pocao.novo())
assert(#player1.pocoes == 1)
assert(#player2.pocoes == 1)

zumbi.atacar(zumbi1, player1)
zumbi.atacar(zumbi1, player1)
player.usar_pocao(player1)
zumbi.atacar(zumbi1, player1)
zumbi.atacar(zumbi1, player1)
player.usar_pocao(player1)
zumbi.atacar(zumbi1, player1)

zumbi3 = zumbi.atacar(zumbi3, player2)
zumbi3 = zumbi.atacar(zumbi3, player2)