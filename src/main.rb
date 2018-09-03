# Interação via linha comando

require_relative './collatz_conjecture'
require_relative './strings'

puts "Escolha um desafio"

loop do
    print "1 - Conjectura de Collatz ou 2 - Sequência de Caracteres ou 0 - Sair : "
    opt = gets.chomp
    case opt
    when '1'
        CollatzConjecture.resolve()
    when '2'
        print "Digite uma palavra: "
        puts Strings.resolve(gets.chomp).inspect
    when '0'
        exit!
    end
end