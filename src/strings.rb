class Strings
    # Recebe uma `string` e retorna a(s) sequência(s) de caracteres 
    # que mais se repete(m).
    def self.resolve(word)
        word.downcase!
        # Guarda os caracteres e suas repetições
        dict = {}
        index = 0

        while char = word[index]
            initial_index = index
            index += 1 while word[index] == char

            # Quantidade de caracteres sequenciados
            interval = index - initial_index
            
            # Caso não haja sequencia para char
            if dict[char].nil? 
                dict[char] = char * interval
            # Caso já haja uma sequência anterior de char
            elsif dict[char].length < interval 
                dict[char] = char * interval
            end
        end

        # Retorna somente as sequências maiores que 1
        return dict.select{|k,v| v.length > 1}.values
    end
end

=begin
File.readlines('./words.txt').each do |word|
    puts Strings.resolve(word).inspect 
end
=end