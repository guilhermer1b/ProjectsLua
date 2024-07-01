local calculadora = {}

function somar(x, y)
    print("Digite os numeros que quer somar! ")
    x = io.read()
    y = io.read()
    return x + y
end

function multiplicacao(x, y)
    print("Digite os numeros que quer multiplicar! ")
    x = io.read()
    y = io.read()
    return x * y
end

return calculadora