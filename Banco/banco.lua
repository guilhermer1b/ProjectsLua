local conta = require("Banco/conta")

local banco_brasil = conta.novo(500)
assert(banco_brasil.saldo == 500)

banco_brasil:depositar(500)
assert(banco_brasil.saldo == 1000)

banco_brasil:depositar(1000)
assert(banco_brasil.saldo == 2000)
print(banco_brasil.saldo)
