local conta = {}

function conta.novo(deposito_inicial)
    local instancia = {
        saldo = deposito_inicial
    }

    -- Esses dois pontos tem valor de "self" que signfica -> si mesmo
    function instancia:depositar(valor)
        self.saldo = self.saldo + valor
    end

    return instancia
end

return conta