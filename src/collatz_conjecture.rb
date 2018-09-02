require './src/extensions'
require 'benchmark'

# Conjectura de Collatz: classe para encapsulamento do método de resolução do problema.
class CollatzConjecture
    # Maior número que gera a maior sequência de números convergindo para 1.
    @@greater_amount = 0
    # Quantidade de números da sequência convergente a 1.
    @@greater_number = 0

    # Executa as operações para solucionar o problema. Recebe como parâmetro `max`
    # que deve ser um número inteiro natural. Caso nenhum parâmetro seja passado,
    # 1 milhão é utilizado como valor padrão. Retorna um `Array` com um número
    # natural positivo que desencadeia a maior quantidade de elementos até `1`
    # e a quantidade de elementos da sequência, nesta ordem.
    def self.resolve(max = 1_000_000)
        # Relaciona o índice a quantidade de elementos de sua sequência.
        amount = [0,0]
        if max.is_a? Integer and max > 0
            time = Benchmark.realtime do
                max.times do |n|
                    number = n
                    length = 0
                    while number > 1 and number >= n
                        number = number.is_even? ? (number / 2) : (3 * number + 1)
                        length += 1
                    end
                    # Como `number` é um índice inferior a `n`, a quantidade de items para `number`
                    # já foi calculada, portanto basta acessá-la em `amount` para sua respectiva posição
                    # e somar com a quantidade de elementos a sua frente `length`.
                    amount[n] = length + amount[number]
                    if amount[n] > @@greater_amount
                        @@greater_amount = amount[n]
                        @@greater_number = n
                    end
                end
            end
            puts "Encontrado número #{@@greater_number} com #{@@greater_amount} elementos em #{time} segundos"
            return [@@greater_number, @@greater_amount]
        end
        puts "#{max} não é número válido para a resolução do problema (deve ser um número natural positivo)."
    end
end