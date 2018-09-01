
# Extende a classe `Integer` adicionando dois métodos de 
# auxilio à resolução do problema de collatz.
class Integer
    
    # Checa se o número é par.
    def is_even?
        return self % 2 == 0
    end

    # Checa se o número é ímpar.
    def is_odd?
        return self % 2 != 0
    end

end