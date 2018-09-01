require './src/extensions'

# Conjectura de Collatz: classe para encapsulamento do método de resolução do problema.
class CollatzConjecture

    # Executa as operações para solucionar o problema. Recebe como parâmetro `n`
    # que deve ser um número inteiro natural. Caso nenhum parâmetro seja passado,
    # 1 milhão é utilizado como valor padrão.
    def self.resolve(n = 1_000_000)
        if n.is_a? Integer and n > 0
            return true
        else
            # puts "#{n} não é número válido para a resolução do problema (deve ser um número natural positivo)."
            return false
        end
    end

end